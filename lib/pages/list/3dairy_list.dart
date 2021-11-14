import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eat_keto/pages/eat_details.dart';
import 'package:eat_keto/models/eat_item.dart';
import 'package:google_fonts/google_fonts.dart';


class DairyListPage extends StatefulWidget {
  const DairyListPage({Key? key}) : super(key: key);

  @override
  _DairyListPageState createState() => _DairyListPageState();
}

class _DairyListPageState extends State<DairyListPage> {
  var items = [
    EatItem(
      id: 1,
      name: "Parmesan",
      gram: 100,
      cal: 420,
      nutrient:'Da11.png',
      image: 'Da1.jpg',
    ),
    EatItem(
      id: 2,
      name: "Mozzarella",
      gram: 100,
      cal: 280,
      nutrient:'Da22.png',
      image: 'Da2.jpg',
    ),
    EatItem(
      id: 3,
      name: "Greek yogurt",
      gram: 100,
      cal: 59,
      nutrient:'Da33.png',
      image: 'Da3.jpg',
    ),
    EatItem(
      id: 4,
      name: "Ricotta",
      gram: 100,
      cal: 174,
      nutrient:'Da55',
      image: 'Da4.jpg',
    ),
    EatItem(
      id: 5,
      name: "Butter",
      gram: 100,
      cal: 717,
      nutrient:'Da44.png',
      image: 'Da5.jpg',
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
                            '${item.gram.toString()} บาท',
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
