library gse_bemyself_protobuf;

import 'dart:convert';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesrequest.pb.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesrequest.pbserver.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesresponse.pb.dart';
import 'package:pdf_render/pdf_render.dart';
import 'package:http/http.dart' as http;


class ErrorProtobuf {
  final int statusCode;
  final String message;
  const ErrorProtobuf(this.statusCode, this.message);
}

class SuccessProtobuf {
  final Uint8List data;
  const SuccessProtobuf(this.data);
}


class SignerProtobuf {
  static Future<Either<ErrorProtobuf,SuccessProtobuf>> digitalSign(
      {
        required double x,
        required double y,
        required double width,
        required double height,
        required double docWidth,
        required double docHeight,
        required int pagina,
        required String user,
        required String password,
        required Uint8List docData,
        required String url,
        required String token,
        required String tenant,
        required String tenantLanguage,
        required String clientSerialID,
        bool qa = false,
        bool bordeFirma = false
      }
      ) async {
    final (docW, docH) = await _getDocSize(data: docData, pagina: pagina);
    final finalX = (x/docWidth) * docW;
    final finalY = (y/docHeight) * docH;
    final ancho = (width/docWidth) * docW;
    final alto = (height/docHeight) * docH;
    final signatureImage = _getSignatureImage(x: finalX, y: finalY, alto: alto, ancho: ancho, pagina: pagina - 1);
    final req = await _getRequest(signatureImage: signatureImage, usuario: user, clave: password, docData: docData, qa: qa, tenantLanguage: tenantLanguage, bordeFirma: bordeFirma);
    final bytesBuffer = req.writeToBuffer();
    final Map<String, String> headers = _getHeaders(tenant: tenant, token: token, tenantlanguage: tenantLanguage, clientSerialID: clientSerialID, encryptedPass: password);
    final a = DateTime.now().millisecondsSinceEpoch;
    final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: bytesBuffer
    );
    print("Tiempo peticion: ${DateTime.now().millisecondsSinceEpoch - a}");
    if(response.headers["content-type"] != "application/octet-stream"){
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      final result = responseJson["result"] as Map<String, dynamic>;
      final String message = result["message"];
      final int statusCode = result["codeValidate"];
      return Left(ErrorProtobuf(statusCode, message));
    }
    final protoResponse = Response.fromBuffer(response.bodyBytes);
    if (protoResponse.httpStatus != 200){
      return Left(ErrorProtobuf(protoResponse.httpStatus, protoResponse.responseCode));
    }
    return Right(SuccessProtobuf(Uint8List.fromList(protoResponse.message)));
  }

  static SignatureImage _getSignatureImage({
    required double x,
    required double y,
    required double alto,
    required double ancho,
    required int pagina
  })
  {
    final signatureImage = SignatureImage();
    signatureImage.x = x;
    signatureImage.y = y;
    signatureImage.alto = alto;
    signatureImage.ancho = ancho;
    signatureImage.pagina = pagina;
    return signatureImage;
  }

  static Future<Request> _getRequest({
    required SignatureImage signatureImage,
    required String usuario,
    required String clave,
    required Uint8List docData,
    required bool qa,
    required String tenantLanguage,
    required bool bordeFirma
  })
  async {
    final req = Request();
    req.usuarioTSA = '9002042728'; //9002042728
    req.clave = "nohayclave"; //16UYK9VRJ4
    req.numeroDocumento = usuario; //383430000
    req.claveTSA =
    'GaUZl13SLc/kB88gLYRUwhuRPsd1rNNyy8SY9O8E4URpopw54ZUL68U/2fsq+boYBSJ0TZX9K8wduJN+bXuRYWRlLUXpI5LdCL2/8oyshmc=';
    req.ubicacion = 'Bogota';
    req.razon = 'Prueba de firmado';
    req.conLTV = true;
    req.conEstampa = false;
    req.firmaVisible = true;
    req.imagenFirma = signatureImage;
    req.base64 = docData;
    req.test = qa;
    req.localizacion = tenantLanguage.toLowerCase();
    req.zonaHoraria = await FlutterTimezone.getLocalTimezone();
    req.firmaBorde = bordeFirma;
    return req;
  }

  static Map<String,String> _getHeaders({
    required String encryptedPass,
    required String tenant,
    required String tenantlanguage,
    required String clientSerialID,
    required String token
  }) {
    return {
      "encryptedPass" : encryptedPass,
      "Content-Type" : "application/octet-stream",
      "Authorization" : "Bearer $token",
      "tenant" : tenant,
      "tenantlanguage" : tenantlanguage,
      "citizenSerialID" : clientSerialID
    };
  }

  static Future<(double, double)> _getDocSize({required Uint8List data, required int pagina}) async {
    final doc = await PdfDocument.openData(data);
    final pg = await doc.getPage(pagina);
    final docW = pg.width;
    final docH = pg.height;
    doc.dispose();
    return (docW, docH);
  }
}
