// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_box_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoBoxModelAdapter extends TypeAdapter<TodoBoxModel> {
  @override
  final int typeId = 0;

  @override
  TodoBoxModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoBoxModel(
      id: fields[0] as String,
      text: fields[1] as String,
      isArchive: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, TodoBoxModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.isArchive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoBoxModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
