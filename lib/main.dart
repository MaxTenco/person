import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:person/person_edit_screen.dart';
import 'package:person/person_providers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(personEditProvider);

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ref.read(personEditProvider.notifier).init();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PersonEditScreen()),
            );
          },
          child: const Text('Person'),
        ),
      ),
    );
  }
}
