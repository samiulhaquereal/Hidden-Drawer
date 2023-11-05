import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hiddendrawer/page/home.dart';
import 'package:hiddendrawer/page/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<ScreenHiddenDrawer> page = [];
  
  @override
  void initState(){
    super.initState();
    
    page = [
      ScreenHiddenDrawer(ItemHiddenMenu(
          name: 'Home Page',
          baseStyle: TextStyle(fontSize: 18),
          selectedStyle: TextStyle(color:Colors.white,fontSize: 18),
        colorLineSelected: Colors.deepPurple
      ), HomePage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
          name: 'Setting page',
          baseStyle: TextStyle(fontSize: 18),
          selectedStyle: TextStyle(color:Colors.white,fontSize: 18),
          colorLineSelected: Colors.deepPurple
      ), SettingPage()),
    ];
  }
  
  
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      //tittleAppBar: Text('Hidden Drawer'),
        isTitleCentered: true,
        screens: page,
        backgroundColorMenu: Colors.deepPurple.shade300,
      initPositionSelected: 0,
      slidePercent: 50,
    );
  }
}


