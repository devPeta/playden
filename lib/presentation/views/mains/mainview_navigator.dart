import 'package:flutter/material.dart';
import 'package:playden/presentation/views/mains/favourites/favouritescreen.dart';
import 'package:playden/presentation/views/mains/homepage_screen/homepage.dart';
import 'package:playden/presentation/views/mains/search/searchscreen.dart';
import 'package:playden/presentation/views/others/connect/connectPage.dart';
import 'package:playden/presentation/views/others/profile/profile.dart';
class mainViewNavigator extends StatefulWidget {
  const mainViewNavigator({Key? key}) : super(key: key);

  @override
  State<mainViewNavigator> createState() => _mainViewNavigatorState();
}

class _mainViewNavigatorState extends State<mainViewNavigator> {
  int _selectedIndex = 0;

  final screens = [
    const homepage(),
    const SearchScreen(),
    const FavouriteScreen(),
    const connectPage(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[
      _selectedIndex
      ],
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        elevation: 3.0,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          child: Stack(
            children: [
              BottomNavigationBar(
              backgroundColor: const Color(0xFFffffff),
              iconSize: 24,
              selectedItemColor: const Color(0xFF41244B),
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              onTap: (i) {
                setState(() {
                  _selectedIndex = i;
                });
              },
              currentIndex: _selectedIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items:   [
                BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/navigationIcon/home-03.png'),
                  label:'',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/navigationIcon/Icon Frame.png'),
                  label:'',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/navigationIcon/favourite.png'),
                  label:'',
                ),
                BottomNavigationBarItem(
                  icon : Image.asset('assets/icons/navigationIcon/user-group.png'),
                  label:'',
                ),
                BottomNavigationBarItem(
                  icon : Image.asset('assets/icons/navigationIcon/Home 7.png'),
                  label:'',
                ),
              ],
            ),
              Positioned(
                bottom: 0,
                left: MediaQuery.of(context).size.width/5 * _selectedIndex,
                child: Container(
                  width: 64,
                  height: 4,
                  color: const Color(0xFF41244B),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}


