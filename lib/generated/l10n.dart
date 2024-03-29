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
