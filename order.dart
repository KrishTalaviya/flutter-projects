import 'package:flutter/material.dart';
import 'package:shopping_shoes/profilepage.dart';
import 'package:shopping_shoes/shoppingcart.dart';
import 'package:shopping_shoes/home.dart';
import 'package:shopping_shoes/order.dart';
import 'package:shopping_shoes/wishlist.dart';

class Order extends StatefulWidget {
  Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        title: Container(
          child: Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 75),
                  child: Text(
                    'Order',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(50, 0, 10, 0),
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
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8),
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      'https://rukminim1.flixcart.com/image/832/832/ktizdzk0/shoe/y/b/x/7-ws-9310-tying-grey-original-imag6ut3hzm2zyqm.jpeg?q=70',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 110),
                              child: Text(
                                '\$500',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.check_rounded,
                              color: Colors.black,
                            ),
                            Text('Completed')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8),
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      'https://m.media-amazon.com/images/I/71UXUtS1l-L._UY500_.jpg',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 120),
                              child: Text(
                                '\$500',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text('Cancelled')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8),
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      'https://thumbs.dreamstime.com/b/blue-shoes-29507491.jpg',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 110),
                              child: Text(
                                '\$500',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.check_rounded,
                              color: Colors.black,
                            ),
                            Text('Completed')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8),
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      'https://m.media-amazon.com/images/I/81euNVK3zrL._UL1500_.jpg',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Shoes',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 110),
                              child: Text(
                                '\$500',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.check_rounded,
                              color: Colors.black,
                            ),
                            Text('Completed')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            Center(
              child: Container(
                  child: TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue[600]),
                  child: Text(
                    'Load More',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
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
    );
  }
}
