import 'package:newsapp/feature/domain/domain.dart';

class SourceModel extends SourceEntity {

  const SourceModel ({ String ? id, String ? name, }) : super( id: id, name: name,);

  factory SourceModel.fromJson(Map < String, dynamic > json) {
    return SourceModel(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }
}
