import 'package:flutter/material.dart';
import 'package:flutter_base_sample/screens/home_work_3/__mock__/dashboard.dart';
import 'package:flutter_base_sample/screens/home_work_3/update_info.dart';
import 'package:flutter_base_sample/widgets/item_info.widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 20, left: 30),
            height: 165,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(0.5),
                        child: ClipOval(
                          child: Image.network(
                            'https://i.pinimg.com/originals/d9/b8/3a/d9b83aa1a08be3e46ebb47254db8cf75.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            SizedBox(
                              width: double.infinity,
                              child: Text('Mary Jane'),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Text('jane@example.com'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: info
                    .map(
                      (e) => ItemInfoWidget(
                        title: e.title,
                        value: e.value,
                        icon: Icon(e.icon),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 10)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return UpdateInfo();
                    }),
                  );
                },
                child: const Text('Change information'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
