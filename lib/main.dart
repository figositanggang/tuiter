// Packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:bottom_bar/bottom_bar.dart';

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
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      darkTheme: myDarkMode,
      themeMode: ThemeMode.system,
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
  List<BottomBarItem> _bottomBarItems = [
    BottomBarItem(
      icon: Icon(Icons.home),
      activeColor: Colors.blue,
    ),
    BottomBarItem(
      icon: Icon(Icons.search),
      activeColor: Colors.blue,
    ),
    BottomBarItem(
      icon: Icon(Icons.notifications),
      activeColor: Colors.blue,
    ),
    BottomBarItem(
      icon: Icon(Icons.mail),
      activeColor: Colors.blue,
    ),
  ];

  List<Widget> _body = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    MailScreen(),
  ];

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final bottomNavProv = Provider.of<BottomNavProv>(context);

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _body,
        onPageChanged: (index) {
          bottomNavProv.setIndex = index;
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: bottomNavProv.getIndex,
        items: _bottomBarItems,
        onTap: (index) {
          bottomNavProv.setIndex = index;
          _pageController.jumpToPage(index);
        },
        // duration: Duration(microseconds: 100),
      ),
    );
  }
}
