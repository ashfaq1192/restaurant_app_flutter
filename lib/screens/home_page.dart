import 'package:flutter/material.dart';
import 'menu_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bannu Beef Pulao'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset('assets/logo.jpg', height: 300, width: 300),

            Text('Welcome to Bannu Beef Pulao', style: TextStyle(fontSize: 20, color: Colors.red)),

            // Button to navigate to the Menu Page
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuPage()),
                      );
                    },
                    child: Text('View Menu'),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
