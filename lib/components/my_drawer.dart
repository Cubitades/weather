import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //header
          DrawerHeader(child: Image.asset('lib/assets/images/icon.png')),
          //home
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(Icons.home),
              title: const Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home_page');
              },
            ),
          ),
          //add device
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(Icons.add),
              title: const Text("A D D  S E N S O R"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/add_sensor');
              },
            ),
          ),
          //information
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(Icons.info),
              title: const Text("I N F O R M A T I O N"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/information');
              },
            ),
          ),
          //settings
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
          )
        ],
      ),
    );
  }
}
