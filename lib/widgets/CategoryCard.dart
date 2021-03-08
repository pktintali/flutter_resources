import 'package:flutter/material.dart';
import 'package:flutter_resources/pages/FreeResources.dart';
import 'package:flutter_resources/pages/PaidResources.dart';
import 'package:flutter_resources/values.dart';

class CategoryCard extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color itemsColor;
  final String text;
  final String imageLink;
  final bool isFree;
  CategoryCard(
      {this.color1,
      this.isFree = false,
      this.color2,
      this.itemsColor,
      this.imageLink,
      this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              )),
          onPressed: () {
            Navigator.pushNamed(
              context,
              isFree ? FreeResources.routeName : PaidResources.routeName,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          text,
                          style: Values.categoryCardTextstyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: itemsColor,
                          elevation: 0.5,
                          shadowColor: Color(0xFFEBECF1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 6,
                            ),
                            child: Text(
                              '20 Items',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Image.network(
                    imageLink,
                    height: 130,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
