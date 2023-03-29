import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Example'),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://npf-prod.imgix.net/uploads/shutterstock_97706066_1.jpg?auto=compress%2Cformat&crop=focalpoint&fit=crop&fp-x=0.5&fp-y=0.5&h=900&q=80&w=1600',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(
                    /*1*/
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: const Text(
                              "Grand Canyon National Park",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'Arizona, United States Of America',
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  const Text('42'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    /*1*/
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*2*/
                        Icon(
                          Icons.call,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    /*1*/
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*2*/
                        Icon(
                          Icons.route,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          'Route',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    /*1*/
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*2*/
                        Icon(
                          Icons.share,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(32),
              child: Text(
                'Grand Canyon National Park, in Arizona, is home to much of the immense Grand Canyon, with its layered bands of red rock revealing millions of years of geological history. Viewpoints include Mather Point, Yavapai Observation Station and architect Mary Colter’s Lookout Studio and her Desert View Watchtower. Lipan Point, with wide views of the canyon and Colorado River, is a popular, especially at sunrise and sunset.',
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
