library cs_may_19_api;

import 'dart:convert';

import 'package:http/http.dart' as http;

import './api.dart';
import './models/event_calender.dart';
import './models/lecture_calender.dart';

/// A Calculator.
class CSMay19Service {
  final Api _api = Api();

  /// get all events in database
  Future<EventCalender> events() async {
    http.Response response = await http.get(_api.buildEventsUri());

    if (response.statusCode == 200) {
      return EventCalender.fromJson(
        json.decode(response.body),
      );
    } else {
      return null;
    }
  }

  /// all lectures for a week
  Future<LectureCalender> lectures() async {
    http.Response response = await http.get(_api.buildLecturesUri());

    if (response.statusCode == 200) {
      return LectureCalender.fromJson({
        'lectures': json.decode(response.body),
      });
    } else {
      return null;
    }
  }

  /// update the currnet events
  ///
  /// [token] MoodleSession cookie value, to access moodle content
  Future<EventCalender> update(String token) async {
    http.Response response = await http.get(_api.buildUpdateUri(token));

    if (response.statusCode == 200) {
      return EventCalender.fromJson(
        json.decode(response.body),
      );
    } else {
      return null;
    }
  }
}
