import 'package:flutter/material.dart';
import 'package:flutter_base_sample/screens/home_work_3/__mock__/update_info.dart';

class UpdateInfo extends StatefulWidget {
  const UpdateInfo({Key? key}) : super(key: key);

  @override
  _UpdateInfoState createState() => _UpdateInfoState();
}

class _UpdateInfoState extends State<UpdateInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_backspace_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 118,
                  width: 118,
                  child: CircleAvatar(
                    // radius: 40,
                    backgroundColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/originals/d9/b8/3a/d9b83aa1a08be3e46ebb47254db8cf75.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 14,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(50.0)), //<-- SEE HERE
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100.0),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.file_upload_outlined,
                            size: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: inputConfig.map((e) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 27,
                            width: double.infinity,
                            child: Text(
                              e.label,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 36,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: e.hintText ?? '',
                                border: const OutlineInputBorder(),
                                contentPadding: const EdgeInsets.all(8),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 40, right: 28),
                  child: Row(
                    children: [
                      const Expanded(
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(
                        width: 129,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Update'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
