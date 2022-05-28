///
//  Generated code. Do not modify.
//  source: skill/skill.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'skill.pb.dart' as $2;
export 'skill.pb.dart';

class SkillServiceClient extends $grpc.Client {
  static final _$createSkill =
      $grpc.ClientMethod<$2.CreateSkillRequest, $2.CreateSkillResponse>(
          '/skill.SkillService/CreateSkill',
          ($2.CreateSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateSkillResponse.fromBuffer(value));

  SkillServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateSkillResponse> createSkill(
      $2.CreateSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSkill, request, options: options);
  }
}

abstract class SkillServiceBase extends $grpc.Service {
  $core.String get $name => 'skill.SkillService';

  SkillServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.CreateSkillRequest, $2.CreateSkillResponse>(
            'CreateSkill',
            createSkill_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CreateSkillRequest.fromBuffer(value),
            ($2.CreateSkillResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateSkillResponse> createSkill_Pre($grpc.ServiceCall call,
      $async.Future<$2.CreateSkillRequest> request) async {
    return createSkill(call, await request);
  }

  $async.Future<$2.CreateSkillResponse> createSkill(
      $grpc.ServiceCall call, $2.CreateSkillRequest request);
}
