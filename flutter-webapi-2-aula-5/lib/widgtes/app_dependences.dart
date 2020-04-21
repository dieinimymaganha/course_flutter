import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:flutter/cupertino.dart';

class Appdependencies extends InheritedWidget {
  final ContactDao contactDao;

  Appdependencies({
    @required this.contactDao,
    @required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(Appdependencies oldWidget) {
    return contactDao != oldWidget.contactDao;
  }

  static Appdependencies of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Appdependencies>();
}
