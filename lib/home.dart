import 'package:flutter/material.dart';
import 'profile.dart';
import 'favorites.dart';


class JobBoardApp extends StatefulWidget {
  @override
  _JobBoardAppState createState() => _JobBoardAppState();
}

class _JobBoardAppState extends State<JobBoardApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

          ),
        ),
        drawer: ProfileDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Hello Rohan!', style: TextStyle(fontSize: 18.0)),
                Text('Discover Your Dream Job', style: TextStyle(fontSize: 24.0)),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(labelText: 'Search job vacancy'),
                ),
                SizedBox(height: 20.0),
                Text('Popular', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                JobPostingCard('Frontend Developer', 'Netflix', '1 month ago', 'January 15th'),
                SizedBox(height: 20.0),
                Text('Development', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                JobPostingCard('User Interface Designer', 'Spotify', '1 month ago', 'January 15th'),
                JobPostingCard('Backend Developer', 'Tokopedia', '1 month ago', 'January 15th'),
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
                    );// Handle Favorites button press
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
      ),
    );
  }
}

class JobPostingCard extends StatefulWidget {
  final String jobTitle;
  final String company;
  final String postedTime;
  final String applicationDeadline;

  JobPostingCard(this.jobTitle, this.company, this.postedTime, this.applicationDeadline);

  @override
  _JobPostingCardState createState() => _JobPostingCardState();
}

class _JobPostingCardState extends State<JobPostingCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.jobTitle, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : null,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text('Company: ${widget.company}'),
            SizedBox(height: 8.0),
            Text('Posted: ${widget.postedTime}'),
            SizedBox(height: 8.0),
            Text('Applications due: ${widget.applicationDeadline}'),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  // Add your apply logic here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Apply',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 34.0,
                    backgroundImage: NetworkImage('https://example.com/your_image_url.jpg'),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Hello Akbar!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 1.0),
                  Text(
                    'Your Dream Job Awaits',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
                'Your Profile',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()), // Replace with your ProfilePage class
                );
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.white),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add your logout logic here
              },
            ),
            // Add more items as needed
          ],
        ),
      ),
    );
  }
}
