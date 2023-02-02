import 'dart:convert';

import 'package:equatable/equatable.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

// ignore: must_be_immutable
class Task extends Equatable {
  final String id;
  final String title;
  final String description;
  bool? isDone;
  bool? isDeleted;

  Task({
    required this.id,
    required this.title,
    required this.description,
    this.isDone,
    this.isDeleted,
  }) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }

  Task copyWith({
    String? id,
    String? title,
    String? description,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'title': title,
  //     'isDone': isDone,
  //     'isDeleted': isDeleted,
  //   };
  // }

  // factory Task.fromMap(Map<String, dynamic> map) {
  //   return Task(
  //     id: map['id'] ?? '',
  //     title: map['title'] ?? '',
  //     isDone: map['isDone'],
  //     isDeleted: map['isDeleted'],
  //   );
  // }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'isDone': isDone,
      'isDeleted': isDeleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      isDone: map['isDone'] != null ? map['isDone'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        description,
        isDone,
        isDeleted,
      ];
}