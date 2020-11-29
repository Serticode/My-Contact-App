import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final shadowColor = Color(0xFF009688);
  final iconColor = Color(0xFF212121);
  final textColor = Color(0xFF757575);
  final cardMargin = EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0);
  final textStyle = TextStyle(
    color: Color(0xFF757575),
    fontSize: 20.0,
    fontFamily: "CutiveMono",
    fontWeight: FontWeight.bold,
    letterSpacing: 1.8,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF5F5F5),
        accentColor: Color(0xFF009688),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage("images/serticode1.jpg"),
            ),
            onPressed: () {
              debugPrint("APPBAR ICON PRESSED");
            },
          ),
          title: Text(
            "MY Contact Card",
            style: TextStyle(
              fontFamily: "DancingScript",
              fontSize: 30.0,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.teal,
                      child: CircleAvatar(
                        radius: 45.0,
                        backgroundImage: AssetImage("images/serticode1.jpg"),
                      ),
                    ),
                    Text(
                      "Akujor Samuel O.",
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 35.0,
                        fontFamily: "DancingScript",
                      ),
                    ),
                    Text(
                      "FLUTTER NEWBIE",
                      style: textStyle,
                    ),
                    Divider(
                      indent: 70.0,
                      endIndent: 70.0,
                      thickness: 1.5,
                      color: Color(0xFFBDBDBD),
                    ),
                    Card(
                      shadowColor: shadowColor,
                      margin: cardMargin,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: iconColor,
                          ),
                          title: Text(
                            "+23490 @SERTICODE",
                            style: textStyle,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: shadowColor,
                      margin: cardMargin,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color: iconColor,
                          ),
                          title: Text(
                            "+23470 @SERTICODE",
                            style: textStyle,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: shadowColor,
                      margin: cardMargin,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.mail,
                            color: iconColor,
                          ),
                          title: Text(
                            "HELPDESKFORSERTICODE@GMAIL.COM",
                            style: textStyle,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: shadowColor,
                      margin: cardMargin,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: iconColor,
                          ),
                          title: Text(
                            "@SERTICODE",
                            style: textStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
