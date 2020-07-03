import 'package:equatable/equatable.dart';

import './subject.dart';

class Event extends Equatable {
  final String title;

  /// weburl to event
  final String url;

  /// time in which the event expires
  final DateTime deadline;

  /// subject to which this module belongs to
  final Subject subject;

  const Event({this.title, this.url, this.deadline, this.subject});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      title: json['title'],
      url: json['activity_url'],
      deadline: DateTime.fromMicrosecondsSinceEpoch(json['deadline']),
      subject: Subject.fromJson(json['subject']),
    );
  }

  @override
  List<Object> get props => [title, url, deadline, subject];
}
