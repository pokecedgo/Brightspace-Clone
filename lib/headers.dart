import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/announcement_page.dart';
import 'package:flutter_application_1/pages/discover_page.dart';
import 'pages/home.dart';
import 'pages/discover_page.dart';
import 'pages/announcement_page.dart';
import 'pages/support_page.dart';
import 'pages/library_page.dart';
import 'pages/starfish_page.dart';

/*
    Handles the main header and subheader on every navigation page.
    Centralizes navigation logic for all buttons.
*/

class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  final double offset;

  MainHeader({Key? key, this.offset = 130.0})
      : preferredSize = Size.fromHeight(80.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 254, 254),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: offset), // Offset for alignment
              Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Hogwartscrest.jpg'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text(
                "SUNY Hogwarts",
                style: TextStyle(
                  color: const Color.fromARGB(255, 33, 34, 34),
                  fontSize: 35.0,
                  fontFamily: 'OpenSans',
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.mail_outline_sharp, color: const Color.fromARGB(255, 39, 39, 39)),
                iconSize: 37.0,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.message_outlined, color: Color.fromARGB(255, 39, 39, 39)),
                iconSize: 37.0,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications_active_outlined, color: Color.fromARGB(255, 39, 39, 39)),
                iconSize: 37.0,
                onPressed: () {},
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 113, 82, 66),
                ),
                child: Center(
                  child: Text(
                    "CP",
                    style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.settings_outlined, color: const Color.fromARGB(255, 39, 39, 39)), 
                iconSize: 37.0,
                onPressed: () {
                   //nothing for now
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondaryHeader extends StatelessWidget implements PreferredSizeWidget {
  final double offset;
  final VoidCallback onHomePressed;

  SecondaryHeader({Key? key, this.offset = 0.0, required this.onHomePressed})
      : preferredSize = Size.fromHeight(80.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 9, 63, 108),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: offset), // Offset for alignment
          TextButton(
            onPressed: () {
              // Navigate back to the first route (HomePage)
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Text(
              "My Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AnnouncementPage()));
            },
            child: Text(
              "Announcements",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DiscoverPage()));
            },
            child: Text(
              "Discover",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          PopupMenuButton<String>(
            offset: Offset(0, 40),
            onSelected: (value) {
              if (value == 'IT Service Desk') {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SupportPage()));
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'IT Service Desk',
                  child: Text('IT Service Desk'),
                ),
              ];
            },
            child: Row(
              children: [
                Text(
                  "Support",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          PopupMenuButton<String>(
            offset: Offset(0, 40),
            onSelected: (value) {
              if (value == 'Library') {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LibraryPage()));
              } else if (value == 'Starfish') {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StarfishPage()));
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Library',
                  child: Text('Library'),
                ),
                PopupMenuItem<String>(
                  value: 'Starfish',
                  child: Text('Starfish'),
                ),
              ];
            },
            child: Row(
              children: [
                Text(
                  "Campus Services",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

