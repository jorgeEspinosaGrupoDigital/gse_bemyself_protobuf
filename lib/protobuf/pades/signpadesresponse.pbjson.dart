//
//  Generated code. Do not modify.
//  source: signpadesresponse.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use responseDescriptor instead')
const Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'httpStatus', '3': 1, '4': 1, '5': 5, '10': 'httpStatus'},
    {'1': 'responseCode', '3': 2, '4': 1, '5': 9, '10': 'responseCode'},
    {'1': 'message', '3': 3, '4': 1, '5': 12, '10': 'message'},
    {'1': 'timestampDate', '3': 4, '4': 1, '5': 9, '10': 'timestampDate'},
    {'1': 'signatureDate', '3': 5, '4': 1, '5': 9, '10': 'signatureDate'},
    {'1': 'storedPath', '3': 6, '4': 1, '5': 9, '10': 'storedPath'},
    {'1': 'signatures', '3': 7, '4': 3, '5': 11, '6': '.Signature', '10': 'signatures'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRIeCgpodHRwU3RhdHVzGAEgASgFUgpodHRwU3RhdHVzEiIKDHJlc3BvbnNlQ2'
    '9kZRgCIAEoCVIMcmVzcG9uc2VDb2RlEhgKB21lc3NhZ2UYAyABKAxSB21lc3NhZ2USJAoNdGlt'
    'ZXN0YW1wRGF0ZRgEIAEoCVINdGltZXN0YW1wRGF0ZRIkCg1zaWduYXR1cmVEYXRlGAUgASgJUg'
    '1zaWduYXR1cmVEYXRlEh4KCnN0b3JlZFBhdGgYBiABKAlSCnN0b3JlZFBhdGgSKgoKc2lnbmF0'
    'dXJlcxgHIAMoCzIKLlNpZ25hdHVyZVIKc2lnbmF0dXJlcw==');

@$core.Deprecated('Use signatureDescriptor instead')
const Signature$json = {
  '1': 'Signature',
  '2': [
    {'1': 'fields', '3': 1, '4': 3, '5': 11, '6': '.Signature.FieldsEntry', '10': 'fields'},
  ],
  '3': [Signature_FieldsEntry$json],
};

@$core.Deprecated('Use signatureDescriptor instead')
const Signature_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Signature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDescriptor = $convert.base64Decode(
    'CglTaWduYXR1cmUSLgoGZmllbGRzGAEgAygLMhYuU2lnbmF0dXJlLkZpZWxkc0VudHJ5UgZmaW'
    'VsZHMaOQoLRmllbGRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZh'
    'bHVlOgI4AQ==');

