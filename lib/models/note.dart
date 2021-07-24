import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  factory Note(
      {String? id,
      @Default("") String title,
      @Default("") String description}) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
  static List<Note> fromJsonList(List<dynamic> jsonList) =>
      jsonList.map((v) => Note.fromJson(v as Map<String, dynamic>)).toList();
}
