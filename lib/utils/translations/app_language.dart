import 'package:get/get.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en_US': {
        'hello': 'Hello World',
        'change_language': 'Select Language',
        'english': 'English',
        'cambodia': 'Cambodia',
        'thailand': 'Thailand',
        'home_page_label': 'Home Page',
      },
      'km_KH': {
        'hello': 'សួរស្ដី',
        'change_language': 'ជ្រើសរើសភាសា',
        'english': 'អង់គ្លេស',
        'cambodia': 'ខ្មែរ',
        'thailand': 'ថៃ',
        'home_page_label': 'ទំព៍រដើម',
      },
      'th_TH': {
        'hello': 'สวัสดี',
        'change_language': 'เปลี่ยนภาษา',
        'english': 'ภาษาอังกฤษ',
        'cambodia': 'กัมพูชา',
        'thailand': 'ไทย',
        'home_page_label': 'หน้าแรก',
      }
    };
  }
}
