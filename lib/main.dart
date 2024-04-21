import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My First App',
    home: HomePage(),
  ));
}

// To create StateLess Page - Type STL
// To create StateFul Page - Type STF

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My First Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          children: [
            Text('Hello'),
            Image.network(
                'https://cdn.pixabay.com/photo/2018/06/22/08/24/emotions-3490223_1280.jpg'),
            SizedBox(
              height: 30,
            ),
            Text('Hello'),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  print('Clicked');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Click Me'),
                    Icon(Icons.arrow_right_alt_outlined),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(6)),
              child: Center(
                  child: Text(
                'Hey',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
