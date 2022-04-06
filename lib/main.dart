import 'package:flutter/material.dart';
import 'drawer_navbar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Belajar Flutter",
    home: NavigationDrawer(),
  ));
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('List Anime'),
            bottom: TabBar(
              tabs: [
                new Tab(icon: new Icon(Icons.movie), text: 'Summer 2021'),
                new Tab(icon: new Icon(Icons.movie), text: 'Fall 2021'),
                new Tab(icon: new Icon(Icons.movie), text: 'Winter 2022'),
              ],
            ),
          ),
          drawer: DrawerWidget(),
          body: TabBarView(
            children: <Widget>[
              summer(),
              fall(),
              winter(),
            ],
          ),
        ));
  }
}
