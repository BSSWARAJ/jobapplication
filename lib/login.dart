import 'package:flutter/material.dart';
import 'registration.dart';
import 'home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JobizzLoginPage(),
    );
  }
}

class JobizzLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/10488/10488756.png',
                width: 150,
                height: 90,
              ),
              SizedBox(height: 10),
              Text(
                'Jobizz',
                style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome back',
                style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Let\'s log in. Apply to jobs!',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JobBoardApp()),
                  );
                  // Add login functionality here
                },
                child: Text('Log in'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Add forgot password functionality here
                },
                child: Text('Forgot Password?'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                  // Navigate to registration page

                },
                child: Text('Haven\'t an account? Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
