// Packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import './style.dart';

// Providers
import 'package:twitter_clone/provider/home_page_provider/bottom_nav_provider.dart';

// Screens
import 'package:twitter_clone/screen/home_screen.dart';
import 'package:twitter_clone/screen/search_screen.dart';
import 'package:twitter_clone/screen/notification_screen.dart';
import 'package:twitter_clone/screen/mail_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProv()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tuiter',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      // darkTheme: myDarkMode,
      // themeMode: ThemeMode.light,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> _bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
      tooltip: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "Search",
      tooltip: "Search",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: "Notifications",
      tooltip: "Notifications",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.mail),
      label: "Mail",
      tooltip: "Mail",
    ),
  ];

  List<Widget> _body = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    MailScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavProv = Provider.of<BottomNavProv>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 38, 38),
      body: _body[bottomNavProv.getIndex],
      bottomNavigationBar: Container(
        color: Colors.yellow,
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: BottomNavigationBar(
          currentIndex: bottomNavProv.getIndex,
          onTap: (props) => bottomNavProv.setIndex = props,
          items: _bottomNavItems,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.red,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          // backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
