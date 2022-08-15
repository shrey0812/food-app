import 'package:food_app/models/products_model.dart';
import 'package:get/get.dart';
import 'dart:convert';

import '../data/repository/recommended_product.repo.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});

  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  getRecommendedProductList() async {
    var response = await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      _recommendedProductList = [];
      _recommendedProductList
          .addAll(Product.fromJson(jsonDecode(response.body)).products);
      _isLoaded = true;
      update();
    } else {}
  }
}
