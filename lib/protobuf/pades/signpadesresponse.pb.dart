//
//  Generated code. Do not modify.
//  source: signpadesresponse.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Response extends $pb.GeneratedMessage {
  factory Response({
    $core.int? httpStatus,
    $core.String? responseCode,
    $core.List<$core.int>? message,
    $core.String? timestampDate,
    $core.String? signatureDate,
    $core.String? storedPath,
    $core.Iterable<Signature>? signatures,
  }) {
    final $result = create();
    if (httpStatus != null) {
      $result.httpStatus = httpStatus;
    }
    if (responseCode != null) {
      $result.responseCode = responseCode;
    }
    if (message != null) {
      $result.message = message;
    }
    if (timestampDate != null) {
      $result.timestampDate = timestampDate;
    }
    if (signatureDate != null) {
      $result.signatureDate = signatureDate;
    }
    if (storedPath != null) {
      $result.storedPath = storedPath;
    }
    if (signatures != null) {
      $result.signatures.addAll(signatures);
    }
    return $result;
  }
  Response._() : super();
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Response', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'httpStatus', $pb.PbFieldType.O3, protoName: 'httpStatus')
    ..aOS(2, _omitFieldNames ? '' : 'responseCode', protoName: 'responseCode')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'message', $pb.PbFieldType.OY)
    ..aOS(4, _omitFieldNames ? '' : 'timestampDate', protoName: 'timestampDate')
    ..aOS(5, _omitFieldNames ? '' : 'signatureDate', protoName: 'signatureDate')
    ..aOS(6, _omitFieldNames ? '' : 'storedPath', protoName: 'storedPath')
    ..pc<Signature>(7, _omitFieldNames ? '' : 'signatures', $pb.PbFieldType.PM, subBuilder: Signature.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response)) as Response;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get httpStatus => $_getIZ(0);
  @$pb.TagNumber(1)
  set httpStatus($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHttpStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearHttpStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get responseCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set responseCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get message => $_getN(2);
  @$pb.TagNumber(3)
  set message($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get timestampDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set timestampDate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestampDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestampDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get signatureDate => $_getSZ(4);
  @$pb.TagNumber(5)
  set signatureDate($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSignatureDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignatureDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get storedPath => $_getSZ(5);
  @$pb.TagNumber(6)
  set storedPath($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStoredPath() => $_has(5);
  @$pb.TagNumber(6)
  void clearStoredPath() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Signature> get signatures => $_getList(6);
}

class Signature extends $pb.GeneratedMessage {
  factory Signature({
    $core.Map<$core.String, $core.String>? fields,
  }) {
    final $result = create();
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  Signature._() : super();
  factory Signature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Signature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Signature', createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'fields', entryClassName: 'Signature.FieldsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Signature clone() => Signature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Signature copyWith(void Function(Signature) updates) => super.copyWith((message) => updates(message as Signature)) as Signature;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Signature create() => Signature._();
  Signature createEmptyInstance() => create();
  static $pb.PbList<Signature> createRepeated() => $pb.PbList<Signature>();
  @$core.pragma('dart2js:noInline')
  static Signature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Signature>(create);
  static Signature? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get fields => $_getMap(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
