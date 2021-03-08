import 'package:flutter/material.dart';
import 'package:flutter_resources/networking/fetch_data.dart';
import 'package:flutter_resources/values.dart';

class FreeResources extends StatelessWidget {
  static final String routeName = 'freeResources';
  @override
  Widget build(BuildContext context) {
    // List<Map> _data = DataClass.categories;
    return Scaffold(
      appBar: AppBar(
        title: Text('Free Resources'),
      ),
      body: FutureBuilder(
          future: FetchData.getHttp(Values.categoryDataURL),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              // _data = snapshot.data['data'];
              print(snapshot.data['data']);
              return ListView.builder(
                itemCount: snapshot.data['data'].length,
                itemBuilder: (BuildContext context, int index) => ListTile(
                  title: Text(snapshot.data['data'][index]['name']),
                  leading: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.network(snapshot.data['data'][index]['icon']),
                  ),
                  onTap: () {},
                  subtitle: Text(snapshot.data['data'][index]['description']),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
