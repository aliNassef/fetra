// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `البريد الالكترونى`
  String get email {
    return Intl.message(
      'البريد الالكترونى',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `كلمة السر`
  String get pass {
    return Intl.message(
      'كلمة السر',
      name: 'pass',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول`
  String get login {
    return Intl.message(
      'تسجيل الدخول',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `انشاء حساب`
  String get createaccount {
    return Intl.message(
      'انشاء حساب',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'google sign' key

  /// `إبدأ`
  String get start {
    return Intl.message(
      'إبدأ',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `احصل على نظام غذائي للصيام المتقطع`
  String get onBoardingText {
    return Intl.message(
      'احصل على نظام غذائي للصيام المتقطع',
      name: 'onBoardingText',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور؟`
  String get forgetpass {
    return Intl.message(
      'نسيت كلمة المرور؟',
      name: 'forgetpass',
      desc: '',
      args: [],
    );
  }

  /// `سجل`
  String get sign {
    return Intl.message(
      'سجل',
      name: 'sign',
      desc: '',
      args: [],
    );
  }

  /// `ليس لديك حساب؟`
  String get subButton1 {
    return Intl.message(
      'ليس لديك حساب؟',
      name: 'subButton1',
      desc: '',
      args: [],
    );
  }

  /// `انشئ حساب`
  String get subButton11 {
    return Intl.message(
      'انشئ حساب',
      name: 'subButton11',
      desc: '',
      args: [],
    );
  }

  /// `الاسم`
  String get name {
    return Intl.message(
      'الاسم',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `إعادة كلمة السر`
  String get passCon {
    return Intl.message(
      'إعادة كلمة السر',
      name: 'passCon',
      desc: '',
      args: [],
    );
  }

  /// `لديك حساب بالفعل؟`
  String get haveAccount {
    return Intl.message(
      'لديك حساب بالفعل؟',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `سجل دخول`
  String get signNow {
    return Intl.message(
      'سجل دخول',
      name: 'signNow',
      desc: '',
      args: [],
    );
  }

  /// `النوع`
  String get type {
    return Intl.message(
      'النوع',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `العمر`
  String get age {
    return Intl.message(
      'العمر',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف`
  String get phone {
    return Intl.message(
      'رقم الهاتف',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك اختر الجنس`
  String get please_select_gender {
    return Intl.message(
      'من فضلك اختر الجنس',
      name: 'please_select_gender',
      desc: '',
      args: [],
    );
  }

  /// `ذكر`
  String get male {
    return Intl.message(
      'ذكر',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `أنثى`
  String get female {
    return Intl.message(
      'أنثى',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `البحث`
  String get search {
    return Intl.message(
      'البحث',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `مقالات`
  String get articles {
    return Intl.message(
      'مقالات',
      name: 'articles',
      desc: '',
      args: [],
    );
  }

  /// `حساب الدهون`
  String get calc_fats {
    return Intl.message(
      'حساب الدهون',
      name: 'calc_fats',
      desc: '',
      args: [],
    );
  }

  /// `مدربين`
  String get coaches {
    return Intl.message(
      'مدربين',
      name: 'coaches',
      desc: '',
      args: [],
    );
  }

  /// `مقاطع الفيديو`
  String get videos {
    return Intl.message(
      'مقاطع الفيديو',
      name: 'videos',
      desc: '',
      args: [],
    );
  }

  /// `الوصفات`
  String get recipes {
    return Intl.message(
      'الوصفات',
      name: 'recipes',
      desc: '',
      args: [],
    );
  }

  /// `حساب دهون مدفوع`
  String get calc_fats_paid {
    return Intl.message(
      'حساب دهون مدفوع',
      name: 'calc_fats_paid',
      desc: '',
      args: [],
    );
  }

  /// `وصفات لأطباق السلطة:`
  String get recipes_title {
    return Intl.message(
      'وصفات لأطباق السلطة:',
      name: 'recipes_title',
      desc: '',
      args: [],
    );
  }

  /// `قياس الدهون`
  String get fat_calc {
    return Intl.message(
      'قياس الدهون',
      name: 'fat_calc',
      desc: '',
      args: [],
    );
  }

  /// `الوسط`
  String get middle {
    return Intl.message(
      'الوسط',
      name: 'middle',
      desc: '',
      args: [],
    );
  }

  /// `الرقبة`
  String get neck {
    return Intl.message(
      'الرقبة',
      name: 'neck',
      desc: '',
      args: [],
    );
  }

  /// `الوزن`
  String get weight {
    return Intl.message(
      'الوزن',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `الطول`
  String get tall {
    return Intl.message(
      'الطول',
      name: 'tall',
      desc: '',
      args: [],
    );
  }

  /// `سم`
  String get cm {
    return Intl.message(
      'سم',
      name: 'cm',
      desc: '',
      args: [],
    );
  }

  /// `كجم`
  String get kilo {
    return Intl.message(
      'كجم',
      name: 'kilo',
      desc: '',
      args: [],
    );
  }

  /// `احسب`
  String get calc {
    return Intl.message(
      'احسب',
      name: 'calc',
      desc: '',
      args: [],
    );
  }

  /// `القياسات`
  String get measure {
    return Intl.message(
      'القياسات',
      name: 'measure',
      desc: '',
      args: [],
    );
  }

  /// `أسفل الظهر`
  String get below_back {
    return Intl.message(
      'أسفل الظهر',
      name: 'below_back',
      desc: '',
      args: [],
    );
  }

  /// `طريقة أخذ القياسات الصحيحة للرقبة`
  String get title_measure_neck {
    return Intl.message(
      'طريقة أخذ القياسات الصحيحة للرقبة',
      name: 'title_measure_neck',
      desc: '',
      args: [],
    );
  }

  /// `الصحة`
  String get health {
    return Intl.message(
      'الصحة',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `النحافة`
  String get thickness {
    return Intl.message(
      'النحافة',
      name: 'thickness',
      desc: '',
      args: [],
    );
  }

  /// `الرياضة`
  String get sport {
    return Intl.message(
      'الرياضة',
      name: 'sport',
      desc: '',
      args: [],
    );
  }

  /// `التالي`
  String get next {
    return Intl.message(
      'التالي',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `طريقة أخذ القياسات الصحيحة للوسط`
  String get title_measure_middle {
    return Intl.message(
      'طريقة أخذ القياسات الصحيحة للوسط',
      name: 'title_measure_middle',
      desc: '',
      args: [],
    );
  }

  /// `طريقة أخذ القياسات الصحيحة لأسفل الظهر`
  String get title_measure_below_back {
    return Intl.message(
      'طريقة أخذ القياسات الصحيحة لأسفل الظهر',
      name: 'title_measure_below_back',
      desc: '',
      args: [],
    );
  }

  /// `معلومات الحساب`
  String get profile_info {
    return Intl.message(
      'معلومات الحساب',
      name: 'profile_info',
      desc: '',
      args: [],
    );
  }

  /// `مواعيد النوم`
  String get sleep_time {
    return Intl.message(
      'مواعيد النوم',
      name: 'sleep_time',
      desc: '',
      args: [],
    );
  }

  /// `مواعيد المشي`
  String get walk_time {
    return Intl.message(
      'مواعيد المشي',
      name: 'walk_time',
      desc: '',
      args: [],
    );
  }

  /// `الاشتراكات`
  String get subscribtions {
    return Intl.message(
      'الاشتراكات',
      name: 'subscribtions',
      desc: '',
      args: [],
    );
  }

  /// `قياساتي`
  String get my_measurments {
    return Intl.message(
      'قياساتي',
      name: 'my_measurments',
      desc: '',
      args: [],
    );
  }

  /// `اللغة العربية`
  String get arabic_lang {
    return Intl.message(
      'اللغة العربية',
      name: 'arabic_lang',
      desc: '',
      args: [],
    );
  }

  /// `اللغة الانجليزية`
  String get english_lang {
    return Intl.message(
      'اللغة الانجليزية',
      name: 'english_lang',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل خروج`
  String get log_out {
    return Intl.message(
      'تسجيل خروج',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `عدد الوجبات`
  String get number_meals {
    return Intl.message(
      'عدد الوجبات',
      name: 'number_meals',
      desc: '',
      args: [],
    );
  }

  /// `صمم وجباتك`
  String get design_meals {
    return Intl.message(
      'صمم وجباتك',
      name: 'design_meals',
      desc: '',
      args: [],
    );
  }

  /// `السابق`
  String get pervious {
    return Intl.message(
      'السابق',
      name: 'pervious',
      desc: '',
      args: [],
    );
  }

  /// `البرنامج الغذائي`
  String get diet_program {
    return Intl.message(
      'البرنامج الغذائي',
      name: 'diet_program',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
