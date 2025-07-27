import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Login to your account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
             ),
              SizedBox(height: 40), 
              Text('Email',style:TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Text('Password',style:TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                 
                  border: OutlineInputBorder(),
                ),
              ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password
                },
                child: Text('Forgot Password?', style: TextStyle(color: Colors.blue)),
              ),
            ),
              // ...existing code...
SizedBox(
  width: double.infinity, // Makes the button take full width
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
     // iconColor: Colors.green, 
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      backgroundColor: Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    ),
    onPressed: () {
      // Handle login action
    },
    child: Text('Login'),
  ),
),
   SizedBox(height: 20,),
   Text('Don\'t have an account?', style: TextStyle(fontSize: 15)),
            TextButton(
              onPressed: () {
                // Handle sign up action
              },
              child: Text('Sign Up', style: TextStyle(color: Colors.blue)),
            ),
              SizedBox(height: 20),
              Text('or continue with', style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.facebook, color: Colors.blue),
                    onPressed: () {
                      // Handle Facebook login
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.golf_course, color: Colors.red),
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                ],
            )
            ],
          ),
        ),
      ),
    );
  }
}