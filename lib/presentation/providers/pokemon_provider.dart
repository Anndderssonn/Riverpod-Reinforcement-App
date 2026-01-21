import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_reforce_app/config/config.dart';

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});

// final pokemonProvider = FutureProvider.family<String, int>((ref, id) async {
//   final name = await PokemonService.getPokemonName(id);
//   return name;
// });

final pokemonProvider = FutureProvider<String>((ref) async {
  final id = ref.watch(pokemonIdProvider);
  final name = await PokemonService.getPokemonName(id);
  return name;
});
