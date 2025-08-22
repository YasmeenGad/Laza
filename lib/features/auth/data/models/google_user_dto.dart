class GoogleUserDto {
  final String uid;
  final String? displayName;
  final String? email;
  final String? photoUrl;

  GoogleUserDto(
      {required this.uid, this.displayName, this.email, this.photoUrl});

  factory GoogleUserDto.fromFirebaseUser(user) => GoogleUserDto(
      uid: user.uid,
      displayName: user.displayName,
      email: user.email,
      photoUrl: user.photoURL);
}
