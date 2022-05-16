///
//  Generated code. Do not modify.
//  source: skill.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'skill.pb.dart' as $0;
export 'skill.pb.dart';

class SkillServiceClient extends $grpc.Client {
  static final _$getSkill = $grpc.ClientMethod<$0.SkillRequest, $0.SkillReply>(
      '/skill.SkillService/GetSkill',
      ($0.SkillRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SkillReply.fromBuffer(value));

  SkillServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SkillReply> getSkill($0.SkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSkill, request, options: options);
  }
}

abstract class SkillServiceBase extends $grpc.Service {
  $core.String get $name => 'skill.SkillService';

  SkillServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SkillRequest, $0.SkillReply>(
        'GetSkill',
        getSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SkillRequest.fromBuffer(value),
        ($0.SkillReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.SkillReply> getSkill_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SkillRequest> request) async {
    return getSkill(call, await request);
  }

  $async.Future<$0.SkillReply> getSkill(
      $grpc.ServiceCall call, $0.SkillRequest request);
}
