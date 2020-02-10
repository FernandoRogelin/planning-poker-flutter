import 'package:flutter/material.dart';
import 'package:hello_world/home.dart';

ScrollController homeController;

class Overview extends StatefulWidget {
  @override
  OverviewState createState() {
    return OverviewState();
  }
}

double textSize = 138;

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

class OverviewState extends State<Overview> {
  @override
  void initState() {
    homeController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: homeController,
      scrollDirection: Axis.horizontal,
      itemCount: fibonacci.length,
      itemBuilder: (context, index) {
        return Container(
          key: Key(index.toString()),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          color: Colors.transparent,
          padding: EdgeInsets.all(20),
          child: new GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: new Container(
              decoration: new BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
              ),
              child: Center(
                child: fibonacci[index],
              ),
            ),
          )

        );
      },
    );
  }
}