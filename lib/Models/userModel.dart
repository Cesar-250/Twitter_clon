
class UserModel {
  final String name;
  final String username;
  final String following;
  final String followers;
  final String avatarURL;

  UserModel(
      {required this.name,
      required this.username,
      required this.following,
      required this.followers,
      required this.avatarURL});
}

List<UserModel> listUsers = [
  // ignore: unnecessary_new
  new UserModel(
      name: "Cesar Gilberto Cayzara R",
      username: "@CayzaraR",
      following: "90",
      followers: "270",
      avatarURL:
      //"https://pbs.twimg.com/profile_images/845859862886174720/50oj5WHo_400x400.jpg"),
      "https://pbs.twimg.com/profile_images/1576079276817915904/K3mRoDcJ.jpg"),
 // ignore: unnecessary_new
 new UserModel(
      name: "Cesar Cayzara",
      username: "@Cesar-250",
      following: "500",
      followers: "5000",
      avatarURL: "https://avatars.githubusercontent.com/u/108187517?s=96&v=4"),
      
      
  // ignore: unnecessary_new
  new UserModel(
      name: "Facebook",
      username: "@Facebook",
      following: "100",
      followers: "1000",
      avatarURL: "https://www.muypymes.com/wp-content/uploads/2018/03/facebook-itunesapple.jpg"),
  // ignore: unnecessary_new
  new UserModel(
      name: "Microsoft",
      username: "@Microsoft",
      following: "10",
      followers: "400",
      avatarURL: "https://agsol.com/wp-content/uploads/2018/09/new-microsoft-logo-SIZED-SQUARE.jpg"),
];
