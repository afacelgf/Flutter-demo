// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "home": MessageLookupByLibrary.simpleMessage("主页"),
        "language": MessageLookupByLibrary.simpleMessage("语言"),
        "login": MessageLookupByLibrary.simpleMessage("登录"),
        "logout": MessageLookupByLibrary.simpleMessage("注销"),
        "logoutTip": MessageLookupByLibrary.simpleMessage("您确定要退出登录吗？"),
        "noDescription": MessageLookupByLibrary.simpleMessage("暂无内容"),
        "password": MessageLookupByLibrary.simpleMessage("密码"),
        "passwordRequired": MessageLookupByLibrary.simpleMessage("请输入密码"),
        "theme": MessageLookupByLibrary.simpleMessage("主题"),
        "title": MessageLookupByLibrary.simpleMessage("首页"),
        "userName": MessageLookupByLibrary.simpleMessage("用户名"),
        "userNameOrPasswordWrong":
            MessageLookupByLibrary.simpleMessage("用户名或密码错误"),
        "userNameRequired": MessageLookupByLibrary.simpleMessage("请输入用户名"),
        "yes": MessageLookupByLibrary.simpleMessage("确定")
      };
}
