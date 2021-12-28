class UserSample {
  late int id;
  late String name;
  late String username;
  UserSample({required this.id, required this.name, required this.username});

  UserSample.initial()
      : id = 0,
        name = '',
        username = '';

  UserSample.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    return data;
  }
}
