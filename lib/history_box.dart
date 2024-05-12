import 'package:hive/hive.dart';
import 'package:ml_project/models/history_item.dart';

class HistoryManager {
  static Future<List<HistoryItem>> getHistory() async {
    final box = await Hive.openBox<HistoryItem>("history");

    final history = box.values.toList();
    history.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    return history;
  }

  static Future<void> addHistory(HistoryItem item) async {
    final box = await Hive.openBox<HistoryItem>("history");
    await box.add(item);
  }

  static Future<void> deleteHistory(String id) async {
    final box = await Hive.openBox<HistoryItem>("history");
    final Map<dynamic, HistoryItem> map = box.toMap();
    String key = map.keys.firstWhere((key) => map[key]!.id == id);
    return box.delete(key);
  }
}
