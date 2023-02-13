import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProgressState();
  }
}

class _ProgressState extends State<ProgressBar> {
  int _count = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                border:Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Row(children: <Widget>[
              IconButton(
                icon: const Icon(Icons.remove,color: Colors.purple),
                onPressed: () {
                  setState(() {
                    _count -= 1;
                  });
                },
              ),
              Text(_count.toString()),
              IconButton(
                icon: const Icon(Icons.add,color: Colors.purple),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ])),
      ],
    );
  }
}