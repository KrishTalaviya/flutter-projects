import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_shoes/profilepage.dart';
import 'package:shopping_shoes/progressbar.dart';
import 'package:shopping_shoes/home.dart';
import 'package:shopping_shoes/order.dart';
import 'package:shopping_shoes/wishlist.dart';

class ShoppingCart extends StatefulWidget {
  ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
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
                    'Cart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(75, 0, 0, 0),
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
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                        child: Text(
                          '\$500',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.cancel_outlined,
                          size: 20,
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                    )
                                  ]),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    ),
                                  ),
                                  ProgressBar(),
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
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
                        child: Text(
                          '\$500',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.cancel_outlined,
                          size: 20,
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                    )
                                  ]),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    ),
                                  ),
                                  ProgressBar(),
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
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
                        child: Text(
                          '\$500',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.cancel_outlined,
                          size: 20,
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                    )
                                  ]),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    ),
                                  ),
                                  ProgressBar(),
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
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
                        child: Text(
                          '\$500',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.cancel_outlined,
                          size: 20,
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                    )
                                  ]),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    ),
                                  ),
                                  ProgressBar(),
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(17, 20, 17, 5),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('Subtotal',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(':', style: TextStyle(fontSize: 15))),
                  Expanded(
                      flex: 5,
                      child: Text('\$5000', style: TextStyle(fontSize: 15)))
                ],
              ),
            ),
            new Divider(
              color: Colors.blue,
              thickness: 0.8,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(17, 20, 17, 5),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Shipping',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      ':',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      '\$150',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(17, 5, 17, 5),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Tax',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      ':',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      '\$50',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            new Divider(
              color: Colors.blue,
              thickness: 0.8,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(17, 20, 17, 5),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('Grand Total',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      ':',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      '\$5200',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        color: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: const Text(
                          'Check Out',
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
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
