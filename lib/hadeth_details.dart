import 'package:flutter/material.dart';
import 'package:islami_application/models/hadethmodel.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/bg.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text("${model.title}"),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height *.6,
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
            margin: EdgeInsets.all(18),
            child: ListView.builder(itemBuilder: (context, index) {
              return Text(model.content[index],textAlign: TextAlign.center,);
            },itemCount: model.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
