import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/home/tabs/ahadeth_tab.dart';
import 'package:islami_application/home/tabs/quran_tab.dart';
import 'package:islami_application/home/tabs/radio_tab.dart';
import 'package:islami_application/home/tabs/sebha_tab.dart';
import 'package:islami_application/home/tabs/settings_tab.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "Home";

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "إسلامى",
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              unselectedItemColor: Colors.black,
              iconSize: 35,
              elevation: 0,
              backgroundColor: Color(0xFFB7935F),
              type: BottomNavigationBarType.fixed,
              currentIndex: index,
              selectedItemColor: Colors.white,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_quran.png"),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_hadeth.png"),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_sebha.png"),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_radio.png"),
                    ),
                    label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
              ]),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
