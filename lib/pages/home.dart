import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:eat_keto/pages/eat_pages.dart';
import 'package:eat_keto/pages/profile.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;
  EatPage? _currentPage = EatPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: _buildAppBarTitle(),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        child: Image.asset('assets/images/pro.png'),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Text(
                      'Phattaranit',textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Text(
                    'For good health \n  must choose to eat good things',textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            ListTile(
              title: _buildDrawerItem(
                  Icons.fastfood,
                  'Keto list', 0
              ),
              onTap: (){
                _showSubPage(context, 0);
              },
            ),
            ListTile(
              title: _buildDrawerItem(
                  Icons.person,
                  'Profile', 1
              ),
              onTap: () => _showSubPage(context, 1),
            ),
          ],
        ),
      ),
      body: _buildSubPage(),
    );
  }

  Text _buildAppBarTitle() {
    switch(_subPageIndex) {
      case 0 : return Text('Keto Diet Foods');
      default : return Text('Profile');
    }
  }

  dynamic _buildSubPage() {
    switch(_subPageIndex) {
      case 0 :
        return _currentPage;
      default :
        return ProfilePage();
    }
  }

  void _showSubPage(BuildContext context, int page) {
    setState(() {
      _subPageIndex = page;
      _currentPage = page==0 ? EatPage() : null;
    });
    Navigator.of(context).pop();
    //Navigator.of(context).pushNamed(LoginPage.routeName);
  }

  Row _buildDrawerItem(IconData icon, String title, int onFocus) {
    return Row(
      children: [
        Icon(icon, color: _subPageIndex==onFocus ? Colors.blue : null),
        SizedBox(width: 8.0),
        Text(
            title,
            style: _subPageIndex==onFocus
                ? Theme.of(context).textTheme.headline5
                : Theme.of(context).textTheme.bodyText2),
      ],
    );
  }
}
