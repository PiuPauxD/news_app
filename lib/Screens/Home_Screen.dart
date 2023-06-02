// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/Services/api_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> category = [
    'Trending',
    'Health',
    'Sports',
    'Finance',
    'Attractions',
  ];
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'News',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 255, 232, 229),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.widgets_outlined,
                          color: Color.fromARGB(255, 255, 232, 229),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        height: 40,
                        margin: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            category[index],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 232, 229),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 255, 242, 197),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          'Article',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_sharp,
                            size: 24,
                            color: Color.fromARGB(255, 17, 17, 17),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_sharp,
                            size: 24,
                            color: Color.fromARGB(255, 17, 17, 17),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share_sharp, size: 24),
                          color: Color.fromARGB(255, 17, 17, 17),
                        ),
                      ),
                    ],
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
