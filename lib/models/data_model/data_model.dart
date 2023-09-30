Map<String, dynamic> data = {
  "data": {
    "mostPopular": [
      {
        "image": "images/sneaker1.webp",
        "name": "Airforce I Low",
        "price": "380"
      },
      {"image": "images/sneaker2.webp", "name": "Air Max 300", "price": "100"},
      {"image": "images/sneaker3.webp", "name": "Air Jordan 2", "price": "240"}
    ],
    "newArrivals": [
      {
        "image": "images/sneaker4.webp",
        "name": "Air Jordan I Low",
        "price": "400"
      },
      {"image": "images/sneaker5.webp", "name": "Nike Motive ", "price": "140"},
      {"image": "images/sneaker6.webp", "name": "Nike Unisex", "price": "170"}
    ]
  }
};

class DataModel {
  Data? data;

  DataModel({this.data});

  DataModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<MostPopular>? mostPopular;
  List<NewArrivals>? newArrivals;

  Data({this.mostPopular, this.newArrivals});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['mostPopular'] != null) {
      mostPopular = <MostPopular>[];
      json['mostPopular'].forEach((v) {
        mostPopular!.add(new MostPopular.fromJson(v));
      });
    }
    if (json['newArrivals'] != null) {
      newArrivals = <NewArrivals>[];
      json['newArrivals'].forEach((v) {
        newArrivals!.add(new NewArrivals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mostPopular != null) {
      data['mostPopular'] = this.mostPopular!.map((v) => v.toJson()).toList();
    }
    if (this.newArrivals != null) {
      data['newArrivals'] = this.newArrivals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MostPopular {
  String? image;
  String? name;
  String? price;

  MostPopular({this.image, this.name, this.price});

  MostPopular.fromJson(Map<String, dynamic> json) {
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

class NewArrivals {
  String? image;
  String? name;
  String? price;

  NewArrivals({this.image, this.name, this.price});

  NewArrivals.fromJson(Map<String, dynamic> json) {
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

