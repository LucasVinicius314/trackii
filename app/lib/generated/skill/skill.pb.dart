///
//  Generated code. Do not modify.
//  source: skill/skill.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Skill extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skill', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'skill'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillGroupId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'elapsedTime')
    ..hasRequiredFields = false
  ;

  Skill._() : super();
  factory Skill({
    $core.String? description,
    $core.String? name,
    $fixnum.Int64? skillGroupId,
    $fixnum.Int64? elapsedTime,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (name != null) {
      _result.name = name;
    }
    if (skillGroupId != null) {
      _result.skillGroupId = skillGroupId;
    }
    if (elapsedTime != null) {
      _result.elapsedTime = elapsedTime;
    }
    return _result;
  }
  factory Skill.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Skill.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Skill clone() => Skill()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Skill copyWith(void Function(Skill) updates) => super.copyWith((message) => updates(message as Skill)) as Skill; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Skill create() => Skill._();
  Skill createEmptyInstance() => create();
  static $pb.PbList<Skill> createRepeated() => $pb.PbList<Skill>();
  @$core.pragma('dart2js:noInline')
  static Skill getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Skill>(create);
  static Skill? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get skillGroupId => $_getI64(2);
  @$pb.TagNumber(3)
  set skillGroupId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSkillGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkillGroupId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get elapsedTime => $_getI64(3);
  @$pb.TagNumber(4)
  set elapsedTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasElapsedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearElapsedTime() => clearField(4);
}

class CreateSkillRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSkillRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'skill'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillGroupId')
    ..hasRequiredFields = false
  ;

  CreateSkillRequest._() : super();
  factory CreateSkillRequest({
    $core.String? description,
    $core.String? name,
    $fixnum.Int64? skillGroupId,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (name != null) {
      _result.name = name;
    }
    if (skillGroupId != null) {
      _result.skillGroupId = skillGroupId;
    }
    return _result;
  }
  factory CreateSkillRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSkillRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSkillRequest clone() => CreateSkillRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSkillRequest copyWith(void Function(CreateSkillRequest) updates) => super.copyWith((message) => updates(message as CreateSkillRequest)) as CreateSkillRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSkillRequest create() => CreateSkillRequest._();
  CreateSkillRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSkillRequest> createRepeated() => $pb.PbList<CreateSkillRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSkillRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSkillRequest>(create);
  static CreateSkillRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get skillGroupId => $_getI64(2);
  @$pb.TagNumber(3)
  set skillGroupId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSkillGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkillGroupId() => clearField(3);
}

class CreateSkillResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSkillResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'skill'), createEmptyInstance: create)
    ..aOM<Skill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skill', subBuilder: Skill.create)
    ..hasRequiredFields = false
  ;

  CreateSkillResponse._() : super();
  factory CreateSkillResponse({
    Skill? skill,
  }) {
    final _result = create();
    if (skill != null) {
      _result.skill = skill;
    }
    return _result;
  }
  factory CreateSkillResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSkillResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSkillResponse clone() => CreateSkillResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSkillResponse copyWith(void Function(CreateSkillResponse) updates) => super.copyWith((message) => updates(message as CreateSkillResponse)) as CreateSkillResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSkillResponse create() => CreateSkillResponse._();
  CreateSkillResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSkillResponse> createRepeated() => $pb.PbList<CreateSkillResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSkillResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSkillResponse>(create);
  static CreateSkillResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Skill get skill => $_getN(0);
  @$pb.TagNumber(1)
  set skill(Skill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkill() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkill() => clearField(1);
  @$pb.TagNumber(1)
  Skill ensureSkill() => $_ensure(0);
}

