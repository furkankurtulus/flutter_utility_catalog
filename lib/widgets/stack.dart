import 'package:flutter/material.dart';

class stackWidget extends StatefulWidget {
  const stackWidget({Key? key}) : super(key: key);

  @override
  _stackWidgetState createState() => _stackWidgetState();
}

class _stackWidgetState extends State<stackWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            hamburgerWidget(context),
          ],
        ),
      ),
    );
  }

  Widget hamburgerWidget(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 30,
          ),
          child: Container(
            // color: Colors.red,
            decoration: BoxDecoration(
              image: const DecorationImage(
                opacity: 0.8,
                image: AssetImage('assets/img/rastourant.jpg'),
                fit: BoxFit.cover,
              ),
              // gradient: LinearGradient(
              //     begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.red, Colors.black]),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            alignment: Alignment.bottomLeft,
            width: MediaQuery.of(context).size.width / 2.7,

            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Fastfood",
                    style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hamburger",
                    style: const TextStyle(
                        fontFamily: 'Valorant', color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Container(
        child: Positioned(
            top: MediaQuery.of(context).size.height / 200,
            right: MediaQuery.of(context).size.width / 45,
            child: Hero(
              tag: "agent",
              child:
                  Container(width: 50, height: 50, child: Image.asset('assets/img/hamburger.jpg', fit: BoxFit.contain)),
            )),
      ),
    ]);
  }
}
