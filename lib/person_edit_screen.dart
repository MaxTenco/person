import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:person/person.dart';
import 'package:person/person_providers.dart';

class PersonEditScreen extends ConsumerWidget {
  const PersonEditScreen({super.key});

  Widget _data(Person person, WidgetRef ref) {
    final state = ref.watch(personEditControllerProvider(person));

    print(state);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Visibility(
          visible: state.isLoading,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        Center(
          child: Text(state.value?.id ?? 'Id is null'),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: ElevatedButton(
            onPressed: state.isLoading
                ? null
                : () {
                    final newPerson = Person(id: state.value!.id);
                    ref.read(personEditControllerProvider(person).notifier).save(newPerson);
                  },
            child: const Text('Save'),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(personFutureProvider(null));

    return Scaffold(
      body: Scaffold(
        appBar: AppBar(),
        body: state.when(
          data: (person) => _data(person, ref),
          error: (_, __) => const Text('Error'),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
