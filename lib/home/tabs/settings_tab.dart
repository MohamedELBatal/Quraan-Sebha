import 'package:flutter/material.dart';
import 'package:islami_application/bottom_sheet/them_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../bottom_sheet/language_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,style:Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context,
                isScrollControlled: true,
                builder: (context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * .70,
                  child: const LanguageBottomSheet(),
                );
              },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFB7935F)),
                borderRadius: BorderRadius.circular(25),),
              child: Text(AppLocalizations.of(context)!.arabic,style:Theme.of(context).textTheme.bodyMedium,),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.03,
          ),
          Text(AppLocalizations.of(context)!.theme,style:Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context,
                isScrollControlled: true,
                builder: (context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * .70,
                    child: ThemeBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFB7935F)),
                borderRadius: BorderRadius.circular(25),),
              child: Text(AppLocalizations.of(context)!.light,style:Theme.of(context).textTheme.bodyMedium,),
            ),
          ),
        ],
      ),
    );
  }
}
