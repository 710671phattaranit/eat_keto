import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eat_keto/pages/eat_details.dart';
import 'package:eat_keto/models/eat_item.dart';
import 'package:google_fonts/google_fonts.dart';


class seaListPage extends StatefulWidget {
  const seaListPage({Key? key}) : super(key: key);

  @override
  _seaListPageState createState() => _seaListPageState();
}

class _seaListPageState extends State<seaListPage> {
  var items = [
    EatItem(
      id: 1,
      name: "Tuna",
      gram: 100,
      cal: 110,
      nutrient:'sea11.png',
      image: 'sea1.jpg',
    ),
    EatItem(
      id: 2,
      name: "Salmon",
      gram: 100,
      cal: 136,
      nutrient:'sea22.png',
      image: 'sea2.jpg',
    ),
    EatItem(
      id: 3,
      name: "Shrimp",
      gram: 100,
      cal: 99,
      nutrient:'sea33.png',
      image: 'sea3.jpg',
    ),
    EatItem(
      id: 4,
      name: "Clams",
      gram: 100,
      cal: 2,
      nutrient:'sea44.png',
      image: 'sea4.jpeg',
    ),
    EatItem(
      id: 5,
      name: "Scallops",
      gram: 100,
      cal: 113,
      nutrient:'sea55.png',
      image: 'sea5.jpg',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            EatItem item = items[index];

            return Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    //<route name ของหน้าปลายทาง>
                    EatDetailsPage.routeName,
                    arguments: item,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/${item.image}',
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            '${item.gram.toString()} กรัม',
                            style: GoogleFonts.prompt(fontSize: 15.0),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

            );
          }
      ),
    );
  }
}
