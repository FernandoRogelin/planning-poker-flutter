import 'package:flutter/material.dart';
import 'package:hello_world/overview.dart';

double textSize = 100;

final List<Widget> fibonacci = [
  Text("0,5", style: TextStyle(fontSize: textSize)),
  Text("1", style: TextStyle(fontSize: textSize)),
  Text("2", style: TextStyle(fontSize: textSize)),
  Text("3", style: TextStyle(fontSize: textSize)),
  Text("5", style: TextStyle(fontSize: textSize)),
  Text("8", style: TextStyle(fontSize: textSize)),
  Text("13", style: TextStyle(fontSize: textSize)),
  Text("20", style: TextStyle(fontSize: textSize)),
  Text("40", style: TextStyle(fontSize: textSize)),
  Text("100", style: TextStyle(fontSize: textSize)),
  Text("?", style: TextStyle(fontSize: textSize)),
  Icon(Icons.free_breakfast, size: textSize),
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planning Poker'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            fibonacci.length,
                (index) {
              return Container(
                decoration: new BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 4)],
                ),
                margin: EdgeInsets.all(10),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    homeController.animateTo(
                      index * MediaQuery.of(context).size.width,
                      curve: Curves.linear,
                      duration: Duration(milliseconds: 250),
                    );
                  },
                  child: Center(
                    child: FittedBox(
                      child: fibonacci[index],
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}