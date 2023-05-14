// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:path_provider/path_provider.dart';

// import 'box_model.dart';

// class HiveDatabase {
//   static const String _boxName = 'box';

//   Future<void> initialize() async {
//     await Hive.initFlutter();

//     Hive.registerAdapter(BoxModelAdapter());

//     final appDocumentDir = await getApplicationDocumentsDirectory();
//     Hive.init(appDocumentDir.path);

//     await Hive.openBox<BoxModel>(_boxName);
//   }

//   Box<BoxModel> getBox() {
//     return Hive.box<BoxModel>(_boxName);
//   }
// }