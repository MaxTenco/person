import 'dart:math';

import 'package:person/person.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'person_providers.g.dart';

@riverpod
Future<Person> personFuture(PersonFutureRef ref, String? personId) async {
  if (personId == null) {
    return Future.value(Person());
  }

  final p = await Future.delayed(const Duration(seconds: 1));

  return Future.value(p);
}

@riverpod
class PersonEdit extends _$PersonEdit {
  @override
  FutureOr<Person> build() async {
    ref.onDispose(() {
      print('dispose');
    });
    return Person();
  }

  Future<void> init() async {
    state = const AsyncLoading();

    await Future.delayed(Duration(seconds: 2));
    state = AsyncData(state.value!);
  }
}

@riverpod
class PersonEditController extends _$PersonEditController {
  @override
  FutureOr<Person> build() async {
    final person = ref.watch(personEditProvider).value!;

    return person;
  }

  Future<void> save(Person person) async {
    try {
      state = const AsyncLoading();

      await Future.delayed(const Duration(seconds: 1));

      if (person.id == null) {
        final p = Person(id: 'Works');
        state = AsyncData(p);
      } else {
        person.age = Random().nextInt(1000);
        state = AsyncData(person);
      }

      ref.notifyListeners();
    } catch (e, s) {
      print(e);
      print(s);
      state = AsyncError(e, s);
    }
  }
}
