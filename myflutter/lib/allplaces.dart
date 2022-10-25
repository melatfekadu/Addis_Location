import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  Card buildCard() {
    var heading = 'lutheran church';
    var subheading = 'lutheran church';
    //var cardImage = AssetImage('assets/images/churches_feature.png');

    return Card(
      elevation: 4.0,
      child: Column(
        children: [
          ListTile(
            title: Text(heading),
            subtitle: Text(subheading),
            trailing: Icon(Icons.favorite_outline),
          ),
          Container(
            height: 200.0,
            child: Ink.image(
              image: AssetImage('assets/images/mekaneyesus.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Settings page"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                buildCard(),
                buildCard(),
                buildCard(),
                buildCard(),
                buildCard(),
              ],
            ),
          ),
        ));
  }
}
