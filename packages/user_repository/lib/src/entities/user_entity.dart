class MyUserEntity {

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
    required this.role,
    required this.picture,
  });

  MyUserEntity.fromDocument(Map<String, dynamic> doc)
    : userId = doc['userId'],
      email = doc['email'],
      name = doc['name'],
      hasActiveCart = doc['hasActiveCart'],
      role = doc['role'],
      picture = doc['picture'];
  String userId;
  String email;
  String name;
  bool hasActiveCart;
  String role;
  String picture;

  Map<String, Object?> toDocument() {
    return <String, Object?>{
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
      'role': role,
      'picture': picture,
    };
  }
}
