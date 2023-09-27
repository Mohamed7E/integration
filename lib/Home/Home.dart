import 'package:flutter/material.dart';

import '../Share/appbar_actions.dart';
import '../Welcome/login/login.dart';
import 'Home_page.dart';
import 'Menu.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 1;
  List<Widget> screens = [
    My_account(),
    Home_page(),
  ];
  List<String> titles = [
    'My Account',
    'Home',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(103, 74, 145, 58),
        appBar: AppBar(
          actions: const [
            Productandprice()
          ],
          backgroundColor: Color.fromARGB(103, 74, 145, 58),
          title: Text(
            titles[_currentIndex],
            style: TextStyle(fontSize: 20),
          ),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("asesst/imge/12.jpg"),
                              fit: BoxFit.cover)),
                      currentAccountPicture: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage("asesst/imge/145.jpg")),
                      accountName: Text("mohamed"),
                      accountEmail: Text("")),
                  ListTile(
                    title: Text("My Home"),
                    leading: Icon(Icons.home),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context)=>LoginScreen(),),
                              (route){
                            return false;
                          });
                    },
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text("mohamed ibrahim")),
            ],
          ),
        ),
        body:
        screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(103, 74, 145, 58),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 10, 225, 84),
          // unselectedItemColor: Colors.grey,

          items: const [
            BottomNavigationBarItem(

              icon: Icon(Icons.menu),
              label: 'menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
          ],
          onTap: (Index) {
            setState(() {
              _currentIndex = Index;
            });
          },
        ),
      ),
    );
  }
}
