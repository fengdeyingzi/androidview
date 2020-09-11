import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:androidview/androidview.dart';

void main() {
  const MethodChannel channel = MethodChannel('androidview');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Androidview.platformVersion, '42');
  });
}
