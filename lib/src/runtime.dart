import 'types.dart' show MetadataEnum, MetadataV12;

class RuntimeConfigration {
  factory RuntimeConfigration() =>_getInstance();

  MetadataEnum _runtimeMetadata;
  static RuntimeConfigration _instance;
  static RuntimeConfigration _getInstance() {
    if (_instance == null) {
      _instance = new RuntimeConfigration._internal();
    }
    return _instance;
  }

  RuntimeConfigration._internal();


  registMetadata(MetadataEnum metadata) {
    _runtimeMetadata = metadata;
  }

  MetadataEnum get runtimeMetadata => _runtimeMetadata;

  bool get isV12OrLater => runtimeMetadata.obj is MetadataV12;
}