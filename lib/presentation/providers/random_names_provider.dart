import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_reforce_app/config/config.dart';

final namesStreamProvider = StreamProvider.autoDispose<String>((ref) async* {
  await for (final name in RandomGenerator.randomNamesStream()) {
    yield name;
  }
});

// final namesStreamProvider = StreamProvider<List<String>>((ref) async* {
//   await Future.delayed(const Duration(seconds: 2));
//   yield [];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Bruce'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Bruce', 'Banner'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Bruce', 'Banner', 'Stark'];
// });
