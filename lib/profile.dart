import 'package:flutter/material.dart';
import 'favorites.dart';
import 'home.dart';
import 'login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          ElevatedButton(
            onPressed: () {
              // Add your logout logic here
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JobizzLoginPage()), // Replace with your ProfilePage class
              );// Replace with your logout logic
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage('https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg'),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Rohan',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Software Engineer',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Summary:',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Experienced software engineer with a focus on mobile app development. Passionate about creating scalable and efficient solutions.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Experience:',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        ExperienceItem('Senior Developer', 'ABC Company', 'Jan 2018 - Present'),
                        ExperienceItem('Junior Developer', 'XYZ Corporation', 'May 2015 - Dec 2017'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Education:',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        EducationItem('Bachelor of Science in Computer Science', 'University of ABC', 'Graduated in 2015'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skills:',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Chip(label: Text('Flutter')),
                        Chip(label: Text('Dart')),
                        Chip(label: Text('Mobile App Development')),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Interests:',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Chip(label: Text('Technology')),
                        Chip(label: Text('Reading')),
                        Chip(label: Text('Traveling')),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JobBoardApp()),
                  );
                  // Handle Home button press
                },
              ),
              IconButton(
                icon: Icon(Icons.explore),
                onPressed: () {
                  // Handle Explore button press
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JobSearchHomePage()),
                  );//
                  // Handle Favorites button press
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  // Handle Profile button press
                },
              ),
            ],
          ),
        )
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String position;
  final String company;
  final String duration;

  ExperienceItem(this.position, this.company, this.duration);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(position),
      subtitle: Text('$company • $duration'),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String institution;
  final String graduationDate;

  EducationItem(this.degree, this.institution, this.graduationDate);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(degree),
      subtitle: Text('$institution • $graduationDate'),
    );
  }
}
