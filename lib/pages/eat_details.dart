import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eat_keto/models/plat.dart';
import 'package:eat_keto/models/eat_item.dart';
import 'package:google_fonts/google_fonts.dart';

class EatDetailsPage extends StatelessWidget {
  static const routeName = '/eat_details_page';

  const EatDetailsPage();

  @override
  Widget build(BuildContext context) {
    final eatItem = ModalRoute.of(context)!.settings.arguments as EatItem;

    return Scaffold(
      appBar: AppBar(
        title: Text(eatItem.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3 / 2,
              child: PlatformAwareAssetImage(
                assetPath: 'assets/images/${eatItem.image}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'ชื่อเมนู: ${eatItem.name}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  Text(
                    'ปริมาณ: ${eatItem.gram.toString()} กรัม',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  Text(
                    'พลังงานที่ได้รับ: ${eatItem.cal.toString()} กิโลแคลอรี่',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  Text(
                    'คุณค่าทางโภชนาการ',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
              PlatformAwareAssetImage(
                assetPath: 'assets/images/${eatItem.nutrient}',
              ),
                ],
              ),
            ),
            if (false)
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'ชื่อเมนู: ${eatItem.name}',
                        style: GoogleFonts.prompt(fontSize: 20.0),
                      ),
                      Text(
                        'ราคา: ${eatItem.gram.toString()} บาท',
                        style: GoogleFonts.prompt(fontSize: 20.0),
                      ),
                      Text(
                        'พลังงานที่ได้รับ: ${eatItem.cal.toString()} กิโลแคลอรี่',
                        style: GoogleFonts.prompt(fontSize: 20.0),
                      ),
                      Text(
                        'คุณค่าทางโภชนาการ: ต่อ 100 กรัม ${eatItem.nutrient.toString()} ',
                        style: GoogleFonts.prompt(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}