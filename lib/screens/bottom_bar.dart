import 'package:bookticket/screens/Search_screen.dart';
import 'package:bookticket/screens/home_screen.dart';
import 'package:bookticket/screens/profile_screen.dart';
import 'package:bookticket/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=3;
  static final List<Widget>_WidgetOptions= <Widget>[
    const HomeScreen(ticket: {},),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  
  void _onItemTapped(int index){
     //_selectedIndex = index;    //هذا نحتاجه بس اذا نبي نعرف ان الزر شغال
     //print("the tapped index is "+'${_selectedIndex}');
setState(() {
  _selectedIndex = index;
});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title:const Center(child:Text('My Ticket')),),
      body: Center(
        child: _WidgetOptions [_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.shifting, //MOVING bottom bar
        unselectedItemColor: const Color(0xFF526480),
        items: const[
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "home",),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "search",),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "airplane_ticket",),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "person",)
        ],
      ),
    );
  }

}
