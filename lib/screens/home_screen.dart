import 'package:flutter/material.dart';
import 'package:intern_project/screens/login.dart';
import 'package:intern_project/screens/about.dart';
import 'package:intern_project/widgets/course_container.dart';
import 'package:intern_project/widgets/dummy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          SizedBox(width: 8),
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Profile pressed')));
                  },
                  style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                  child: Text('Profile'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('My Courses pressed')),
                    );
                  },
                  style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                  child: Text('My Courses'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => AboutScreen()),
                    );
                  },
                  style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                  child: Text('About Us'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: Divider(height: 1),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (builder) => LoginScreen()),
                    );
                  },
                  style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                  child: Text('Logout'),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            ...dummyCourses.map(
              (course) => BasicCourseContainer(course: course, onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
