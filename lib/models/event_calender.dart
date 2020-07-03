import 'package:equatable/equatable.dart';

import './event.dart';

class EventCalender extends Equatable {
  final List<Event> events;

  final DateTime lastUpdated;

  EventCalender({this.events, this.lastUpdated});

  factory EventCalender.fromJson(Map<String, dynamic> json) {
    return EventCalender(
      events: (json['events'] as List)
          .map(
            (e) => Event.fromJson(e),
          )
          .toList(),
      lastUpdated: DateTime.fromMillisecondsSinceEpoch(json['updated']),
    );
  }

  @override
  List<Object> get props => [events, lastUpdated];
}
