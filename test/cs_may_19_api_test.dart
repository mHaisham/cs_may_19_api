import 'package:cs_may_19_api/models/event_calender.dart';
import 'package:cs_may_19_api/models/lecture_calender.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cs_may_19_api/cs_may_19_api.dart';

void main() async {
  final service = CSMay19Service();

  test('service.events should return EventCalender', () async {
    // prepare
    final events = await service.events();

    // test
    expect(events, isInstanceOf<EventCalender>());
  });

  test('service.lectures should return LectureCalender', () async {
    // prepare
    final lectures = await service.lectures();

    // test
    expect(lectures, isInstanceOf<LectureCalender>());
  });
}
