import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LanguageConfig extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Welcome!': 'Welcome',
          'Full Name': 'Full Name',
          'Title': 'Test Title',
          'Descrip': 'Hi All',
        },
        'si_LK': {
          'Welcome!': 'සාදරයෙන් පිළිගනිමු',
          'Full Name': 'සම්පූර්ණ නම',
          'Title': 'පරීක්ශණ මාතෘකාව',
          'Descrip': 'ආයුබෝවන්',
        },
      };
}
