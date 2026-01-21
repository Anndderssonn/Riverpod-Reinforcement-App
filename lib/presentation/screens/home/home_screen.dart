import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod Reforce App')),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTitle(
          title: 'State Provider',
          subTitle: 'Provider with a simple state',
          location: '/state-provider',
        ),
        _CustomListTitle(
          title: 'Future Provider',
          subTitle: 'Simple future provider + Family',
          location: '/future-provider',
        ),
        _CustomListTitle(
          title: 'Stream Provider',
          subTitle: 'Simple stream provider + Family',
          location: '/stream-provider',
        ),
      ],
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTitle({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    final fontStyle = Theme.of(context).textTheme;

    return ListTile(
      title: Text(title, style: fontStyle.titleSmall),
      subtitle: Text(subTitle, style: fontStyle.bodyMedium),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
