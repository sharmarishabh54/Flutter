import 'package:flutter/cupertino.dart';

import 'secondScreen.dart';
import 'thirdScreen.dart';
import 'fourthScreen.dart';
import 'gradient_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: 'Quizzler',
        gradientBegin: Color(0xFF0D324D),
        gradientEnd: Color(0xFF7F5A83),
      ),
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.02, 1],
          colors: [
            Color(0xFF0D324D),
            Color(0xFF7F5A83),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/main.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Color(0xFFA8CABA),
            elevation: 10.0,
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              leading: FaIcon(
                FontAwesomeIcons.brain,
                color: Colors.red,
              ),
              title: Text(
                'General Knowledge',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'This is a General Knowledge Quiz.',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Card(
            color: Color(0xFFA8CABA),
            elevation: 10.0,
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
              leading: FaIcon(
                FontAwesomeIcons.calculator,
                color: Colors.brown,
              ),
              title: Text(
                'Mathematics',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'This is a Mathematics Quiz.',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Card(
            color: Color(0xFFA8CABA),
            elevation: 10.0,
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FourthScreen()));
              },
              leading: FaIcon(
                FontAwesomeIcons.flask,
                color: Colors.lightBlue,
              ),
              title: Text(
                'Science',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'This is a Science Quiz.',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

////
//Navigator.push(
//context,
//MaterialPageRoute(builder: (context) => SecondScreen()),
