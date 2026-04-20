import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/pool_model.dart';

class StorageService {
  static const String _historyKey = 'pool_history';

  Future<void> savePools(List<PoolModel> pools) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> jsonList = pools.map((g) => jsonEncode(g.toJson())).toList();
    await prefs.setStringList(_historyKey, jsonList);
  }

  Future<List<PoolModel>> loadPools() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? jsonList = prefs.getStringList(_historyKey);
    
    if (jsonList == null) return [];

    return jsonList.map((jsonStr) {
      return PoolModel.fromJson(jsonDecode(jsonStr));
    }).toList();
  }

  Future<void> toggleFavorite(String id) async {
    final pools = await loadPools();
    final index = pools.indexWhere((g) => g.id == id);
    if (index != -1) {
      final g = pools[index];
      pools[index] = PoolModel(
        id: g.id,
        originalImagePath: g.originalImagePath,
        resultImagePath: g.resultImagePath,
        styleName: g.styleName,
        timestamp: g.timestamp,
        settings: g.settings,
        isFavorite: !g.isFavorite,
      );
      await savePools(pools);
    }
  }

  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
