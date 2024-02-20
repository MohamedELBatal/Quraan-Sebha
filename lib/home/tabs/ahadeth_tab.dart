import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../hadeth_details.dart';
import '../../models/hadethmodel.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadethFile();
    }

    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          const Divider(
            thickness: 3,
            color: Color(0xFFB7935F),
          ),
          Text(
            "Ahadeth",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Divider(
            thickness: 3,
            color: Color(0xFFB7935F),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Color(0xFFB7935F),
                endIndent: 50,
                indent: 50,
                thickness: 1,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments: ahadethData[index]);
                  },
                  child: Text(
                    ahadethData[index].title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                );
              },
              itemCount: ahadethData.length,
            ),
          ),
        ],
      ),
    );
  }

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((HadethFile) {
      List<String> ahadeth = HadethFile.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];

        List<String> hadethLines = hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        ahadethData.add(HadethModel(title: title, content: hadethContent));
      }
      setState(() {});
    });
  }
}
