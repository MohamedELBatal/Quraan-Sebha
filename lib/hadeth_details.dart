import 'package:flutter/material.dart';
import 'package:islami_application/models/hadethmodel.dart';
import 'package:islami_application/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    var model=ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            prov.getBackgroundPath(),
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text("${model.title}"),
        ),
        body: Center(
          child: Card(
            elevation: 12,
            child: Container(
              height: MediaQuery.of(context).size.height *.6,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.transparent),
              margin: const EdgeInsets.all(18),
              child: ListView.builder(itemBuilder: (context, index) {
                return Text(model.content[index],textAlign: TextAlign.center,);
              },itemCount: model.content.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
