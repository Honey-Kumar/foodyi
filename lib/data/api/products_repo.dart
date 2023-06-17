import 'package:foodyi/helper/dependencies.dart';
import 'package:get/get.dart';

class ProductsRepo extends GetxService {
  final Apiclients apiclients;
  ProductsRepo({required this.apiclients});

  // Future<Response> getpopluarproductlist() async {
  //   return await Apiclients.getdata(
  //       'https://www.debestech.com/api/product/list');
  // }
}
