
class ProviderData {
  String? _providerId;
  String? _uid;
  Null? _displayName;
  String? _email;
  Null? _phoneNumber;
  Null? _photoURL;

  ProviderData(
      {String? providerId,
        String? uid,
        Null? displayName,
        String? email,
        Null? phoneNumber,
        Null? photoURL}) {
    if (providerId != null) {
      _providerId = providerId;
    }
    if (uid != null) {
      _uid = uid;
    }
    if (displayName != null) {
      _displayName = displayName;
    }
    if (email != null) {
      _email = email;
    }
    if (phoneNumber != null) {
      _phoneNumber = phoneNumber;
    }
    if (photoURL != null) {
      _photoURL = photoURL;
    }
  }

  String? get providerId => _providerId;
  set providerId(String? providerId) => _providerId = providerId;
  String? get uid => _uid;
  set uid(String? uid) => _uid = uid;
  Null? get displayName => _displayName;
  set displayName(Null? displayName) => _displayName = displayName;
  String? get email => _email;
  set email(String? email) => _email = email;
  Null? get phoneNumber => _phoneNumber;
  set phoneNumber(Null? phoneNumber) => _phoneNumber = phoneNumber;
  Null? get photoURL => _photoURL;
  set photoURL(Null? photoURL) => _photoURL = photoURL;

  ProviderData.fromJson(Map<String, dynamic> json) {
    _providerId = json['providerId'];
    _uid = json['uid'];
    _displayName = json['displayName'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _photoURL = json['photoURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['providerId'] = _providerId;
    data['uid'] = _uid;
    data['displayName'] = _displayName;
    data['email'] = _email;
    data['phoneNumber'] = _phoneNumber;
    data['photoURL'] = _photoURL;
    return data;
  }
}
