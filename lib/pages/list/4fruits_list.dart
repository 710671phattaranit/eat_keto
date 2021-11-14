import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eat_keto/pages/eat_details.dart';
import 'package:eat_keto/models/eat_item.dart';
import 'package:google_fonts/google_fonts.dart';


class fruitsListPage extends StatefulWidget {
  const fruitsListPage({Key? key}) : super(key: key);

  @override
  _fruitsListPageState createState() => _fruitsListPageState();
}

class _fruitsListPageState extends State<fruitsListPage> {
  var items = [
    EatItem(
      id: 1,
      name: "Avocado",
      gram: 100,
      cal: 160,
      nutrient:'fru22.png',
      image: 'fru1.jpg',
    ),
    EatItem(
      id: 2,
      name: "Strawberries",
      gram: 100,
      cal: 32,
      nutrient:'fru33.png',
      image: 'fru2.jpeg',
    ),
    EatItem(
      id: 3,
      name: "Lemon",
      gram: 100,
      cal: 22,
      nutrient:'fru44.png',
      image: 'fru3.jpg',
    ),
    EatItem(
      id: 4,
      name: "Blackberries",
      gram: 100,
      cal: 38,
      nutrient:'fru55.png',
      image: 'fru4.jpeg',
    ),
    EatItem(
      id: 5,
      name: "Coconut",
      gram: 100,
      cal: 354,
      nutrient:'fru11.png',
      image: 'fru5.jpg',
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
