import 'package:flutter_riverpod/flutter_riverpod.dart';

final namesStreamProvider = StreamProvider<List<String>>((ref) async* {
  await Future.delayed(const Duration(seconds: 2));
  yield [];
  await Future.delayed(const Duration(seconds: 2));
  yield ['Bruce'];
  await Future.delayed(const Duration(seconds: 2));
  yield ['Bruce', 'Banner'];
  await Future.delayed(const Duration(seconds: 2));
  yield ['Bruce', 'Banner', 'Stark'];
});
