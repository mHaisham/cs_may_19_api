import 'package:equatable/equatable.dart';

import './lecture.dart';

class LectureCalender extends Equatable {
  final List<Lecture> lectures;

  const LectureCalender({this.lectures});

  factory LectureCalender.fromJson(Map<String, dynamic> json) {
    return LectureCalender(
      lectures: (json['lectures'] as List)
          .map(
            (e) => Lecture.fromJson(e),
          )
          .toList(),
    );
  }

  /// The day of the week [monday]..[sunday].
  ///
  /// In accordance with ISO 8601
  /// a week starts with Monday, which has the value 1
  List<Lecture> weekday(int day) {
    return lectures.where((e) => e.start.weekday == day).toList();
  }

  @override
  List<Object> get props => [];
}
