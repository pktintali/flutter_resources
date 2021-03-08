import 'package:flutter/material.dart';
import 'package:flutter_resources/data/categories.dart';

class FreeResources extends StatelessWidget {
  static final String routeName = 'freeResources';
  @override
  Widget build(BuildContext context) {
    final List<Map> _data = DataClass.categories;
    return Scaffold(
      appBar: AppBar(
        title: Text('Free Resources'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(_data[index]['name']),
          leading: SizedBox(
            height: 30,
            width: 30,
            child: Image.network(_data[index]['icon']),
          ),
          onTap: () {},
          subtitle: Text(_data[index]['description']),
        ),
      ),
    );
  }
}
