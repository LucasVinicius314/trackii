///
//  Generated code. Do not modify.
//  source: skill/skill.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use skillDescriptor instead')
const Skill$json = const {
  '1': 'Skill',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'skill_group_id', '3': 3, '4': 1, '5': 3, '10': 'skillGroupId'},
    const {'1': 'elapsed_time', '3': 4, '4': 1, '5': 3, '10': 'elapsedTime'},
  ],
};

/// Descriptor for `Skill`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List skillDescriptor = $convert.base64Decode('CgVTa2lsbBIgCgtkZXNjcmlwdGlvbhgBIAEoCVILZGVzY3JpcHRpb24SEgoEbmFtZRgCIAEoCVIEbmFtZRIkCg5za2lsbF9ncm91cF9pZBgDIAEoA1IMc2tpbGxHcm91cElkEiEKDGVsYXBzZWRfdGltZRgEIAEoA1ILZWxhcHNlZFRpbWU=');
@$core.Deprecated('Use createSkillRequestDescriptor instead')
const CreateSkillRequest$json = const {
  '1': 'CreateSkillRequest',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'skill_group_id', '3': 3, '4': 1, '5': 3, '10': 'skillGroupId'},
  ],
};

/// Descriptor for `CreateSkillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSkillRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVTa2lsbFJlcXVlc3QSIAoLZGVzY3JpcHRpb24YASABKAlSC2Rlc2NyaXB0aW9uEhIKBG5hbWUYAiABKAlSBG5hbWUSJAoOc2tpbGxfZ3JvdXBfaWQYAyABKANSDHNraWxsR3JvdXBJZA==');
@$core.Deprecated('Use createSkillResponseDescriptor instead')
const CreateSkillResponse$json = const {
  '1': 'CreateSkillResponse',
  '2': const [
    const {'1': 'skill', '3': 1, '4': 1, '5': 11, '6': '.skill.Skill', '10': 'skill'},
  ],
};

/// Descriptor for `CreateSkillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSkillResponseDescriptor = $convert.base64Decode('ChNDcmVhdGVTa2lsbFJlc3BvbnNlEiIKBXNraWxsGAEgASgLMgwuc2tpbGwuU2tpbGxSBXNraWxs');
