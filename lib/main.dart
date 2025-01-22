import 'package:flutter/material.dart';

void main() {
  runApp(CampusCravingsApp());
}

class CampusCravingsApp extends StatelessWidget {
  const CampusCravingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            children: [
              // Navigation bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            // Flash Sales navigation logic
                          },
                          child: Text(
                            'FLASH SALES',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 20),
                        TextButton(
                          onPressed: () {
                            // College Park Food Deals navigation logic
                          },
                          child: Text(
                            'COLLEGE PARK FOOD DEALS',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'CampusCravings',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // How It Works navigation logic
                      },
                      child: Text(
                        'HOW IT WORKS',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 0), // Adjusted to raise the text above the tray
                      // Header text
                      Text(
                        'GET DELICIOUS FOOD AT STUDENT FRIENDLY PRICES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35, // Increased font size
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5), // Proportional spacing between header and subtext
                      // Subtext
                      Text(
                        'Save money and fight food waste while supporting your favorite local restaurants',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 150, 93, 93),
                        ),
                      ),
                      SizedBox(height: 220), // Added spacing before the buttons
                      // Flash Sales button
                      ElevatedButton(
                        onPressed: () {
                          // Explore Deals logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Flash Sales',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      // College Park Food Deals button
                      ElevatedButton(
                        onPressed: () {
                          // College Park Food Deals logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'College Park Food Deals',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      // How It Works button
                      ElevatedButton(
                        onPressed: () {
                          // How It Works logic
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'How it Works',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
