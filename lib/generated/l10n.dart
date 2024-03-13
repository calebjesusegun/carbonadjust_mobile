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

  /// `No Internet Connection. Please try again later`
  String get no_internet {
    return Intl.message(
      'No Internet Connection. Please try again later',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection. It seems like the connection timed out`
  String get connection_timeout {
    return Intl.message(
      'No Internet Connection. It seems like the connection timed out',
      name: 'connection_timeout',
      desc: '',
      args: [],
    );
  }

  /// `Service Unavailable`
  String get service_unavailable {
    return Intl.message(
      'Service Unavailable',
      name: 'service_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Error`
  String get unknown_error {
    return Intl.message(
      'Unknown Error',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Seems like we got a problem connecting to the server. Kindly try again when you have a stronger network`
  String get connection_error {
    return Intl.message(
      'Seems like we got a problem connecting to the server. Kindly try again when you have a stronger network',
      name: 'connection_error',
      desc: '',
      args: [],
    );
  }

  /// `Email cannot be empty`
  String get email_cannot_be_empty {
    return Intl.message(
      'Email cannot be empty',
      name: 'email_cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Email must be a valid email address`
  String get email_must_be_a_valid_email {
    return Intl.message(
      'Email must be a valid email address',
      name: 'email_must_be_a_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
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
