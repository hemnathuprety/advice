import 'package:advice/sections/auth/data/models/profile_model.dart';
import 'package:advice/sections/auth/domain/entities/login_entity.dart';

class SignInModel extends LoginEntity {
  const SignInModel({required super.data});

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        data: json["data"],
      );

  factory SignInModel.fromMap(Map<String, dynamic> map) {
    return SignInModel(
      data: map["data"] == null ? null : DataModel.fromJson(map["data"] ?? ""),
    );
  }
}

class DataModel extends DataEntity {
  const DataModel({required super.token, required super.profile});

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
      token: json['token'],
      profile: json['profile'] != null
          ? ProfileModel.fromJson(json['profile'])
          : null);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    if (profile != null) {
      ProfileModel p = profile as ProfileModel;
      data['profile'] = p.toJson();
    }
    return data;
  }

  @override
  List<Object?> get props => [];
}
