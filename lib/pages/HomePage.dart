import 'package:flutter/material.dart';
import 'package:flutter_resources/pages/DrawerPage.dart';
import 'package:flutter_resources/values.dart';
import 'package:flutter_resources/widgets/CategoryCard.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerPage(),
      backgroundColor: Values.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.network(Values.welcomeImageURL),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu_sharp,
                        color: Colors.deepOrange,
                      ),
                      onPressed: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Flutter Resources',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.white,
                        blurRadius: 1.5,
                      )
                    ]),
              ),
            ),
            CategoryCard(
              color1: Color(0xFF4CCF00),
              color2: Color(0xFF4CCA79),
              itemsColor: Color(0xFF4Cf979),
              imageLink: Values.freeImage,
              text: 'Free Resources',
              isFree: true,
            ),
            CategoryCard(
              color1: Color(0xFF4CCAFC),
              color2: Color(0xFF05B1F4),
              itemsColor: Color(0xFF6CCAFC),
              imageLink: Values.paidImage,
              text: 'Paid Resources',
            ),
            SizedBox(height: 20),
            OutlinedButton(
              child: Text('Contribute ❤️'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
