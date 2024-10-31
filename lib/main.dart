import 'package:flutter/material.dart';
import 'package:githubdemo/common/Global.dart';
import 'package:githubdemo/common/ProfileChangeNotifier.dart';
import 'package:githubdemo/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:githubdemo/routes/HomeRoute.dart';
import 'package:githubdemo/routes/LanguageRoute.dart';
import 'package:githubdemo/routes/LoginRoute.dart';
import 'package:githubdemo/routes/ThemeChangeRoute.dart';
import 'package:provider/provider.dart';

void main() => Global.init().then((e) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeModel()),
        ChangeNotifierProvider(create: (_) => UserModel()),
        ChangeNotifierProvider(create: (_) => LocaleModel()),
      ],
      child: Consumer2<ThemeModel, LocaleModel>(
        builder: (BuildContext context, themeModel, localeModel, child) {
          // print(themeModel.theme);
          return MaterialApp(
            theme: ThemeData(
              // Material 3 主题颜色设置
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 9, 189, 147),
                // 主色调
                primary: themeModel.theme,
                // 主要颜色
                secondary: themeModel.theme,
                // 次要颜色
                surface: const Color.fromARGB(255, 246, 246, 246),
                // 表面颜色
                // background: Colors.amber[50],
                // 背景颜色
                // error: Colors.red,
                // 错误颜色
                // onPrimary: Colors.black,
                // // 主要颜色的文本颜色
                onSecondary: Colors.black,
                // // 次要颜色的文本颜色
                // onSurface: Colors.black,
                // // 表面颜色的文本颜色
                // // onBackground: Colors.black,
                // // 背景颜色的文本颜色
                // onError: Colors.white,
                // // 错误颜色的文本颜色
                // brightness: Brightness.light, // 主题亮度
              ),
            ),
        
            onGenerateTitle: (context) {
              return S().title;
            },
            home: HomeRoute(),
            locale: localeModel?.getLocale(),
            //我们只支持美国英语和中文简体
            supportedLocales: const [
              Locale('en', 'US'), // 美国英语
              Locale('zh', 'CN'), // 中文简体
              //其他Locales
            ],
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            //应用程序可以无条件接受用户选择的任何语言：
            localeResolutionCallback: (_locale, supportedLocales) {
              if (localeModel.getLocale() != null) {
                //如果已经选定语言，则不跟随系统
                return localeModel.getLocale();
              } else {
                //跟随系统
                Locale locale;
                if (supportedLocales.contains(_locale)) {
                  locale = _locale!;
                } else {
                  //如果系统语言不是中文简体或美国英语，则默认使用美国英语
                  locale = Locale('en', 'US');
                }
                return locale;
              }
            },
            // 注册路由表
            routes: <String, WidgetBuilder>{
              "login": (context) => LoginRoute(),
              "themes": (context) => ThemeChangeRoute(),
              "language": (context) => LanguageRoute(),
            },
          );
        },
      ),
    );
  }
}
