// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
// import 'package:flutter/material.dart';
//
// enum _SelectedTab { home, favourite, search, profile }
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> with TickerProviderStateMixin {
//   var _selectedTab = _SelectedTab.home;
//
//   void _handleIndexChanged(int i) {
//     setState(() {
//       _selectedTab = _SelectedTab.values[i];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       body: Center(
//         child: Text(
//           'Selected Tab: $_selectedTab',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//       bottomNavigationBar: SafeArea(
//         child: Container(
//           margin: EdgeInsets.symmetric(horizontal: 8.0), // Add margin to prevent overflow
//           child: DotNavigationBar(
//             currentIndex: _SelectedTab.values.indexOf(_selectedTab),
//             dotIndicatorColor: Colors.white,
//             unselectedItemColor: Colors.grey[300],
//             onTap: _handleIndexChanged,
//             items: [
//               DotNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 selectedColor: Color(0xff73544C),
//               ),
//               DotNavigationBarItem(
//                 icon: Icon(Icons.favorite),
//                 selectedColor: Color(0xff73544C),
//               ),
//               DotNavigationBarItem(
//                 icon: Icon(Icons.search),
//                 selectedColor: Color(0xff73544C),
//               ),
//               DotNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 selectedColor: Color(0xff73544C),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(home: BottomNavBar()));
// }
