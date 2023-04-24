// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class PageAllOfBuilder {
  void replace(PageAllOf other);
  void update(void Function(PageAllOfBuilder) updates);
  PageNavigationButtonsVisibility? get navigationButtonsVisibility;
  set navigationButtonsVisibility(
      PageNavigationButtonsVisibility? navigationButtonsVisibility);

  num? get maxTimeToFinish;
  set maxTimeToFinish(num? maxTimeToFinish);

  String? get navigationTitle;
  set navigationTitle(String? navigationTitle);

  String? get navigationDescription;
  set navigationDescription(String? navigationDescription);

  String? get title;
  set title(String? title);

  String? get description;
  set description(String? description);
}

class _$$PageAllOf extends $PageAllOf {
  @override
  final PageNavigationButtonsVisibility? navigationButtonsVisibility;
  @override
  final num? maxTimeToFinish;
  @override
  final String? navigationTitle;
  @override
  final String? navigationDescription;
  @override
  final String? title;
  @override
  final String? description;

  factory _$$PageAllOf([void Function($PageAllOfBuilder)? updates]) =>
      (new $PageAllOfBuilder()..update(updates))._build();

  _$$PageAllOf._(
      {this.navigationButtonsVisibility,
      this.maxTimeToFinish,
      this.navigationTitle,
      this.navigationDescription,
      this.title,
      this.description})
      : super._();

  @override
  $PageAllOf rebuild(void Function($PageAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $PageAllOfBuilder toBuilder() => new $PageAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $PageAllOf &&
        navigationButtonsVisibility == other.navigationButtonsVisibility &&
        maxTimeToFinish == other.maxTimeToFinish &&
        navigationTitle == other.navigationTitle &&
        navigationDescription == other.navigationDescription &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, navigationButtonsVisibility.hashCode);
    _$hash = $jc(_$hash, maxTimeToFinish.hashCode);
    _$hash = $jc(_$hash, navigationTitle.hashCode);
    _$hash = $jc(_$hash, navigationDescription.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$PageAllOf')
          ..add('navigationButtonsVisibility', navigationButtonsVisibility)
          ..add('maxTimeToFinish', maxTimeToFinish)
          ..add('navigationTitle', navigationTitle)
          ..add('navigationDescription', navigationDescription)
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class $PageAllOfBuilder
    implements Builder<$PageAllOf, $PageAllOfBuilder>, PageAllOfBuilder {
  _$$PageAllOf? _$v;

  PageNavigationButtonsVisibility? _navigationButtonsVisibility;
  PageNavigationButtonsVisibility? get navigationButtonsVisibility =>
      _$this._navigationButtonsVisibility;
  set navigationButtonsVisibility(
          covariant PageNavigationButtonsVisibility?
              navigationButtonsVisibility) =>
      _$this._navigationButtonsVisibility = navigationButtonsVisibility;

  num? _maxTimeToFinish;
  num? get maxTimeToFinish => _$this._maxTimeToFinish;
  set maxTimeToFinish(covariant num? maxTimeToFinish) =>
      _$this._maxTimeToFinish = maxTimeToFinish;

  String? _navigationTitle;
  String? get navigationTitle => _$this._navigationTitle;
  set navigationTitle(covariant String? navigationTitle) =>
      _$this._navigationTitle = navigationTitle;

  String? _navigationDescription;
  String? get navigationDescription => _$this._navigationDescription;
  set navigationDescription(covariant String? navigationDescription) =>
      _$this._navigationDescription = navigationDescription;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  $PageAllOfBuilder() {
    $PageAllOf._defaults(this);
  }

  $PageAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _navigationButtonsVisibility = $v.navigationButtonsVisibility;
      _maxTimeToFinish = $v.maxTimeToFinish;
      _navigationTitle = $v.navigationTitle;
      _navigationDescription = $v.navigationDescription;
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $PageAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$PageAllOf;
  }

  @override
  void update(void Function($PageAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $PageAllOf build() => _build();

  _$$PageAllOf _build() {
    final _$result = _$v ??
        new _$$PageAllOf._(
            navigationButtonsVisibility: navigationButtonsVisibility,
            maxTimeToFinish: maxTimeToFinish,
            navigationTitle: navigationTitle,
            navigationDescription: navigationDescription,
            title: title,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
