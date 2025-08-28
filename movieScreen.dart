import 'package:flutter/material.dart';
import 'package:rwad/movies_list.dart';

class Moviescreen extends StatelessWidget {
  const Moviescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'FilmKu',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.notifications_none_rounded, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Now Showing',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    textStyle: const TextStyle(fontSize: 12),
                    minimumSize: Size(60, 30),
                  ),
                  child: Text('see more'),
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: nowShowing.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(8),
                          child: Image.asset(
                            '${nowShowing[index]['image']}',
                            fit: BoxFit.fill,
                            width: 130,
                            height: 180,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        ' ${nowShowing[index]['title']}',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 15),
                          Text(
                            ' ${nowShowing[index]['rate']}/10 IMDB',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    textStyle: const TextStyle(fontSize: 12),
                    minimumSize: Size(60, 30),
                  ),
                  child: Text('see more'),
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemExtent: 130,
                itemCount: popular.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          '${popular[index]['image']}',
                          fit: BoxFit.fill,
                          height: 120,
                          width: 100,
                        ),
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${popular[index]['title']}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 16,
                              ),
                              Text(
                                ' ${popular[index]['rate']}/10 IMDB',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          categories(index),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.black,
                                size: 15,
                              ),
                              Text(
                                ' ${popular[index]['time']}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget categories(int index) {
  final categories = popular[index]['category'] as List;

  return Wrap(
    spacing: 8,
    runSpacing: 4,
    children: categories.map<Widget>((category) {
      return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: Size(60, 30),
          backgroundColor: const Color.fromARGB(255, 162, 191, 241),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        ),
        child: Text(
          category,
          style: TextStyle(
            color: Colors.blue[800],
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      );
    }).toList(),
  );
}
