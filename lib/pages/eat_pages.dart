import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:eat_keto/pages/list/3dairy_list.dart';
import 'package:eat_keto/pages/list/4fruits_list.dart';
import 'package:eat_keto/pages/list/1veget_list.dart';
import 'package:eat_keto/pages/list/2seafood_list.dart';
import 'package:eat_keto/pages/list/6nut_list.dart';
import 'package:eat_keto/pages/list/5meats_list.dart';
import '../../models/eat_item.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class EatPage extends StatefulWidget {
  static const routeName = '/Eat';

  const EatPage({Key? key}) : super(key: key);

  @override
  _EatPageState createState() => _EatPageState();
}

class _EatPageState extends State<EatPage> {
  var _selectedBottomNavIndex = 0;
  var _selectedBottomNavIndex1 = 1;
  var _selectedBottomNavIndex2 = 2;
  var _selectedBottomNavIndex3 = 3;
  var _selectedBottomNavIndex4 = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.sprout),
              label: "🥦 Vegetables 🥦",
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.fish),
              label: '🦞️ Seafood 🦞️',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.cheese),
              label: '🍳 Dairy 🍳',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.fruitCherries),
              label: '🥑 Fruits 🥑',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.foodSteak),
              label: '🥩 Meats 🥩',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.cookie),
              label: '🥜 Nuts & Seeds 🥜',
              backgroundColor: Colors.purple,
            ),
          ],
          currentIndex: _selectedBottomNavIndex,
          onTap: (index) {
            setState(() {
              _selectedBottomNavIndex = index;
            });
            onTap:
            (index) {
              setState(() {
                _selectedBottomNavIndex1 = index;
              });
              onTap:
                  (index) {
                setState(() {
                  _selectedBottomNavIndex2 = index;
                });
              };
            };
          }),
      body: Container(
        child: currentItem(),
      ),
    );
  }

  Widget currentItem() {
    switch (_selectedBottomNavIndex) {
      case 0:
        return veListPage();
      case 1:
        return seaListPage();
      case 2:
        return DairyListPage();
      case 3:
        return fruitsListPage();
      case 4:
        return meatsListPage();
      default:
    return nutListPage();

    }
  }
}
