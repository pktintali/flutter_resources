import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Icon(
                    Icons.flag_outlined,
                    size: 150,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height:50),
                Center(
                  child: Text('Flutter '),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
