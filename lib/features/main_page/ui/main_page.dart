// import 'package:flutter/material.dart';
// import 'package:flutter_contact_app/features/add_new_contact_page/ui/add_new_contact_page.dart';
// import 'package:flutter_contact_app/features/home_page/ui/home_page.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   int _selectedIndex = 0;
//   static final List<Widget> _widgetOptions = [
//     HomePage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
//       bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person_add_alt_sharp),
//                 label: "Add New Contact"),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.blue,
//           onTap: _onItemTapped),
//     );
//   }
// }
