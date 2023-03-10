import 'package:booktickets/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _widgetOptions[_selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => _onItemTapped(value),
            currentIndex: _selectedIndex,
            elevation: 10,
            showSelectedLabels: false,
            type: BottomNavigationBarType.shifting,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: const Color(0xFF5265480),
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                  icon: (Icon(
                    FluentSystemIcons.ic_fluent_home_regular,
                  )),
                  activeIcon: Icon(
                    FluentSystemIcons.ic_fluent_home_filled,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: (Icon(FluentSystemIcons.ic_fluent_search_regular)),
                  activeIcon: (Icon(FluentSystemIcons.ic_fluent_search_filled)),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: (Icon(FluentSystemIcons.ic_fluent_ticket_regular)),
                  activeIcon: (Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
                  label: 'Ticket'),
              BottomNavigationBarItem(
                  icon: (Icon(FluentSystemIcons.ic_fluent_person_regular)),
                  activeIcon: (Icon(FluentSystemIcons.ic_fluent_person_filled)),
                  label: 'Account')
            ]));
  }
}
