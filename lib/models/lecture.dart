import 'package:equatable/equatable.dart';

import './subject.dart';

class Lecture extends Equatable {
  final String title;

  /// lecture starting date tiem
  final DateTime start;

  /// lecture ending date time
  final DateTime end;

  /// subject to which the lecture belongs to
  final Subject subject;

  const Lecture({this.title, this.start, this.end, this.subject});

  factory Lecture.fromJson(Map<String, dynamic> json) {
    return Lecture(
      title: json['title'],
      start: DateTime.fromMillisecondsSinceEpoch(json['start']),
      end: DateTime.fromMillisecondsSinceEpoch(json['end']),
      subject: Subject.fromJson(json['subject']),
    );
  }

  @override
  List<Object> get props => [title, start, end, subject];
}
