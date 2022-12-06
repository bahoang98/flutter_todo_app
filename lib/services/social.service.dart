import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json;

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'openid',
    'https://www.googleapis.com/auth/userinfo.email',
    'https://www.googleapis.com/auth/userinfo.profile',
  ],
);

class GoogleService {
  void initListen(void Function(GoogleSignInAccount?)? onData) {
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      if (onData != null) {
        onData(account);
      }
    });
    _googleSignIn.signInSilently();
  }

  Future<bool> handleGetContact(GoogleSignInAccount user) async {
    String _contactText = '';
    final http.Response response = await http.get(
      Uri.parse('https://people.googleapis.com/v1/people/me/connections'
          '?requestMask.includeField=person.names'),
      headers: await user.authHeaders,
    );
    if (response.statusCode != 200) {
      print('People API ${response.statusCode} response: ${response.body}');
      return false;
    }

    print(json.decode(response.body));
    final Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;
    final String? namedContact = _pickFirstNamedContact(data);

    if (namedContact != null) {
      _contactText = 'I see you know $namedContact!';
    } else {
      _contactText = 'No contacts to display.';
    }

    return true;
  }

  String? _pickFirstNamedContact(Map<String, dynamic> data) {
    final List<dynamic>? connections = data['connections'] as List<dynamic>?;
    final Map<String, dynamic>? contact = connections?.firstWhere(
      (dynamic contact) => contact['names'] != null,
      orElse: () => null,
    ) as Map<String, dynamic>?;
    if (contact != null) {
      final Map<String, dynamic>? name = contact['names'].firstWhere(
        (dynamic name) => name['displayName'] != null,
        orElse: () => null,
      ) as Map<String, dynamic>?;
      if (name != null) {
        return name['displayName'] as String?;
      }
    }
    return null;
  }

  Future<void> handleSignIn(
      void Function(GoogleSignInAccount?)? callback) async {
    try {
      GoogleSignInAccount? response = await _googleSignIn.signIn();
      if (callback != null) {
        callback(response);
      }
      print(response);
    } catch (error) {
      print(error);
    }
  }

  Future<void> handleSignOut() => _googleSignIn.disconnect();
}
