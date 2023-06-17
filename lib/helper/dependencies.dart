import 'package:get/get.dart';

class Apiclients extends GetConnect implements GetxService {
  late String token;
  final String? appbaseurl;

  Apiclients({required this.appbaseurl}) {
    baseUrl = appbaseurl;
    timeout = Duration(seconds: 30);
  }

  Future<Response> getdata(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
