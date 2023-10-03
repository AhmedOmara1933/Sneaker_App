Map<String, dynamic> data = {
  "product":[
    {
      "image": "images/sneaker1.webp",
      "name": "Airforce I Low",
      "price": "380"
    },
    {
      "image": "images/sneaker2.webp",
      "name": "Air Max 300", "price": "100"},
    {
      "image": "images/sneaker3.webp",
      "name": "Air Jordan 2", "price": "240"},
    {
      "image": "images/sneaker4.webp",
      "name": "Air Jordan I Low",
      "price": "400"
    },
    {
      "image": "images/sneaker5.webp",
      "name": "Nike Motive ", "price": "140"},
    {
      "image": "images/sneaker6.webp",
      "name": "Nike Unisex", "price": "170"}
  ]
};


class DataModel {
  List<Product>? product;

  DataModel({this.product});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['product'] != null) {
      product = <Product>[];
      json['product'].forEach((v) {
        product!.add(new Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  String? image;
  String? name;
  String? price;

  Product({this.image, this.name, this.price});

  Product.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['price'] = this.price;
    return data;
  }
}