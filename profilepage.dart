import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      appBar: AppBar(
        backgroundColor: Color(0xfff7f7f7),
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 35, 10, 10),
              child: SizedBox(
                width: double.infinity,
                height: 175.0,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          child: CircleAvatar(
                            radius: 50,
                            child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEebIkNv921zxUwLw5lrHovE0v1XqXckqLOEnTkuv5P20YesRSNQ8w5EczhqBxPijwrAM&usqp=CAU'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 57),
                          child: Column(
                            children: [
                              Text(
                                'Savage',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text('abcd@example.com'),
                              Text('Customer ID NO: svage@safari')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ), //Card
              ), //Si,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 25, 10, 10),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text('Total Buy'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\$5000.00',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 15, 10, 20),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text('Setting'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 10, 10),
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 20),
                  Text('Account Setting')
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 10, 10),
              child: Row(
                children: [
                  Icon(Icons.directions_boat_filled),
                  SizedBox(width: 20),
                  Text('Billing \& Payment')
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 10, 10),
              child: Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(width: 20),
                  Text('Notification')
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 10, 10),
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 20),
                  TextButton(
                    child: Text('Log Out',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    onPressed: () {
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
