
class StsTokenManager {
  String? _refreshToken;
  String? _accessToken;
  int? _expirationTime;

  StsTokenManager(
      {String? refreshToken, String? accessToken, int? expirationTime}) {
    if (refreshToken != null) {
      _refreshToken = refreshToken;
    }
    if (accessToken != null) {
      _accessToken = accessToken;
    }
    if (expirationTime != null) {
      _expirationTime = expirationTime;
    }
  }

  String? get refreshToken => _refreshToken;
  set refreshToken(String? refreshToken) => _refreshToken = refreshToken;
  String? get accessToken => _accessToken;
  set accessToken(String? accessToken) => _accessToken = accessToken;
  int? get expirationTime => _expirationTime;
  set expirationTime(int? expirationTime) => _expirationTime = expirationTime;

  StsTokenManager.fromJson(Map<String, dynamic> json) {
    _refreshToken = json['refreshToken'];
    _accessToken = json['accessToken'];
    _expirationTime = json['expirationTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['refreshToken'] = _refreshToken;
    data['accessToken'] = _accessToken;
    data['expirationTime'] = _expirationTime;
    return data;
  }
}