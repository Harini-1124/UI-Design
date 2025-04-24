mport 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0), // Padding around the container
          height: 450,
          width: 350,
          color: Colors.pink, // Lighter purple background for the container
          child: GridView.count(
            crossAxisCount: 1,
            children: [
              Container(
                color: Colors.white, // Light background for form section
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Title
                    Container(
                      child: Text(
                        "Login Form",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20), // Spacing between elements

                    // Name TextField with Icon
                    Container(
                      height: 60,
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person), // Icon for Name
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Spacing between fields

                    // Email TextField with Icon
                    Container(
                      height: 60,
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email), // Icon for Email
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Spacing before button

                    // Login Button
                    Container(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(250, 50), // Fixed button size
                          textStyle: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
