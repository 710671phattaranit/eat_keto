import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eat_keto/pages/eat_details.dart';
import 'package:eat_keto/models/eat_item.dart';
import 'package:google_fonts/google_fonts.dart';


class meatsListPage extends StatefulWidget {
  const meatsListPage({Key? key}) : super(key: key);

  @override
  _meatsListPageState createState() => _meatsListPageState();
}

class _meatsListPageState extends State<meatsListPage> {
  var items = [
    EatItem(
      id: 1,
      name: "Beef",
      gram: 100,
      cal: 134,
      nutrient:'m22.png',
      image: 'm1.jpeg',
    ),
    EatItem(
      id: 2,
      name: "Bacon",
      gram: 100,
      cal: 310,
      nutrient:'m33.png',
      image: 'm2.jpeg',
    ),
    EatItem(
      id: 3,
      name: "Chicken",
      gram: 100,
      cal: 900,
      nutrient:'m44.png',
      image: 'm3.jpeg',
    ),
    EatItem(
      id: 4,
      name: "Pork",
      gram: 100,
      cal: 393,
      nutrient:'m55.png',
      image: 'm4.jpeg',
    ),
    EatItem(
      id: 5,
      name: "Duck",
      gram: 100,
      cal: 123,
      nutrient:'m11.png',
      image: 'm5.jpg',
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
