class UserModel {
  List<dynamic> result;

  UserModel({required this.result});

  factory UserModel.fromJson(Map<String, dynamic> json ) {
    List<dynamic>? results = [];
    for (var i = 0; i < 5; i++) {
      results.add(json["results"][i]);
    }
    return UserModel(result: results);
  }
}
