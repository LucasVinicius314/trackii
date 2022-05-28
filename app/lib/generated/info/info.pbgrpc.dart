///
//  Generated code. Do not modify.
//  source: info/info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'info.pb.dart' as $1;
export 'info.pb.dart';

class InfoServiceClient extends $grpc.Client {
  static final _$version =
      $grpc.ClientMethod<$1.VersionRequest, $1.VersionResponse>(
          '/info.InfoService/Version',
          ($1.VersionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.VersionResponse.fromBuffer(value));

  InfoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.VersionResponse> version($1.VersionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$version, request, options: options);
  }
}

abstract class InfoServiceBase extends $grpc.Service {
  $core.String get $name => 'info.InfoService';

  InfoServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.VersionRequest, $1.VersionResponse>(
        'Version',
        version_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.VersionRequest.fromBuffer(value),
        ($1.VersionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.VersionResponse> version_Pre(
      $grpc.ServiceCall call, $async.Future<$1.VersionRequest> request) async {
    return version(call, await request);
  }

  $async.Future<$1.VersionResponse> version(
      $grpc.ServiceCall call, $1.VersionRequest request);
}
