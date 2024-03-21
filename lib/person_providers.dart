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
class PersonEditController extends _$PersonEditController {
  @override
  FutureOr<Person> build(Person person) async {
    print('PersonEditScreen is building with $person');
    return person;
  }

  Future<void> save(Person person) async {
    try {
      state = const AsyncLoading();

      await Future.delayed(const Duration(seconds: 1));

      if (person.id == null) {
        final p = Person(id: 'Works');
        state = AsyncData(p);
      }

      state = AsyncData(person);
    } catch (e, s) {
      print(e);
      print(s);
      state = AsyncError(e, s);
    }
  }
}
