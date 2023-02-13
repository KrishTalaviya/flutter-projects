import 'package:flutter/material.dart';
import 'package:shopping_shoes/home.dart';
import 'package:shopping_shoes/demo.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 40,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "Carce",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("Home"),
            leading: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => Home()));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Shop"),
            leading: IconButton(
              icon: Icon(Icons.shop),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => Demo()));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Profile"),
            leading: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => Demo()));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
