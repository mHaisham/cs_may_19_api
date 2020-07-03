import 'package:equatable/equatable.dart';

/// lecture module
class Subject extends Equatable {
  final String name;

  final String url;

  final String meet;

  const Subject({this.name, this.url, this.meet});

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      name: json['name'],
      url: json['url'],
      meet: json['meet'] == '' ? null : json['meet'],
    );
  }

  @override
  List<Object> get props => [name, url, meet];
}
