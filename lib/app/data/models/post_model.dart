import 'package:base_setup/core/network/interfaces/base_network_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends BaseNetworkModel<PostModel> {
  int? userId;
  String? title;
  PostModel({this.title, this.userId});

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  @override
  PostModel fromJson(Map<String, dynamic> json) {
    return PostModel.fromJson(json);
  }
}
