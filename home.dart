import 'package:flutter/material.dart';
import 'package:shopping_shoes/carousel.dart';
import 'package:shopping_shoes/navdrawer.dart';
import 'package:shopping_shoes/profilepage.dart';
import 'package:shopping_shoes/shoppingcart.dart';
import 'package:shopping_shoes/wishlist.dart';
import 'package:shopping_shoes/order.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _selectedIndex = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff7f7f7),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          title: Container(
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(60, 0, 5, 0),
                    child: IconButton(
                      hoverColor: Colors.red.withOpacity(0.3),
                      icon: Icon(Icons.shopping_cart),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShoppingCart(),
                              ));
                        });
                      },
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 15, 0),
                    child: IconButton(
                      hoverColor: Colors.red.withOpacity(0.3),
                      icon: Icon(Icons.person),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfilePage(),
                              ));
                        });
                      },
                    )),
              ],
            ),
          ),
          backgroundColor: Color(0xfff7f7f7),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                          hintText: 'Search Tech Talk',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 45,
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWOe0bwOCd-lk0aVysaih4Id9YzzGiPnP4TQ&usqp=CAU'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
              ),
              Container(
                child: Carouselone(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ColoredBox(
                        color:
                            Colors.white, // <-- Red color provided to below Row
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 60,
                              width: 70,
                              child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDSnpiG3v0mO3opPnLyZVC0Vi4CKiTVG5ffQ&usqp=CAU'),
                            ),
                            Text(
                              'Shoes',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ColoredBox(
                        color:
                            Colors.white, // <-- Red color provided to below Row
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 60,
                              width: 70,
                              child: Image.network(
                                  'data:image/png;base64,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'),
                            ),
                            Text(
                              'Watch',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ColoredBox(
                        color:
                            Colors.white, // <-- Red color provided to below Row
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 60,
                              width: 70,
                              child: Image.network(
                                  'data:image/png;base64,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'),
                            ),
                            Text(
                              'Gadget',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ColoredBox(
                        color:
                            Colors.white, // <-- Red color provided to below Row
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 60,
                              width: 70,
                              child: Image.network(
                                  'https://thumbs.dreamstime.com/b/backpack-schoolbag-icon-cartoon-style-illustration-vector-web-design-120414181.jpg'),
                            ),
                            Text(
                              'Backpacks',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 20, 210, 0),
                      child: Text(
                        'Best Seller',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 25, 0, 0),
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://rukminim1.flixcart.com/image/832/832/ktizdzk0/shoe/y/b/x/7-ws-9310-tying-grey-original-imag6ut3hzm2zyqm.jpeg?q=70'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes WorldWear'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'https://m.media-amazon.com/images/I/71UXUtS1l-L._UY500_.jpg'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'data:image/jpeg;base64,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'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://m.media-amazon.com/images/I/81euNVK3zrL._UL1500_.jpg'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-runnng-shoes-2022-1641297002.png?crop=0.497xw:0.994xh;0.503xw,0&resize=1200:*'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://rukminim1.flixcart.com/image/832/832/xif0q/shoe/u/b/u/8-innova-01cwht-8-asian-white-original-imaghjggpgafzjwm.jpeg?q=70'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 20, 210, 0),
                      child: Text(
                        'Flash Sale',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 25, 0, 0),
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://rukminim1.flixcart.com/image/832/832/ktizdzk0/shoe/y/b/x/7-ws-9310-tying-grey-original-imag6ut3hzm2zyqm.jpeg?q=70'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes WorldWear'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'https://m.media-amazon.com/images/I/71UXUtS1l-L._UY500_.jpg'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'data:image/jpeg;base64,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'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://m.media-amazon.com/images/I/81euNVK3zrL._UL1500_.jpg'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-runnng-shoes-2022-1641297002.png?crop=0.497xw:0.994xh;0.503xw,0&resize=1200:*'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://rukminim1.flixcart.com/image/832/832/xif0q/shoe/u/b/u/8-innova-01cwht-8-asian-white-original-imaghjggpgafzjwm.jpeg?q=70'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 20, 210, 0),
                      child: Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 25, 0, 0),
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://rukminim1.flixcart.com/image/832/832/ktizdzk0/shoe/y/b/x/7-ws-9310-tying-grey-original-imag6ut3hzm2zyqm.jpeg?q=70'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes WorldWear'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'https://m.media-amazon.com/images/I/71UXUtS1l-L._UY500_.jpg'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'data:image/jpeg;base64,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'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://m.media-amazon.com/images/I/81euNVK3zrL._UL1500_.jpg'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-runnng-shoes-2022-1641297002.png?crop=0.497xw:0.994xh;0.503xw,0&resize=1200:*'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://rukminim1.flixcart.com/image/832/832/xif0q/shoe/u/b/u/8-innova-01cwht-8-asian-white-original-imaghjggpgafzjwm.jpeg?q=70'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 20, 210, 0),
                      child: Text(
                        'New Arrivals',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 25, 0, 0),
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://rukminim1.flixcart.com/image/832/832/ktizdzk0/shoe/y/b/x/7-ws-9310-tying-grey-original-imag6ut3hzm2zyqm.jpeg?q=70'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes WorldWear'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'https://m.media-amazon.com/images/I/71UXUtS1l-L._UY500_.jpg'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'data:image/jpeg;base64,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'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://m.media-amazon.com/images/I/81euNVK3zrL._UL1500_.jpg'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(18, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 100,
                                          child: Image.network(
                                              'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-runnng-shoes-2022-1641297002.png?crop=0.497xw:0.994xh;0.503xw,0&resize=1200:*'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.fromLTRB(20, 10, 17, 10),
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Image.network(
                                            'https://rukminim1.flixcart.com/image/832/832/xif0q/shoe/u/b/u/8-innova-01cwht-8-asian-white-original-imaghjggpgafzjwm.jpeg?q=70'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Shoes'),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 2, 60, 2),
                                                child: Text('\$500.00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            Text('4.5')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: const NavDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.shopping_cart),
          onPressed: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShoppingCart(),
                  ));
            });
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 7,
          shape: CircularNotchedRectangle(),
          child: Container(
              // color: Colors.black12,
              // color: Colors.deepPurple[500],
              height: 60,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        // minWidth: 40,
                         onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                        });
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.home_outlined, color: Colors.blue),
                          ],
                        ),
                      ),
                      MaterialButton(
                        // minWidth: 40,
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WishList(),
                                ));
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.favorite_border, color: Colors.blue),
                          ],
                        ),
                      )
                    ],
                  ),
                  // SizedBox(width: 48,),
                  Row(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        // minWidth: 40,
                        onPressed: () {
                          setState(
                            () {},
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Order(),
                                      ));
                                });
                              },
                              icon: Icon(Icons.list_alt_rounded,
                                  color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        // minWidth: 40,
                        onPressed: () {
                          setState(
                            () {},
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.chat, color: Colors.blue),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

// Container(
// height: 40,
// child: Image(image: AssetImage("assets/image/heart.gif"),
// )
