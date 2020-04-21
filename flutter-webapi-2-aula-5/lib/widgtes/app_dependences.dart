import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/http/webclients/transaction_webclient.dart';
import 'package:flutter/cupertino.dart';

class Appdependencies extends InheritedWidget {
  final ContactDao contactDao;
  final TransactionWebClient transactionWebClient;

  Appdependencies(
      {@required this.contactDao,
      @required Widget child,
      @required this.transactionWebClient})
      : super(child: child);

  @override
  bool updateShouldNotify(Appdependencies oldWidget) {
    return contactDao != oldWidget.contactDao ||
        transactionWebClient != oldWidget.transactionWebClient;
  }

  static Appdependencies of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Appdependencies>();
}
