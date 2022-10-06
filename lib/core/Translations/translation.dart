import 'package:get/get.dart';

class MyTransaltion extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'chose lang': 'اختر الغه',
          'arabic': 'العربيه',
          'English': 'الانجليزيه',
        },
        'en': {
          'chose lang': 'chose lang',
          'arabic': 'arabic',
        },
      };
}
