import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eat_keto/pages/eat_details.dart';
import 'package:eat_keto/models/eat_item.dart';
import 'package:google_fonts/google_fonts.dart';


class veListPage extends StatefulWidget {
  const veListPage({Key? key}) : super(key: key);

  @override
  _veListPageState createState() => _veListPageState();
}

class _veListPageState extends State<veListPage> {
  var items = [
    EatItem(
      id: 1,
      name: "Broccoli",
      gram: 100,
      cal: 34,
      nutrient: 've11.png',
      image: 've1.jpg',
    ),
    EatItem(
      id: 2,
      name: "Cauliflower",
      gram: 100,
      cal: 24.9,
      nutrient:'ve22.png',
      image: 've2.jpg',
    ),
    EatItem(
      id: 3,
      name: "Kale",
      gram: 100,
      cal: 49.5,
      nutrient:'ve33.png',
      image: 've3.jpeg',
    ),
    EatItem(
      id: 4,
      name: "Bok choy",
      gram: 100,
      cal: 13,
      nutrient:'ve44.png',
      image: 've4.jpg',
    ),
    EatItem(
      id: 5,
      name: "Arugula",
      gram: 100,
      cal: 25.1,
      nutrient:'ve55.png',
      image: 've5.jpg',
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
