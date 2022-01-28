import 'package:alzheimer_patient_support/model/saveUserModel/ProviderData.dart';
import 'package:alzheimer_patient_support/model/saveUserModel/StsTokenManager.dart';

class registerModel {
  String? _uid;
  String? _email;
  bool? _emailVerified;
  bool? _isAnonymous;
  List<ProviderData>? _providerData;
  StsTokenManager? _stsTokenManager;
  String? _createdAt;
  String? _lastLoginAt;
  String? _apiKey;
  String? _appName;

  registerModel(
      {String? uid,
        String? email,
        bool? emailVerified,
        bool? isAnonymous,
        List<ProviderData>? providerData,
        StsTokenManager? stsTokenManager,
        String? createdAt,
        String? lastLoginAt,
        String? apiKey,
        String? appName}) {
    if (uid != null) {
      _uid = uid;
    }
    if (email != null) {
      _email = email;
    }
    if (emailVerified != null) {
      _emailVerified = emailVerified;
    }
    if (isAnonymous != null) {
      _isAnonymous = isAnonymous;
    }
    if (providerData != null) {
      _providerData = providerData;
    }
    if (stsTokenManager != null) {
      _stsTokenManager = stsTokenManager;
    }
    if (createdAt != null) {
      _createdAt = createdAt;
    }
    if (lastLoginAt != null) {
      _lastLoginAt = lastLoginAt;
    }
    if (apiKey != null) {
      _apiKey = apiKey;
    }
    if (appName != null) {
      _appName = appName;
    }
  }

  String? get uid => _uid;
  set uid(String? uid) => _uid = uid;
  String? get email => _email;
  set email(String? email) => _email = email;
  bool? get emailVerified => _emailVerified;
  set emailVerified(bool? emailVerified) => _emailVerified = emailVerified;
  bool? get isAnonymous => _isAnonymous;
  set isAnonymous(bool? isAnonymous) => _isAnonymous = isAnonymous;
  List<ProviderData>? get providerData => _providerData;
  set providerData(List<ProviderData>? providerData) =>
      _providerData = providerData;
  StsTokenManager? get stsTokenManager => _stsTokenManager;
  set stsTokenManager(StsTokenManager? stsTokenManager) =>
      _stsTokenManager = stsTokenManager;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get lastLoginAt => _lastLoginAt;
  set lastLoginAt(String? lastLoginAt) => _lastLoginAt = lastLoginAt;
  String? get apiKey => _apiKey;
  set apiKey(String? apiKey) => _apiKey = apiKey;
  String? get appName => _appName;
  set appName(String? appName) => _appName = appName;

  registerModel.fromJson(Map<String, dynamic> json) {
    _uid = json['uid'];
    _email = json['email'];
    _emailVerified = json['emailVerified'];
    _isAnonymous = json['isAnonymous'];
    if (json['providerData'] != null) {
      _providerData = <ProviderData>[];
      json['providerData'].forEach((v) {
        _providerData!.add(ProviderData.fromJson(v));
      });
    }
    _stsTokenManager = json['stsTokenManager'] != null
        ? StsTokenManager.fromJson(json['stsTokenManager'])
        : null;
    _createdAt = json['createdAt'];
    _lastLoginAt = json['lastLoginAt'];
    _apiKey = json['apiKey'];
    _appName = json['appName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this._uid;
    data['email'] = this._email;
    data['emailVerified'] = this._emailVerified;
    data['isAnonymous'] = this._isAnonymous;
    if (_providerData != null) {
      data['providerData'] =
          _providerData!.map((v) => v.toJson()).toList();
    }
    if (_stsTokenManager != null) {
      data['stsTokenManager'] = _stsTokenManager!.toJson();
    }
    data['createdAt'] = _createdAt;
    data['lastLoginAt'] = _lastLoginAt;
    data['apiKey'] = _apiKey;
    data['appName'] = _appName;
    return data;
  }
}
