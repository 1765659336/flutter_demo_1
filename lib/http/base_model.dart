class BaseModel<T> {
  T? data;
  int? errorCode;
  String? errorMessage;

  BaseModel.formJson(dynamic json) {
    data = json['data'];
    errorCode = json['errorCode'];
    errorMessage = json['errorMessage'];
  }
}
