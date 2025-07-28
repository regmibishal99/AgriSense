import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Create a new account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
             ),
              SizedBox(height: 20),
              Text('Name',style:TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10), 
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
             Navigator.pop(context);
              },
              child: Text('Sign In', style: TextStyle(color: Colors.blue)),
            ),
         
              SizedBox(height: 60,),
              
            Text('By signing up, you agree to our', style: TextStyle(fontSize: 15)),
          TextButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Terms and Conditions'),
        content: Text(
          'Here are the terms and conditions of using this app. Please read them carefully before proceeding.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
        ],
      ),
    );
  },
  child: Text('Terms and Conditions', style: TextStyle(color: Colors.blue)),  
),

            ]
          ),
        ),
      ),
    );
  }
}