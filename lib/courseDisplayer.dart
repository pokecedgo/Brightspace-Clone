import 'package:flutter/material.dart';
import 'headers.dart';

/*
    courseDisplayer.dart
    - Dynamically show elements of each course depending on which course user selects.

    Features:
    - Each course has a header banner with the course icon image.
    - Banner text displays the course title.
    - Each course has a widget box displaying specific course information.
    - Each box has the course image and a title (image similar to the banner).
    - If a user is viewing a course, the Main Title "SUNY Hogwarts" changes to the course name.
    - If the user is in the "Home" page, the Main Title is "SUNY Hogwarts".
    - Default course contents: Resources, Assignments, Labs.
*/

class CourseDisplayer extends StatelessWidget {
  final String courseTitle;
  final String courseImagePath;

  CourseDisplayer({
    required this.courseTitle,
    required this.courseImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainHeader(offset: 130.0), // Corrected offset
      body: Column(
        children: [
        SecondaryHeader(
            offset: 130.0,
            onHomePressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Course Banner
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(courseImagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: Text(
                          courseTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Default Course Content Boxes
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        _buildContentBox(
                          context,
                          title: "Resources",
                          imagePath: courseImagePath,
                          onTap: () {
                            // Action for Resources
                          },
                        ),
                        SizedBox(height: 10),
                        _buildContentBox(
                          context,
                          title: "Assignments",
                          imagePath: courseImagePath,
                          onTap: () {
                            // Action for Assignments
                          },
                        ),
                        SizedBox(height: 10),
                        _buildContentBox(
                          context,
                          title: "Labs",
                          imagePath: courseImagePath,
                          onTap: () {
                            // Action for Labs
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build content boxes
  Widget _buildContentBox(BuildContext context, {
    required String title,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



