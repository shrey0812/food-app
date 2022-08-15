import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class RecommendedProductRepo {
  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});

  getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
