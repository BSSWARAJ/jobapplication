import 'package:flutter/material.dart';



class JobSearchHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Row(
        children: [
          NavigationMenu(),
          Expanded(
            child: MainContentArea(),
          ),
        ],
      ),
    );
  }
}

class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              // Handle navigation to saved jobs
            },
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.work),
            onPressed: () {
              // Handle navigation to explore jobs
            },
            color: Colors.white,
          ),
          // Add more menu items as needed
        ],
      ),
    );
  }
}

class MainContentArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Saved Jobs', style: TextStyle(fontSize: 24.0)),
            SizedBox(height: 16.0),
            SavedJobCard('Frontend Developer', 'Company ABC', 'Location XYZ', '1 day ago'),
            SavedJobCard('Backend Developer', 'Company XYZ', 'Location ABC', '2 days ago'),
            SizedBox(height: 16.0),
            JobDetails(
              'Frontend Developer',
              'Company ABC',
              'Location XYZ',
              '1 day ago',
              'Full-time',
              'Job description goes here...',
              'Qualifications: XYZ',
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle "Back" button press
                  },
                  child: Text('Back'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle "Apply" button press
                  },
                  child: Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SavedJobCard extends StatelessWidget {
  final String jobTitle;
  final String company;
  final String location;
  final String datePosted;

  SavedJobCard(this.jobTitle, this.company, this.location, this.datePosted);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(jobTitle, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('Company: $company'),
            Text('Location: $location'),
            Text('Date Posted: $datePosted'),
          ],
        ),
      ),
    );
  }
}

class JobDetails extends StatelessWidget {
  final String jobTitle;
  final String company;
  final String location;
  final String datePosted;
  final String jobType;
  final String jobDescription;
  final String qualifications;

  JobDetails(this.jobTitle, this.company, this.location, this.datePosted, this.jobType, this.jobDescription, this.qualifications);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(jobTitle, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('Company: $company'),
            Text('Location: $location'),
            Text('Date Posted: $datePosted'),
            Text('Job Type: $jobType'),
            SizedBox(height: 8.0),
            Text('Job Description:'),
            Text(jobDescription),
            SizedBox(height: 8.0),
            Text('Qualifications: $qualifications'),
          ],
        ),
      ),
    );
  }
}