//
//  Generated code. Do not modify.
//  source: signpadesrequest.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Request extends $pb.GeneratedMessage {
  factory Request({
    $core.bool? test,
    $core.List<$core.int>? base64,
    $core.String? numeroDocumento,
    $core.String? clave,
    $core.String? usuarioTSA,
    $core.String? claveTSA,
    $core.String? ubicacion,
    $core.String? razon,
    $core.bool? conLTV,
    $core.bool? conEstampa,
    $core.bool? firmaVisible,
    SignatureImage? imagenFirma,
    $core.String? algoritmo,
    $core.String? userws,
    $core.String? passwordws,
    $core.bool? convert,
    $core.String? nombreDocumento,
    $core.String? contrasenaPdf,
  }) {
    final $result = create();
    if (test != null) {
      $result.test = test;
    }
    if (base64 != null) {
      $result.base64 = base64;
    }
    if (numeroDocumento != null) {
      $result.numeroDocumento = numeroDocumento;
    }
    if (clave != null) {
      $result.clave = clave;
    }
    if (usuarioTSA != null) {
      $result.usuarioTSA = usuarioTSA;
    }
    if (claveTSA != null) {
      $result.claveTSA = claveTSA;
    }
    if (ubicacion != null) {
      $result.ubicacion = ubicacion;
    }
    if (razon != null) {
      $result.razon = razon;
    }
    if (conLTV != null) {
      $result.conLTV = conLTV;
    }
    if (conEstampa != null) {
      $result.conEstampa = conEstampa;
    }
    if (firmaVisible != null) {
      $result.firmaVisible = firmaVisible;
    }
    if (imagenFirma != null) {
      $result.imagenFirma = imagenFirma;
    }
    if (algoritmo != null) {
      $result.algoritmo = algoritmo;
    }
    if (userws != null) {
      $result.userws = userws;
    }
    if (passwordws != null) {
      $result.passwordws = passwordws;
    }
    if (convert != null) {
      $result.convert = convert;
    }
    if (nombreDocumento != null) {
      $result.nombreDocumento = nombreDocumento;
    }
    if (contrasenaPdf != null) {
      $result.contrasenaPdf = contrasenaPdf;
    }
    return $result;
  }
  Request._() : super();
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Request', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'test')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'base64', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'numeroDocumento', protoName: 'numeroDocumento')
    ..aOS(4, _omitFieldNames ? '' : 'clave')
    ..aOS(5, _omitFieldNames ? '' : 'usuarioTSA', protoName: 'usuarioTSA')
    ..aOS(6, _omitFieldNames ? '' : 'claveTSA', protoName: 'claveTSA')
    ..aOS(7, _omitFieldNames ? '' : 'ubicacion')
    ..aOS(8, _omitFieldNames ? '' : 'razon')
    ..aOB(9, _omitFieldNames ? '' : 'conLTV', protoName: 'conLTV')
    ..aOB(10, _omitFieldNames ? '' : 'conEstampa', protoName: 'conEstampa')
    ..aOB(11, _omitFieldNames ? '' : 'firmaVisible', protoName: 'firmaVisible')
    ..aOM<SignatureImage>(12, _omitFieldNames ? '' : 'imagenFirma', protoName: 'imagenFirma', subBuilder: SignatureImage.create)
    ..aOS(13, _omitFieldNames ? '' : 'algoritmo')
    ..aOS(14, _omitFieldNames ? '' : 'userws')
    ..aOS(15, _omitFieldNames ? '' : 'passwordws')
    ..aOB(16, _omitFieldNames ? '' : 'convert')
    ..aOS(17, _omitFieldNames ? '' : 'nombreDocumento', protoName: 'nombreDocumento')
    ..aOS(18, _omitFieldNames ? '' : 'contrasenaPdf', protoName: 'contrasenaPdf')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request)) as Request;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get test => $_getBF(0);
  @$pb.TagNumber(1)
  set test($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTest() => $_has(0);
  @$pb.TagNumber(1)
  void clearTest() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get base64 => $_getN(1);
  @$pb.TagNumber(2)
  set base64($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBase64() => $_has(1);
  @$pb.TagNumber(2)
  void clearBase64() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get numeroDocumento => $_getSZ(2);
  @$pb.TagNumber(3)
  set numeroDocumento($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumeroDocumento() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumeroDocumento() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get clave => $_getSZ(3);
  @$pb.TagNumber(4)
  set clave($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClave() => $_has(3);
  @$pb.TagNumber(4)
  void clearClave() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get usuarioTSA => $_getSZ(4);
  @$pb.TagNumber(5)
  set usuarioTSA($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUsuarioTSA() => $_has(4);
  @$pb.TagNumber(5)
  void clearUsuarioTSA() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get claveTSA => $_getSZ(5);
  @$pb.TagNumber(6)
  set claveTSA($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasClaveTSA() => $_has(5);
  @$pb.TagNumber(6)
  void clearClaveTSA() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get ubicacion => $_getSZ(6);
  @$pb.TagNumber(7)
  set ubicacion($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUbicacion() => $_has(6);
  @$pb.TagNumber(7)
  void clearUbicacion() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get razon => $_getSZ(7);
  @$pb.TagNumber(8)
  set razon($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRazon() => $_has(7);
  @$pb.TagNumber(8)
  void clearRazon() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get conLTV => $_getBF(8);
  @$pb.TagNumber(9)
  set conLTV($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasConLTV() => $_has(8);
  @$pb.TagNumber(9)
  void clearConLTV() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get conEstampa => $_getBF(9);
  @$pb.TagNumber(10)
  set conEstampa($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasConEstampa() => $_has(9);
  @$pb.TagNumber(10)
  void clearConEstampa() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get firmaVisible => $_getBF(10);
  @$pb.TagNumber(11)
  set firmaVisible($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFirmaVisible() => $_has(10);
  @$pb.TagNumber(11)
  void clearFirmaVisible() => clearField(11);

  @$pb.TagNumber(12)
  SignatureImage get imagenFirma => $_getN(11);
  @$pb.TagNumber(12)
  set imagenFirma(SignatureImage v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasImagenFirma() => $_has(11);
  @$pb.TagNumber(12)
  void clearImagenFirma() => clearField(12);
  @$pb.TagNumber(12)
  SignatureImage ensureImagenFirma() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get algoritmo => $_getSZ(12);
  @$pb.TagNumber(13)
  set algoritmo($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAlgoritmo() => $_has(12);
  @$pb.TagNumber(13)
  void clearAlgoritmo() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get userws => $_getSZ(13);
  @$pb.TagNumber(14)
  set userws($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUserws() => $_has(13);
  @$pb.TagNumber(14)
  void clearUserws() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get passwordws => $_getSZ(14);
  @$pb.TagNumber(15)
  set passwordws($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPasswordws() => $_has(14);
  @$pb.TagNumber(15)
  void clearPasswordws() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get convert => $_getBF(15);
  @$pb.TagNumber(16)
  set convert($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasConvert() => $_has(15);
  @$pb.TagNumber(16)
  void clearConvert() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get nombreDocumento => $_getSZ(16);
  @$pb.TagNumber(17)
  set nombreDocumento($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasNombreDocumento() => $_has(16);
  @$pb.TagNumber(17)
  void clearNombreDocumento() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get contrasenaPdf => $_getSZ(17);
  @$pb.TagNumber(18)
  set contrasenaPdf($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasContrasenaPdf() => $_has(17);
  @$pb.TagNumber(18)
  void clearContrasenaPdf() => clearField(18);
}

class SignatureImage extends $pb.GeneratedMessage {
  factory SignatureImage({
    $core.double? x,
    $core.double? y,
    $core.double? ancho,
    $core.double? alto,
    $core.int? pagina,
    $core.List<$core.int>? imagen,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    if (ancho != null) {
      $result.ancho = ancho;
    }
    if (alto != null) {
      $result.alto = alto;
    }
    if (pagina != null) {
      $result.pagina = pagina;
    }
    if (imagen != null) {
      $result.imagen = imagen;
    }
    return $result;
  }
  SignatureImage._() : super();
  factory SignatureImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignatureImage', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'ancho', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'alto', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'pagina', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'imagen', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureImage clone() => SignatureImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureImage copyWith(void Function(SignatureImage) updates) => super.copyWith((message) => updates(message as SignatureImage)) as SignatureImage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignatureImage create() => SignatureImage._();
  SignatureImage createEmptyInstance() => create();
  static $pb.PbList<SignatureImage> createRepeated() => $pb.PbList<SignatureImage>();
  @$core.pragma('dart2js:noInline')
  static SignatureImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureImage>(create);
  static SignatureImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get ancho => $_getN(2);
  @$pb.TagNumber(3)
  set ancho($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAncho() => $_has(2);
  @$pb.TagNumber(3)
  void clearAncho() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get alto => $_getN(3);
  @$pb.TagNumber(4)
  set alto($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAlto() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlto() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pagina => $_getIZ(4);
  @$pb.TagNumber(5)
  set pagina($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPagina() => $_has(4);
  @$pb.TagNumber(5)
  void clearPagina() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get imagen => $_getN(5);
  @$pb.TagNumber(6)
  set imagen($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImagen() => $_has(5);
  @$pb.TagNumber(6)
  void clearImagen() => clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
