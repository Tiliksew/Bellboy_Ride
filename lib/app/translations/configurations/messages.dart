import 'package:bellboy_ride/app/translations/languages/am.dart';
import 'package:bellboy_ride/app/translations/languages/en.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {'en_US': En().messages, 'am_ET': Am().messages};
}
