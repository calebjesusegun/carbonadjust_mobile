// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "connection_error": MessageLookupByLibrary.simpleMessage(
            "Seems like we got a problem connecting to the server. Kindly try again when you have a stronger network"),
        "connection_timeout": MessageLookupByLibrary.simpleMessage(
            "No Internet Connection. It seems like the connection timed out"),
        "email_cannot_be_empty":
            MessageLookupByLibrary.simpleMessage("Email cannot be empty"),
        "email_must_be_a_valid_email": MessageLookupByLibrary.simpleMessage(
            "Email must be a valid email address"),
        "no_internet": MessageLookupByLibrary.simpleMessage(
            "No Internet Connection. Please try again later"),
        "required": MessageLookupByLibrary.simpleMessage("Required"),
        "service_unavailable":
            MessageLookupByLibrary.simpleMessage("Service Unavailable"),
        "unknown_error": MessageLookupByLibrary.simpleMessage("Unknown Error")
      };
}
