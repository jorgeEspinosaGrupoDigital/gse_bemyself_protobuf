library gse_bemyself_protobuf;

import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui';
import 'package:dartz/dartz.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesrequest.pb.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesrequest.pbserver.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesresponse.pb.dart';
import 'package:http/http.dart' as http;


class ErrorProtobuf {
  final int statusCode;
  final String message;
  const ErrorProtobuf(this.statusCode, this.message);
}

class SuccessProtobuf {
  final Uint8List data;
  final String signatures;
  const SuccessProtobuf(this.data, this.signatures);
}


class SignerProtobuf {
  static Future<Either<ErrorProtobuf,SuccessProtobuf>> digitalSign(
      {
        required double x,
        required double y,
        required double width,
        required double height,
        required Size docSize,
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
    //final (docW, docH) = await _getDocSize(data: docData, pagina: pagina);
    final finalX = x;//(x/docWidth) * docW;
    final finalY = y ;//- (docSize.height - 792);//(y/docHeight) * docH;
    final ancho = width;//(width/docWidth) * docW;
    final alto = height;//(height/docHeight) * docH;
    /*print('x->$finalX');
    print('y->$finalY');
    print('w->$ancho');
    print('h->$alto');*/
    final signatureImage = _getSignatureImage(x: finalX, y: finalY, alto: alto, ancho: ancho, pagina: pagina - 1);
    final req = await _getRequest(signatureImage: signatureImage, usuario: user, clave: password, docData: docData, qa: qa, tenantLanguage: tenantLanguage, bordeFirma: bordeFirma);
    final bytesBuffer = req.writeToBuffer();
    final Map<String, String> headers = _getHeaders(tenant: tenant, token: token, tenantlanguage: tenantLanguage, clientSerialID: clientSerialID, encryptedPass: password);
    final a = DateTime.now().millisecondsSinceEpoch;
    print("_PROTOBUF_ clientSerialID: $clientSerialID");
    final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: bytesBuffer
    );
    print("_PROTOBUF_ Tiempo peticion: ${DateTime.now().millisecondsSinceEpoch - a}");
    if(response.headers["content-type"] != "application/octet-stream"){
      final responseJson = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      print("_PROTOBUF_ Error petición: ${utf8.decode(response.bodyBytes)}");
      final Map<String, dynamic> result = responseJson["result"] != null ? responseJson["result"] : responseJson["data"];
      final String message = result["message"];
      final int statusCode = result["codeValidate"];
      return Left(ErrorProtobuf(statusCode, message));
    }
    final protoResponse = Response.fromBuffer(response.bodyBytes);
    final signatures = protoResponse.signatures;
    List<Map<String,String>> mapSignatures = [];
    for(int i = 0; i < signatures.length; i++){
      mapSignatures.add(signatures[i].fields);
    }
    if (protoResponse.httpStatus != 200){
      return Left(ErrorProtobuf(protoResponse.httpStatus, protoResponse.responseCode));
    }
    return Right(SuccessProtobuf(Uint8List.fromList(protoResponse.message), jsonEncode(mapSignatures)));
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
    final tz = await FlutterTimezone.getLocalTimezone();
    final req = Request();
    req.usuarioTSA = '9002042728'; //9002042728
    req.clave = clave; //16UYK9VRJ4
    req.numeroDocumento = usuario; //383430000
    req.claveTSA =
    'GaUZl13SLc/kB88gLYRUwhuRPsd1rNNyy8SY9O8E4URpopw54ZUL68U/2fsq+boYBSJ0TZX9K8wduJN+bXuRYWRlLUXpI5LdCL2/8oyshmc=';
    req.ubicacion = tz;
    req.razon = 'Prueba de firmado';
    req.conLTV = true;
    req.conEstampa = false;
    req.firmaVisible = true;
    req.imagenFirma = signatureImage;
    req.base64 = docData;
    req.test = qa;
    req.localizacion = tenantLanguage.toLowerCase();
    req.zonaHoraria = tz;
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

  /*static Future<(double, double)> _getDocSize({required Uint8List data, required int pagina}) async {
    final doc = await PdfDocument.openData(data);
    final pg = await doc.getPage(pagina);
    final docW = pg.width;
    final docH = pg.height;
    doc.dispose();
    return (docW, docH);
  }*/
}
