// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskRepositoryHash() => r'2c9f0912608e600ff775bd9556d133d6007af0e2';

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

/// See also [taskRepository].
@ProviderFor(taskRepository)
const taskRepositoryProvider = TaskRepositoryFamily();

/// See also [taskRepository].
class TaskRepositoryFamily extends Family<TaskRepository> {
  /// See also [taskRepository].
  const TaskRepositoryFamily();

  /// See also [taskRepository].
  TaskRepositoryProvider call(
    ObjectBoxManager localDb,
  ) {
    return TaskRepositoryProvider(
      localDb,
    );
  }

  @override
  TaskRepositoryProvider getProviderOverride(
    covariant TaskRepositoryProvider provider,
  ) {
    return call(
      provider.localDb,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'taskRepositoryProvider';
}

/// See also [taskRepository].
class TaskRepositoryProvider extends AutoDisposeProvider<TaskRepository> {
  /// See also [taskRepository].
  TaskRepositoryProvider(
    ObjectBoxManager localDb,
  ) : this._internal(
          (ref) => taskRepository(
            ref as TaskRepositoryRef,
            localDb,
          ),
          from: taskRepositoryProvider,
          name: r'taskRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$taskRepositoryHash,
          dependencies: TaskRepositoryFamily._dependencies,
          allTransitiveDependencies:
              TaskRepositoryFamily._allTransitiveDependencies,
          localDb: localDb,
        );

  TaskRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.localDb,
  }) : super.internal();

  final ObjectBoxManager localDb;

  @override
  Override overrideWith(
    TaskRepository Function(TaskRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TaskRepositoryProvider._internal(
        (ref) => create(ref as TaskRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        localDb: localDb,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<TaskRepository> createElement() {
    return _TaskRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskRepositoryProvider && other.localDb == localDb;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, localDb.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TaskRepositoryRef on AutoDisposeProviderRef<TaskRepository> {
  /// The parameter `localDb` of this provider.
  ObjectBoxManager get localDb;
}

class _TaskRepositoryProviderElement
    extends AutoDisposeProviderElement<TaskRepository> with TaskRepositoryRef {
  _TaskRepositoryProviderElement(super.provider);

  @override
  ObjectBoxManager get localDb => (origin as TaskRepositoryProvider).localDb;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
