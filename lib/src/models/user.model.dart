class UserModel {
  final String uid;
  final String username;
  final String address;
  final String phone;

  UserModel({
    required this.uid,
    required this.username,
    required this.address,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      username: json['username'],
      address: json['address'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'username': username,
        'address': address,
        'phone': phone,
      };
}
