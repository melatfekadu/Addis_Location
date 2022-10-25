import 'package:flutter/material.dart';
import 'package:myflut/details.dart';
import 'package:myflut/main.dart';

class SettingsPage extends StatelessWidget {
  Card buildCard_3() {
    var heading = 'Ethiopian Evangelical Church Mekane Yesus - Wikiwand';
    var subheading = '12.2 KM';
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
              image: AssetImage('assets/images/church1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Card buildCard_2() {
    var heading = 'Carolina Undina Evangelical';
    var subheading = '32.3 KM';
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
              image: AssetImage('assets/images/church2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Card buildCard_1() {
    var heading = 'Medianalem Church';
    var subheading = '10.2 KM';
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
              image: AssetImage('assets/images/church3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  void main() {
    runApp(const MaterialApp(
      title: 'Navigation Basics',
      home: SettingsPage(),
    ));
  }

  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Card buildCard() {
      var heading = 'lutheran church';
      var subheading = '2 KM ';
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
                image: AssetImage('assets/images/church4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const details(),
                  ),
                );
              },
              icon: Icon(Icons.more),
              label: Text("more"),
            )
          ],
        ),
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Religious Places"),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              buildCard_3(),
              buildCard_2(),
              buildCard_1(),
              buildCard(),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Scrollbar(
          isAlwaysShown: true,
          showTrackOnHover: true,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountEmail: Text(
                  'Land of Diverse Beauty',
                  style: TextStyle(fontSize: 10.0, color: Colors.white),
                ),
                accountName: Text(
                  'Visit Ethiopia',
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/download.jpg"),
                        fit: BoxFit.cover)),

                // const Icon(
                //    Icons.star,
                //    color: Colors.white),
                // ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.menu,
                  color: Colors.orange,
                ),
                title: const Text(
                  'All Places',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'All Places',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.favorite,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Favorites',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Favorites',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.list,
                  color: Colors.orange,
                ),
                title: const Text(
                  'News & Events',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'News & Events',
                      ),
                    ),
                  );
                },
              ),
              Divider(color: Colors.grey),
              ListTile(
                leading: const Icon(
                  Icons.star_half_rounded,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Featured Places',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Featured Places',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.tour,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Tourist Destination',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Tourist Destination',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.food_bank,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Food & Drink',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Food & Drink',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.hotel,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Hotels',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Hotels',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.movie,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Entertainment',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new MyHomePage(
                                title: 'Entertainment',
                              )));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.sports,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Sport',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Sport',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.shop,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Shopping',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Shopping',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.emoji_transportation,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Trasportation',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Trasportation',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Religious',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const SettingsPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Offices & Public Service',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Offices & Public Service',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.atm,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Banks & ATMs',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Banks & ATMs',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.tour,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Beauty Salon',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Beauty Salon',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.local_hospital,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Health Centers',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Health Centers',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.home_repair_service,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Factories',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Factories',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.tour,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Tour Operators',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Tour Operators',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.car_rental,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Car Rental',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Car Rental',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.airplane_ticket,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Ticket Offices ',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Ticket Offices',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.local_airport,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Airports',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Airport',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.school_outlined,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Educational Institutions',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Educational Institutions',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.camera_enhance_outlined,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Airports',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Airport',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.car_repair_rounded,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Car repair',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Car Repair',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.design_services_sharp,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Designers',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Designers',
                      ),
                    ),
                  );
                },
              ),
              Divider(color: Colors.grey),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.orange,
                ),
                title: const Text(
                  'Setting',
                  style: TextStyle(fontSize: 14.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MyHomePage(
                        title: 'Setting',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
