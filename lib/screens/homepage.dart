import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shehacks_team_055/screens/appBar.dart';

class HomePage extends StatelessWidget {
  Items item1 = new Items(
    title: "Call my emergency contact",

    // img: "assets/calendar.png"
  );

  Items item2 = new Items(
    title: "Call Police",
    //img: "assets/food.png",
  );
  Items item3 = new Items(
    title: "Play Siren",
    //img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "Play Recorded call",
    //img: "assets/festival.png",
  );
  Items item5 = new Items(
    title: "Send text with location",
    //img: "assets/todo.png",
  );
  Items item6 = new Items(
    title: "Safety tips",
    //  img: "assets/setting.png",
  );
  Items item7 = new Items(
    title: "Learn self defence",
    //  img: "assets/setting.png",
  );
  // Items item8 = new Items(
  //   title: "Dragon mode",
  //   //  img: "assets/setting.png",
  // );
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      // item8,
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppLogo(),
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Color(0xFF5B16D0),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
        //brightness: Brightness.li,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            childAspectRatio: 1.0,
            padding: EdgeInsets.only(left: 5, right: 5),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: myList.map((data) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Image.asset(
                    //   data.img,
                    //   width: 42,
                    // ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xFF5B16D0),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              );
            }).toList()),
      ),
    );
  }
}

class Items {
  String title;
  String img;
  Items({this.title, this.img});
}
