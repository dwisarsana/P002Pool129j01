import 'package:flutter_test/flutter_test.dart';
import 'package:app/models/garden_model.dart';

void main() {
  test('GardenModel serialization', () {
    final timestamp = DateTime.now();
    final model = GardenModel(
      id: '123',
      originalImagePath: 'path/to/orig',
      resultImagePath: 'path/to/res',
      styleName: 'Zen',
      timestamp: timestamp,
      settings: {'season': 'spring'},
      isFavorite: true,
    );

    final json = model.toJson();
    expect(json['id'], '123');
    expect(json['styleName'], 'Zen');
    expect(json['isFavorite'], true);

    final newModel = GardenModel.fromJson(json);
    expect(newModel.id, model.id);
    expect(newModel.styleName, model.styleName);
    expect(newModel.isFavorite, model.isFavorite);
    expect(newModel.settings['season'], 'spring');
    // Timestamp might lose precision in ISO string, but let's check basic equality or within delta if parsed back
    // Iso8601String preserves ms usually.
    expect(newModel.timestamp.isAtSameMomentAs(model.timestamp), true);
  });
}
