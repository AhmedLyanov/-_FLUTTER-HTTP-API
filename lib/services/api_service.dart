import 'package:dio/dio.dart';
import '../models/product.dart';

class ApiService {
  final Dio _dio = Dio();

 Future<List<Product>> fetchProducts() async {
  try {
    final response = await _dio.get('https://6744a6fdb4e2e04abea31a7f.mockapi.io/systemCards');
    print('Response data: ${response.data}'); 
    List<Product> products = (response.data as List)
        .map((json) => Product.fromJson(json))
        .toList();
    return products;
  } on DioException catch (e) {
    print('Ошибка DIO: ${e.message}'); 
    throw Exception('Ошибка при получении данных: ${e.message}');
  }
}

}
