import 'package:flutter/material.dart';
import 'package:githubdemo/common/Global.dart';
import 'package:githubdemo/common/ProfileChangeNotifier.dart';
import 'package:githubdemo/generated/l10n.dart';
import 'package:provider/provider.dart';

class ThemeChangeRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S().theme),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: ListView( //显示主题色块
        children: Global.themes.map<Widget>((e) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: Container(
                color: e,
                height: 40,
              ),
            ),
            onTap: () {
              print("click them");
              //主题更新后，MaterialApp会重新build
              Provider.of<ThemeModel>(context, listen: false).theme = e;
            },
          );
        }).toList(),
      ),
    );
  }
}
