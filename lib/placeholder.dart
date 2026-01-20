import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Go to previous Page',
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PlaceholderScreen()),
              // );
            },
            icon: const Icon(Icons.arrow_circle_right),
            tooltip: 'Go to Next Page',
            color: Colors.red,
          ),
        ],
        title: Text("hello app bar"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "placeholder screen",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);

              // MaterialPageRoute(builder: (context) => PlaceholderScreen()),
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);

              // MaterialPageRoute(builder: (context) => PlaceholderScreen()),
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
