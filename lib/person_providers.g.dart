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

String _$personEditHash() => r'fb14c62c80fd2a3fbd69075533bc684a4ec822cf';

/// See also [PersonEdit].
@ProviderFor(PersonEdit)
final personEditProvider = AutoDisposeAsyncNotifierProvider<PersonEdit, Person>.internal(
  PersonEdit.new,
  name: r'personEditProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$personEditHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PersonEdit = AutoDisposeAsyncNotifier<Person>;

String _$personEditControllerHash() => r'ca4c7df30a05802eda4af1398b8d20ec21000bac';

/// See also [PersonEditController].
@ProviderFor(PersonEditController)
final personEditControllerProvider = AutoDisposeAsyncNotifierProvider<PersonEditController, Person>.internal(
  PersonEditController.new,
  name: r'personEditControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$personEditControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PersonEditController = AutoDisposeAsyncNotifier<Person>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
