import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Input Test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('perform search', () async {
      await InputScreen.setInputText(driver, 'test');
    });
  });
}

// Page Object Model Abstraction
class InputScreen {
  static SerializableFinder getInput() =>
    find.byValueKey('input');

  static setInputText(FlutterDriver driver, String text) async {
    await driver.setInputText(find.byValueKey('input'), 'test');
  }
}
