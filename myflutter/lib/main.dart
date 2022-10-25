import 'package:flutter/material.dart';
import 'package:myflut/Religious.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Addis Location';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 3.0,
        mainAxisSpacing: 3.0,
        children: <Widget>[
          Image.asset("assets/images/sheraton.jpg"),
          Image.asset("assets/images/airline.png"),
          Image.asset("assets/images/kuriftu.jpg"),
          Image.asset("assets/images/kuriftu1.png"),
          Image.asset("assets/images/mekaneyesus.jpg"),
          Image.asset("assets/images/health.jpg"),
          Image.asset("assets/images/negedbank.jpg"),
          Image.asset("assets/images/zemen.png"),
          Image.asset("assets/images/totot1.jpg"),
          Image.asset("assets/images/inno.png"),
          Image.asset("assets/images/akko.png"),
          Image.asset("assets/images/capital.jpg"),
          Image.asset("assets/images/dagi.jpg"),
          Image.asset("assets/images/awash.png"),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // ignore: prefer_const_constructors
      floatingActionButton: FloatingActionButton(
          // isExtended: true,
          // ignore: prefer_const_constructors
          child: Icon(Icons.search),
          backgroundColor: Colors.orange,
          onPressed: null),
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
                        builder: (BuildContext context) =>
                            const MyHomePage(title: "Favorite")
                        // title: 'Favorites',

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
