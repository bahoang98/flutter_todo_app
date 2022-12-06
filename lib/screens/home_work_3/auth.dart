import 'package:flutter/material.dart';
import 'package:flutter_base_sample/screens/home_work_3/dashboard.dart';
import 'package:flutter_base_sample/utils/helper/validate.helper.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  String _account = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 84, bottom: 32),
              width: double.infinity,
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 36, letterSpacing: 1.2),
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'jane@example.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                contentPadding: EdgeInsets.all(17),
              ),
              onChanged: (value) {
                setState(() {
                  _account = value;
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                contentPadding: EdgeInsets.all(17),
              ),
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 17)),
                onPressed:
                    !validateLogin(account: _account, password: _password)
                        ? null
                        : () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const Dashboard();
                                },
                              ),
                            );
                          },
                child: const Text('LOG IN'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
