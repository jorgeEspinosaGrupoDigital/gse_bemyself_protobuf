//
//  Generated code. Do not modify.
//  source: signpadesrequest.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use requestDescriptor instead')
const Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'test', '3': 1, '4': 1, '5': 8, '10': 'test'},
    {'1': 'base64', '3': 2, '4': 1, '5': 12, '10': 'base64'},
    {'1': 'numeroDocumento', '3': 3, '4': 1, '5': 9, '10': 'numeroDocumento'},
    {'1': 'clave', '3': 4, '4': 1, '5': 9, '10': 'clave'},
    {'1': 'usuarioTSA', '3': 5, '4': 1, '5': 9, '10': 'usuarioTSA'},
    {'1': 'claveTSA', '3': 6, '4': 1, '5': 9, '10': 'claveTSA'},
    {'1': 'ubicacion', '3': 7, '4': 1, '5': 9, '10': 'ubicacion'},
    {'1': 'razon', '3': 8, '4': 1, '5': 9, '10': 'razon'},
    {'1': 'conLTV', '3': 9, '4': 1, '5': 8, '10': 'conLTV'},
    {'1': 'conEstampa', '3': 10, '4': 1, '5': 8, '10': 'conEstampa'},
    {'1': 'firmaVisible', '3': 11, '4': 1, '5': 8, '10': 'firmaVisible'},
    {'1': 'imagenFirma', '3': 12, '4': 1, '5': 11, '6': '.SignatureImage', '10': 'imagenFirma'},
    {'1': 'algoritmo', '3': 13, '4': 1, '5': 9, '10': 'algoritmo'},
    {'1': 'userws', '3': 14, '4': 1, '5': 9, '10': 'userws'},
    {'1': 'passwordws', '3': 15, '4': 1, '5': 9, '10': 'passwordws'},
    {'1': 'convert', '3': 16, '4': 1, '5': 8, '10': 'convert'},
    {'1': 'nombreDocumento', '3': 17, '4': 1, '5': 9, '10': 'nombreDocumento'},
    {'1': 'contrasenaPdf', '3': 18, '4': 1, '5': 9, '10': 'contrasenaPdf'},
    {'1': 'localizacion', '3': 19, '4': 1, '5': 9, '10': 'localizacion'},
    {'1': 'zonaHoraria', '3': 20, '4': 1, '5': 9, '10': 'zonaHoraria'},
    {'1': 'firmaBorde', '3': 21, '4': 1, '5': 8, '10': 'firmaBorde'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode(
    'CgdSZXF1ZXN0EhIKBHRlc3QYASABKAhSBHRlc3QSFgoGYmFzZTY0GAIgASgMUgZiYXNlNjQSKA'
    'oPbnVtZXJvRG9jdW1lbnRvGAMgASgJUg9udW1lcm9Eb2N1bWVudG8SFAoFY2xhdmUYBCABKAlS'
    'BWNsYXZlEh4KCnVzdWFyaW9UU0EYBSABKAlSCnVzdWFyaW9UU0ESGgoIY2xhdmVUU0EYBiABKA'
    'lSCGNsYXZlVFNBEhwKCXViaWNhY2lvbhgHIAEoCVIJdWJpY2FjaW9uEhQKBXJhem9uGAggASgJ'
    'UgVyYXpvbhIWCgZjb25MVFYYCSABKAhSBmNvbkxUVhIeCgpjb25Fc3RhbXBhGAogASgIUgpjb2'
    '5Fc3RhbXBhEiIKDGZpcm1hVmlzaWJsZRgLIAEoCFIMZmlybWFWaXNpYmxlEjEKC2ltYWdlbkZp'
    'cm1hGAwgASgLMg8uU2lnbmF0dXJlSW1hZ2VSC2ltYWdlbkZpcm1hEhwKCWFsZ29yaXRtbxgNIA'
    'EoCVIJYWxnb3JpdG1vEhYKBnVzZXJ3cxgOIAEoCVIGdXNlcndzEh4KCnBhc3N3b3Jkd3MYDyAB'
    'KAlSCnBhc3N3b3Jkd3MSGAoHY29udmVydBgQIAEoCFIHY29udmVydBIoCg9ub21icmVEb2N1bW'
    'VudG8YESABKAlSD25vbWJyZURvY3VtZW50bxIkCg1jb250cmFzZW5hUGRmGBIgASgJUg1jb250'
    'cmFzZW5hUGRmEiIKDGxvY2FsaXphY2lvbhgTIAEoCVIMbG9jYWxpemFjaW9uEiAKC3pvbmFIb3'
    'JhcmlhGBQgASgJUgt6b25hSG9yYXJpYRIeCgpmaXJtYUJvcmRlGBUgASgIUgpmaXJtYUJvcmRl');

@$core.Deprecated('Use signatureImageDescriptor instead')
const SignatureImage$json = {
  '1': 'SignatureImage',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    {'1': 'ancho', '3': 3, '4': 1, '5': 2, '10': 'ancho'},
    {'1': 'alto', '3': 4, '4': 1, '5': 2, '10': 'alto'},
    {'1': 'pagina', '3': 5, '4': 1, '5': 5, '10': 'pagina'},
    {'1': 'imagen', '3': 6, '4': 1, '5': 12, '10': 'imagen'},
  ],
};

/// Descriptor for `SignatureImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureImageDescriptor = $convert.base64Decode(
    'Cg5TaWduYXR1cmVJbWFnZRIMCgF4GAEgASgCUgF4EgwKAXkYAiABKAJSAXkSFAoFYW5jaG8YAy'
    'ABKAJSBWFuY2hvEhIKBGFsdG8YBCABKAJSBGFsdG8SFgoGcGFnaW5hGAUgASgFUgZwYWdpbmES'
    'FgoGaW1hZ2VuGAYgASgMUgZpbWFnZW4=');

