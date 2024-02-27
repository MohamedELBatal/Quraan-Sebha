import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = "SebhaTab";

  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int num = 0;
  int index = 0;
  List<String> Azkar = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر "
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 50,
              ),
              child: Image.asset(
                "assets/images/sebha1.png",
                width: 73,
                height: 105,
              ),
            ),
            InkWell(
              onTap: () {
                num++;
                setState(() {
                  if (num >= 34) {
                    num = 0;
                    index++;
                  }
                  if (index == Azkar.length) {
                    index = 0;
                  }
                });
              },
              child: Image.asset("assets/images/sebha2.png"),
            ),
            const SizedBox(
              height: 39,
            ),
            Text(
              "عدد التسبيحات",
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xFFB7935F),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Text(
                "$num",
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                num++;
                setState(() {
                  if (num >= 34) {
                    num = 0;
                    index++;
                  }
                  if (index == Azkar.length) {
                    index = 0;
                  }
                });
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xffB7935F),
                ),
              ),
              child: Text(Azkar[index],
                  style: GoogleFonts.elMessiri(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400
                  ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
