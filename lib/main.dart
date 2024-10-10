import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  // here am align the text container to the left side
          children: [
            const SizedBox(height: 50),  // Adding space at the top

            // Center the circular image container
            Center(
              child: Container(
                width: 320,
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.black,  // Black background for the image container for decoration
                  borderRadius: BorderRadius.circular(16), // i did rounded corners
                ),
                child: ClipOval(  // Make the image circular for the spicy challenage :)
                  child: Image.asset(
                    'assets/images/animal.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,  // Cover the entire circular area like the circular will be full of pic
                  ),
                ),
              ),
            ),

            const SizedBox(height: 60),  // Space between image and text
            
            // Fully left align the text container
            Container(
              margin: const EdgeInsets.only(left: 30.0),  // Pushes the text container to the left with margin
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[300],  // Light gray background for the text container
                borderRadius: BorderRadius.circular(16),  // Rounded corners
              ),
              child: Row(  // Add Row to align text in one line
                children: const [
                  Text(
                    'Name: Dear',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 9, 10),
                    ),
                  ),
                  SizedBox(width: 16),  // Space between texts
                  Text(
                    'Age: 4',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 9, 9),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(width: 16),  // Space between texts
                  Text(
                    'Gender: female',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 19, 18, 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






