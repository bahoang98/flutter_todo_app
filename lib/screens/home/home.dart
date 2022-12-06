import 'package:flutter/material.dart';
import 'package:flutter_base_sample/constants/assets.dart';
import 'package:flutter_base_sample/screens/home/calendar_screen.dart';
import 'package:flutter_base_sample/screens/home/focuses_screen.dart';
import 'package:flutter_base_sample/screens/home/profile_screen.dart';
import 'package:flutter_base_sample/screens/home/task_screen.dart';
import 'package:flutter_base_sample/themes/colors.dart';
import 'package:flutter_base_sample/utils/device/device.utils.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _idxSelected = 0;

  Map<String, Widget> screens = {
    "0": const TaskScreen(),
    "1": const CalendarScreen(),
    "3": const FocusesScreen(),
    "4": const ProfileScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorDefine.primary,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          canvasColor: ColorDefine.jet,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorDefine.white,
          unselectedItemColor: ColorDefine.white50,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsIcon.homeIcon,
                color:
                    _idxSelected == 0 ? ColorDefine.white : ColorDefine.white50,
              ),
              label: 'Index',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsIcon.calenderIcon,
                color:
                    _idxSelected == 1 ? ColorDefine.white : ColorDefine.white50,
              ),
              label: 'Calender',
            ),
            const BottomNavigationBarItem(
              icon: SizedBox(
                width: 100,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsIcon.clockIcon,
                color:
                    _idxSelected == 3 ? ColorDefine.white : ColorDefine.white50,
              ),
              label: 'Focuses',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsIcon.profileIcon,
                color:
                    _idxSelected == 4 ? ColorDefine.white : ColorDefine.white50,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _idxSelected,
          onTap: (int index) {
            if (index != 2) {
              setState(() {
                _idxSelected = index;
              });
            }
          },
          selectedFontSize: 12,
        ),
      ),
      body: screens["$_idxSelected"],
    );
  }
}
