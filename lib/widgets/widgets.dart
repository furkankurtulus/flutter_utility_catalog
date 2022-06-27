import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  _WidgetsState createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10),
            child: Text(
              "Popular Widgets",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromRGBO(25, 25, 112, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            children: [
              GestureDetector(
                child: Container(
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 3,
                    // color: Colors.red,
                    child: Card(
                      child: Center(
                        child: Text(
                          'Stack',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    )),
                onTap: () => Navigator.pushNamed(context, "/stack"),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width / 3,
                  color: Colors.red,
                  child: Card(
                    child: null,
                  )),
              Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width / 3,
                  color: Colors.red,
                  child: Card(
                    child: null,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
