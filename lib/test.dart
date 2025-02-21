import 'package:equatable/equatable.dart';

class DummyData extends Equatable {
  String id;
  String name;

  DummyData(this.id, this.name);

  @override
  List<Object?> get props => [id,];
}
