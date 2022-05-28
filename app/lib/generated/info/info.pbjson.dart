///
//  Generated code. Do not modify.
//  source: info/info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use versionRequestDescriptor instead')
const VersionRequest$json = const {
  '1': 'VersionRequest',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `VersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionRequestDescriptor = $convert.base64Decode('Cg5WZXJzaW9uUmVxdWVzdBIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9u');
@$core.Deprecated('Use versionResponseDescriptor instead')
const VersionResponse$json = const {
  '1': 'VersionResponse',
  '2': const [
    const {'1': 'is_valid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'current', '3': 3, '4': 1, '5': 9, '10': 'current'},
  ],
};

/// Descriptor for `VersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionResponseDescriptor = $convert.base64Decode('Cg9WZXJzaW9uUmVzcG9uc2USGQoIaXNfdmFsaWQYASABKAhSB2lzVmFsaWQSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIYCgdjdXJyZW50GAMgASgJUgdjdXJyZW50');
