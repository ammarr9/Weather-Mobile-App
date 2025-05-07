class UserData
{

  bool status;
  String message;

  UserData({ required this.message,required this.status});

  factory UserData.fetchUser(Map<String, dynamic> json)
  {
    return UserData( message: json["message"] , status: json["status"]);
  }
}