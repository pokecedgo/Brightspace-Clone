import 'package:flutter/material.dart';
import 'package:flutter_application_1/banner_settings.dart';
import 'package:flutter_application_1/course_maker.dart';


/*
    HomePage 
    - Contains Course making declarations
*/
class HomePage extends StatefulWidget {
  final double boxHeight;
  final double boxWidth;
  final double xOffset;
  final double yOffset;
  final Color boxBackgroundColor;

  HomePage({
    this.boxHeight = 500.0,
    this.boxWidth = 200.0,
    this.xOffset = 0.0, // Default x offset value
    this.yOffset = 40.0, // Default y offset value
    this.boxBackgroundColor = const Color.fromARGB(255, 255, 255, 255), // Default background color
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBrightspaceHelpExpanded = false;
  bool isAnnouncementsExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: BannerSettings.bannerWidth,
                height: BannerSettings.bannerHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/banner.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 40,
                child: Text(
                  "SUNY Hogwarts",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 40.0,
                    fontFamily: 'OpenSans', // Open Sans font
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: widget.yOffset), // Use the yOffset value here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: widget.xOffset), // Use the xOffset value here
                width: (2 / 3) * BannerSettings.bannerWidth,
                height: widget.boxHeight,
                decoration: BoxDecoration(
                  color: widget.boxBackgroundColor, // Use the boxBackgroundColor here
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    CourseMaker.createCourseBox(
                      imagePath: 'assets/darkmagic.jpg',
                      title: '25SP Intro to Dark Magic',
                      description: 'DMC105 SPR25 Introduction to Dark Magic',
                      onTap: () {
                        // Action for Course 1
                      },
                    ),
                    CourseMaker.createCourseBox(
                      imagePath: 'assets/quidditch.jpg',
                      title: '25SP Advanced Quidditch',
                      description: 'QUI201 SPR25 Advanced Quidditch',
                      onTap: () {
                        // Action for Course 2
                      },
                    ),
                    CourseMaker.createCourseBox(
                      imagePath: 'assets/ravenclaw.jpg',
                      title: '25SP House of Ravenclaw',
                      description: 'RAV101 SPR25 House of Ravenclaw',
                      onTap: () {
                        // Action for Course 3
                      },
                    ),
                    CourseMaker.createCourseBox(
                      imagePath: 'assets/necromancy.jpg',
                      title: '25SP Necromancy 101',
                      description: 'NEC101 SPR25 Necromancy 101',
                      onTap: () {
                        // Action for Course 4
                      },
                    ),
                  ],
                ),
              ),

              //Box1
              SizedBox(width: 10),
              Column(
                children: [
                  Container(
                    width: (1 / 3) * BannerSettings.bannerWidth,
                    height: widget.boxHeight / 3,
                    decoration: BoxDecoration(
                      color: widget.boxBackgroundColor, // Use the boxBackgroundColor here
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isAnnouncementsExpanded = !isAnnouncementsExpanded;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Announcements",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  isAnnouncementsExpanded
                                      ? Icons.arrow_drop_up
                                      : Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          if (isAnnouncementsExpanded) ...[
                            SizedBox(height: 10),
                            Text("No announcements for now"),
                          ],
                        ],
                      ),
                    ),
                  ),

                  //Box2

                  SizedBox(height: 10),
                  Container(
                    width: (1 / 3) * BannerSettings.bannerWidth,
                    height: widget.boxHeight / 3,
                    decoration: BoxDecoration(
                      color: widget.boxBackgroundColor, // Use the boxBackgroundColor here
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isBrightspaceHelpExpanded = !isBrightspaceHelpExpanded;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Brightspace Help",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  isBrightspaceHelpExpanded
                                      ? Icons.arrow_drop_up
                                      : Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          if (isBrightspaceHelpExpanded) ...[
                            SizedBox(height: 20),
                            TextButton(
                              onPressed: () {
                                // Action for IT Service Desk
                              },
                              child: Text("IT Service Desk"),
                            ),
                            TextButton(
                              onPressed: () {
                                // Action for Brightspace Knowledge Base
                              },
                              child: Text("Brightspace Knowledge Base"),
                            ),
                            TextButton(
                              onPressed: () {
                                // Action for Brightspace Ticket
                              },
                              child: Text("Brightspace Ticket"),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),

                  //Box3
                  SizedBox(height: 10),
                  Container(
                    width: (1 / 3) * BannerSettings.bannerWidth,
                    height: widget.boxHeight / 3,
                    decoration: BoxDecoration(
                      color: widget.boxBackgroundColor, // Use the boxBackgroundColor here
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upcoming Events",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 100,
                              child: ListView(
                                children: [
                                  Text("Welcome to SUNY Hogwarts!"),
                                  Text("Spring 2025 Semester"),
                                  Text("Classes start on January 15, 2025"),
                             
                                  Text(
                                  "The primary SUNY email address associated with your account: pcedric1@hogwarts.edu",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold, // Make the text bold
                                    fontFamily: 'OpenSans', // Use a different font (replace 'YourFontFamily' with the actual font family name)
                                    fontSize: 15.0, // Optional: Set the font size
                                  ),
                                ),
                                ],
                              ),
                            ), // Add a child widget here
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
