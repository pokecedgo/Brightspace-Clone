import 'package:flutter/material.dart';


/*

    Handles the header main header on every navigation pages
    Also handles the subheader and all headers.

*/
class MainHeader extends StatelessWidget implements PreferredSizeWidget {
  final double offset;

  MainHeader({Key? key, this.offset = 150.0})
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
              SizedBox(width: offset), //  offset
              Container(
                width: 50, //  width
                height: 60, //  height
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Hogwartscrest.jpg'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.more_vert,
                color: const Color.fromARGB(255, 233, 232, 232),
              ),
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
              Icon(
                Icons.more_vert,
                color: const Color.fromARGB(255, 233, 232, 232),
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
              SizedBox(width: 8),
              PopupMenuButton<String>(
                offset: Offset(20, 40),
                onSelected: (value) {
                  // Handle the selected value
                },
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem<String>(
                      value: 'Profile',
                      child: Text('Profile'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Notifications',
                      child: Text('Notifications'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Account Settings',
                      child: Text('Account Settings'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Progress',
                      child: Text('Progress'),
                    ),
                    PopupMenuItem<String>(
                      value: 'English',
                      child: Text('English'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Log Out',
                      child: Text('Log Out'),
                    ),
                  ];
                },
                child: Text(
                  "Cedric Petilos",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 33, 34, 34),
                    fontSize: 12.0, // Smaller text size
                  ),
                ),
              ),
              PopupMenuButton<String>(
                offset: Offset(0, 40),
                onSelected: (value) {
                  // Handle the selected value
                },
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem<String>(
                      value: 'Organization Related',
                      child: Text('Organization Related', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    PopupMenuItem<String>(
                      value: 'Audio/Video Note Editor',
                      child: TextButton(
                        onPressed: () {
                          // Action for Audio/Video Note Editor
                        },
                        child: Text('Audio/Video Note Editor'),
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'Media',
                      child: TextButton(
                        onPressed: () {
                          // Action for Media
                        },
                        child: Text('Media'),
                      ),
                    ),
                  ];
                },
                child: Icon(
                  Icons.settings_outlined,
                  color: const Color.fromARGB(255, 2, 2, 2),
                  size: 42.0,
                ),
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

  SecondaryHeader({Key? key, this.offset = 0.0})
      : preferredSize = Size.fromHeight(80.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 9, 63, 108),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start, // Align to the left
        children: [
          SizedBox(width: offset), // Customizable offset
          TextButton(
            onPressed: () {
              // Action for My Home
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
              // Action for Announcements
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
              // Action for Discover
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
              // Handle the selected value
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'IT Service Desk',
                  child: Text('IT Service Desk'),
                ),
                PopupMenuItem<String>(
                  value: 'Faculty Documentation',
                  child: Text('Faculty Documentation'),
                ),
                PopupMenuItem<String>(
                  value: 'Student Documentation',
                  child: Text('Student Documentation'),
                ),
                PopupMenuItem<String>(
                  value: 'Brightspace Ticket',
                  child: Text('Brightspace Ticket'),
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
              // Handle the selected value
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
