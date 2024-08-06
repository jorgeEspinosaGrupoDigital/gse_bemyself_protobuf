library gse_bemyself_protobuf;

import 'dart:convert';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesrequest.pb.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesrequest.pbserver.dart';
import 'package:gse_bemyself_protobuf/protobuf/pades/signpadesresponse.pb.dart';
import 'package:http/http.dart' as http;




class SignerProtobuf {
  static Future<Either<Map<String,String>,Uint8List>> digitalSign(
      {required Map<String, Object> info,
        required String user,
        required String password,
        required String token,
      required String url,
      bool qa = false}
      ) async {

    final x = info["x"]! as double;
    final y = info["y"]! as double;
    final ancho = info["ancho"]! as double;
    final alto = info["alto"]! as double;
    final pagina = info["page"] as int;
    final docData = info["docData"] as Uint8List;
    final signatureImage = getSignatureImage(x: x, y: y, alto: alto, ancho: ancho, pagina: pagina);
    final req = getRequest(signatureImage: signatureImage, usuario: user, clave: password, docData: docData, qa: qa);
    final bytesBuffer = req.writeToBuffer();

    final Map<String, String> headers = {
      "Content-Type" : "application/protobuf",
      "token" : token,
      "usuario" : user
    };

    final response = await http.post(
        Uri.parse(url),
        headers: headers,
      body: bytesBuffer
    );

    if(response.statusCode != 200){
      return Left({"statusCode" : "${response.statusCode}", "message" : utf8.decode(response.bodyBytes)});
    }
    final protoResponse = Response.fromBuffer(response.bodyBytes);
    return Right(Uint8List.fromList(protoResponse.message));
  }

  static SignatureImage getSignatureImage({
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

  static Request getRequest({
    required SignatureImage signatureImage,
    required String usuario,
    required String clave,
    required Uint8List docData,
    required bool qa
  })
  {
    final req = Request();req.usuarioTSA = '9002042728'; //9002042728
    req.clave = clave; //16UYK9VRJ4
    req.numeroDocumento = usuario; //383430000
    req.claveTSA =
    'GaUZl13SLc/kB88gLYRUwhuRPsd1rNNyy8SY9O8E4URpopw54ZUL68U/2fsq+boYBSJ0TZX9K8wduJN+bXuRYWRlLUXpI5LdCL2/8oyshmc=';
    req.ubicacion = 'Bogota';
    req.razon = 'Prueba de firmado';
    req.conLTV = true;
    req.conEstampa = true;
    req.firmaVisible = true;
    req.imagenFirma = signatureImage;
    req.base64 = docData;
    req.test = qa;
    return req;
  }
}
