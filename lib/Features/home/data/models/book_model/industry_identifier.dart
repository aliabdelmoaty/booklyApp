import 'package:equatable/equatable.dart';

class IndustryIdentifier extends Equatable {
  final String? type;
  final String? identifier;

  const IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromModel(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] as String?,
      identifier: json['identifier'] as String?,
    );
  }

  Map<String, dynamic> toModel() => {
        'type': type,
        'identifier': identifier,
      };

  @override
  List<Object?> get props => [type, identifier];
}
