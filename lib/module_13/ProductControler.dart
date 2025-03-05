
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../utils/Urls.dart';



class ProductController{
   // Debugging to check if the URL is accessible

  List products = [];
  Future<void> fetchProducts() async{


    final response = await http.get(Uri.parse(Urls.readProduct));

    if(response.statusCode == 200){
      print(response.statusCode);
      final data = jsonDecode(response.body);
      products = data['data'];
    }
  }

  Future<void> createProduct(String name,String img, int qty,int price,int totalPrice) async {
    final response = await http.post(Uri.parse(Urls.createProduct),
        headers: {'Content-Type' : 'application/json'},
        body: jsonEncode({

            "ProductName": name,
            "ProductCode": DateTime.now().microsecond,
            "Img": img,
            "Qty": qty,
            "UnitPrice": price,
            "TotalPrice": totalPrice,

        })
    );

    print(response);
    if (response.statusCode == 201) {
      fetchProducts();
    }
  }
}



