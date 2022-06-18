class UserInfo {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? refreshToken;
  String? userName;
  String? message;
  String? paflag;
  String? userinfo;
  String? issued;
  String? expires;

  UserInfo(
      {this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.refreshToken,
      this.userName,
      this.message,
      this.paflag,
      this.userinfo,
      this.issued,
      this.expires});

  UserInfo.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    refreshToken = json['refresh_token'];
    userName = json['userName'];
    message = json['message'];
    paflag = json['paflag'];
    userinfo = json['userinfo'];
    issued = json['.issued'];
    expires = json['.expires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    data['refresh_token'] = this.refreshToken;
    data['userName'] = this.userName;
    data['message'] = this.message;
    data['paflag'] = this.paflag;
    data['userinfo'] = this.userinfo;
    data['.issued'] = this.issued;
    data['.expires'] = this.expires;
    return data;
  }
}

