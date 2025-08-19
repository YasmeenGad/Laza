class GoogleUserEntity {
  final String uid;
  final String? displayName;
  final String? email;
  final String? photoUrl;

  GoogleUserEntity(
      {required this.uid, this.displayName, this.email, this.photoUrl});
}
