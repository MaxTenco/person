// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$personFutureHash() => r'915b3b151175a041308c4280fddcb5fe643d5d47';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [personFuture].
@ProviderFor(personFuture)
const personFutureProvider = PersonFutureFamily();

/// See also [personFuture].
class PersonFutureFamily extends Family<AsyncValue<Person>> {
  /// See also [personFuture].
  const PersonFutureFamily();

  /// See also [personFuture].
  PersonFutureProvider call(
    String? personId,
  ) {
    return PersonFutureProvider(
      personId,
    );
  }

  @override
  PersonFutureProvider getProviderOverride(
    covariant PersonFutureProvider provider,
  ) {
    return call(
      provider.personId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'personFutureProvider';
}

/// See also [personFuture].
class PersonFutureProvider extends AutoDisposeFutureProvider<Person> {
  /// See also [personFuture].
  PersonFutureProvider(
    String? personId,
  ) : this._internal(
          (ref) => personFuture(
            ref as PersonFutureRef,
            personId,
          ),
          from: personFutureProvider,
          name: r'personFutureProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$personFutureHash,
          dependencies: PersonFutureFamily._dependencies,
          allTransitiveDependencies: PersonFutureFamily._allTransitiveDependencies,
          personId: personId,
        );

  PersonFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.personId,
  }) : super.internal();

  final String? personId;

  @override
  Override overrideWith(
    FutureOr<Person> Function(PersonFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PersonFutureProvider._internal(
        (ref) => create(ref as PersonFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        personId: personId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Person> createElement() {
    return _PersonFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PersonFutureProvider && other.personId == personId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, personId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PersonFutureRef on AutoDisposeFutureProviderRef<Person> {
  /// The parameter `personId` of this provider.
  String? get personId;
}

class _PersonFutureProviderElement extends AutoDisposeFutureProviderElement<Person> with PersonFutureRef {
  _PersonFutureProviderElement(super.provider);

  @override
  String? get personId => (origin as PersonFutureProvider).personId;
}

String _$personEditControllerHash() => r'9f9e882e096fd9aff79750f26c9625c911acf912';

abstract class _$PersonEditController extends BuildlessAutoDisposeAsyncNotifier<Person> {
  late final Person person;

  FutureOr<Person> build(
    Person person,
  );
}

/// See also [PersonEditController].
@ProviderFor(PersonEditController)
const personEditControllerProvider = PersonEditControllerFamily();

/// See also [PersonEditController].
class PersonEditControllerFamily extends Family<AsyncValue<Person>> {
  /// See also [PersonEditController].
  const PersonEditControllerFamily();

  /// See also [PersonEditController].
  PersonEditControllerProvider call(
    Person person,
  ) {
    return PersonEditControllerProvider(
      person,
    );
  }

  @override
  PersonEditControllerProvider getProviderOverride(
    covariant PersonEditControllerProvider provider,
  ) {
    return call(
      provider.person,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'personEditControllerProvider';
}

/// See also [PersonEditController].
class PersonEditControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<PersonEditController, Person> {
  /// See also [PersonEditController].
  PersonEditControllerProvider(
    Person person,
  ) : this._internal(
          () => PersonEditController()..person = person,
          from: personEditControllerProvider,
          name: r'personEditControllerProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$personEditControllerHash,
          dependencies: PersonEditControllerFamily._dependencies,
          allTransitiveDependencies: PersonEditControllerFamily._allTransitiveDependencies,
          person: person,
        );

  PersonEditControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.person,
  }) : super.internal();

  final Person person;

  @override
  FutureOr<Person> runNotifierBuild(
    covariant PersonEditController notifier,
  ) {
    return notifier.build(
      person,
    );
  }

  @override
  Override overrideWith(PersonEditController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PersonEditControllerProvider._internal(
        () => create()..person = person,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        person: person,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PersonEditController, Person> createElement() {
    return _PersonEditControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PersonEditControllerProvider && other.person == person;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, person.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PersonEditControllerRef on AutoDisposeAsyncNotifierProviderRef<Person> {
  /// The parameter `person` of this provider.
  Person get person;
}

class _PersonEditControllerProviderElement extends AutoDisposeAsyncNotifierProviderElement<PersonEditController, Person> with PersonEditControllerRef {
  _PersonEditControllerProviderElement(super.provider);

  @override
  Person get person => (origin as PersonEditControllerProvider).person;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
