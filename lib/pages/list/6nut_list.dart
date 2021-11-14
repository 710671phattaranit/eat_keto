import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eat_keto/pages/eat_details.dart';
import 'package:eat_keto/models/eat_item.dart';
import 'package:google_fonts/google_fonts.dart';


class nutListPage extends StatefulWidget {
  const nutListPage({Key? key}) : super(key: key);

  @override
  _nutListPageState createState() => _nutListPageState();
}

class _nutListPageState extends State<nutListPage> {
  var items = [
    EatItem(
      id: 1,
      name: "Almonds",
      gram: 15,
      cal: 95,
      nutrient:'nut22.png',
      image: 'nut1.jpg',
    ),
    EatItem(
      id: 2,
      name: "Walnuts",
      gram: 100,
      cal: 654,
      nutrient:'nut33.png',
      image: 'nut2.jpg',
    ),
    EatItem(
      id: 3,
      name: "Pumpkin seeds",
      gram: 100,
      cal: 605,
      nutrient:'nut55.png',
      image: 'nut3.jpg',
    ),
    EatItem(
      id: 4,
      name: "Hazelnuts",
      gram: 100,
      cal: 129,
      nutrient:'nut44.png',
      image: 'nut4.jpeg',
    ),
    EatItem(
      id: 5,
      name: "Flaxseed",
      gram: 100,
      cal: 534,
      nutrient:'nut11.png',
      image: 'nut5.jpg',
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
