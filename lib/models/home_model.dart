class HomeModel {
  HomeModel({
     this.success,
     this.message,
     this.banner1,
     this.banner2,
     this.banner3,
     this.banner4,
     this.banner5,
     this.recentviews,
     this.ourProducts,
     this.suggestedProducts,
     this.bestSeller,
     this.flashSail,
     this.newarrivals,
     this.categories,
     this.topAccessories,
     this.featuredbrands,
     this.cartcount,
     this.wishlistcount,
     this.currency,
     this.notificationCount,
  });
    int? success;
    String? message;
    List<Banner1>? banner1;
    List<Banner2>? banner2;
    List<Banner3>? banner3;
    List<Banner4>? banner4;
    List<dynamic>? banner5;
    List<Recentviews>? recentviews;
    List<OurProductsModel>? ourProducts;
    List<SuggestedProducts>? suggestedProducts;
    List<BestSeller>? bestSeller;
    List<FlashSail>? flashSail;
    List<dynamic>? newarrivals;
    List<Categories>? categories;
    List<TopAccessories>? topAccessories;
    List<Featuredbrands>? featuredbrands;
    int? cartcount;
    int? wishlistcount;
    Currency? currency;
    int? notificationCount;

  HomeModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    message = json['message'];
    banner1 = List.from(json['banner1']).map((e)=>Banner1.fromJson(e)).toList();
    banner2 = List.from(json['banner2']).map((e)=>Banner2.fromJson(e)).toList();
    banner3 = List.from(json['banner3']).map((e)=>Banner3.fromJson(e)).toList();
    banner4 = List.from(json['banner4']).map((e)=>Banner4.fromJson(e)).toList();
    banner5 = List.castFrom<dynamic, dynamic>(json['banner5']);
    recentviews = List.from(json['recentviews']).map((e)=>Recentviews.fromJson(e)).toList();
    ourProducts = List.from(json['our_products']).map((e)=>OurProductsModel.fromJson(e)).toList();
    suggestedProducts = List.from(json['suggested_products']).map((e)=>SuggestedProducts.fromJson(e)).toList();
    bestSeller = List.from(json['best_seller']).map((e)=>BestSeller.fromJson(e)).toList();
    flashSail = List.from(json['flash_sail']).map((e)=>FlashSail.fromJson(e)).toList();
    newarrivals = List.castFrom<dynamic, dynamic>(json['newarrivals']);
    categories = List.from(json['categories']).map((e)=>Categories.fromJson(e)).toList();
    topAccessories = List.from(json['top_accessories']).map((e)=>TopAccessories.fromJson(e)).toList();
    featuredbrands = List.from(json['featuredbrands']).map((e)=>Featuredbrands.fromJson(e)).toList();
    cartcount = json['cartcount'];
    wishlistcount = json['wishlistcount'];
    currency = Currency.fromJson(json['currency']);
    notificationCount = json['notification_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['banner1'] = banner1?.map((e)=>e.toJson()).toList();
    _data['banner2'] = banner2?.map((e)=>e.toJson()).toList();
    _data['banner3'] = banner3?.map((e)=>e.toJson()).toList();
    _data['banner4'] = banner4?.map((e)=>e.toJson()).toList();
    _data['banner5'] = banner5;
    _data['recentviews'] = recentviews?.map((e)=>e.toJson()).toList();
    _data['our_products'] = ourProducts?.map((e)=>e.toJson()).toList();
    _data['suggested_products'] = suggestedProducts?.map((e)=>e.toJson()).toList();
    _data['best_seller'] = bestSeller?.map((e)=>e.toJson()).toList();
    _data['flash_sail'] = flashSail?.map((e)=>e.toJson()).toList();
    _data['newarrivals'] = newarrivals;
    _data['categories'] = categories?.map((e)=>e.toJson()).toList();
    _data['top_accessories'] = topAccessories?.map((e)=>e.toJson()).toList();
    _data['featuredbrands'] = featuredbrands?.map((e)=>e.toJson()).toList();
    _data['cartcount'] = cartcount;
    _data['wishlistcount'] = wishlistcount;
    _data['currency'] = currency?.toJson();
    _data['notification_count'] = notificationCount;
    return _data;
  }
}

class Banner1 {
  Banner1({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    required this.title,
    required this.subTitle,
    this.logo,
  });
  late final int id;
  late final int linkType;
  late final String linkValue;
  late final String image;
  late final String title;
  late final String subTitle;
  late final Null logo;

  Banner1.fromJson(Map<String, dynamic> json){
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    title = json['title'];
    subTitle = json['sub_title'];
    logo = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['link_type'] = linkType;
    _data['link_value'] = linkValue;
    _data['image'] = image;
    _data['title'] = title;
    _data['sub_title'] = subTitle;
    _data['logo'] = logo;
    return _data;
  }
}

class Banner2 {
  Banner2({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    required this.title,
    required this.subTitle,
    this.logo,
  });
  late final int id;
  late final int linkType;
  late final String linkValue;
  late final String image;
  late final String title;
  late final String subTitle;
  late final Null logo;

  Banner2.fromJson(Map<String, dynamic> json){
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    title = json['title'];
    subTitle = json['sub_title'];
    logo = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['link_type'] = linkType;
    _data['link_value'] = linkValue;
    _data['image'] = image;
    _data['title'] = title;
    _data['sub_title'] = subTitle;
    _data['logo'] = logo;
    return _data;
  }
}

class Banner3 {
  Banner3({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    required this.title,
    required this.subTitle,
    this.logo,
  });
  late final int id;
  late final int linkType;
  late final String linkValue;
  late final String image;
  late final String title;
  late final String subTitle;
  late final Null logo;

  Banner3.fromJson(Map<String, dynamic> json){
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    title = json['title'];
    subTitle = json['sub_title'];
    logo = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['link_type'] = linkType;
    _data['link_value'] = linkValue;
    _data['image'] = image;
    _data['title'] = title;
    _data['sub_title'] = subTitle;
    _data['logo'] = logo;
    return _data;
  }
}

class Banner4 {
  Banner4({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    required this.title,
    required this.subTitle,
    this.logo,
  });
  late final int id;
  late final int linkType;
  late final String linkValue;
  late final String image;
  late final String title;
  late final String subTitle;
  late final Null logo;

  Banner4.fromJson(Map<String, dynamic> json){
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    title = json['title'];
    subTitle = json['sub_title'];
    logo = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['link_type'] = linkType;
    _data['link_value'] = linkValue;
    _data['image'] = image;
    _data['title'] = title;
    _data['sub_title'] = subTitle;
    _data['logo'] = logo;
    return _data;
  }
}

class Recentviews {
  Recentviews({
    required this.productId,
    required this.slug,
    required this.code,
    required this.homeImg,
    required this.name,
    this.isGender,
    required this.store,
    required this.manufacturer,
    required this.oldprice,
    required this.price,
    required this.image,
    required this.cart,
    required this.wishlist,
  });
  late final int productId;
  late final String slug;
  late final String code;
  late final String homeImg;
  late final String name;
  late final Null isGender;
  late final String store;
  late final String manufacturer;
  late final String oldprice;
  late final String price;
  late final String image;
  late final int cart;
  late final int wishlist;

  Recentviews.fromJson(Map<String, dynamic> json){
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = null;
    store = json['store'];
    manufacturer = json['manufacturer'];
    oldprice = json['oldprice'];
    price = json['price'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['productId'] = productId;
    _data['slug'] = slug;
    _data['code'] = code;
    _data['home_img'] = homeImg;
    _data['name'] = name;
    _data['is_gender'] = isGender;
    _data['store'] = store;
    _data['manufacturer'] = manufacturer;
    _data['oldprice'] = oldprice;
    _data['price'] = price;
    _data['image'] = image;
    _data['cart'] = cart;
    _data['wishlist'] = wishlist;
    return _data;
  }
}

class OurProductsModel {
  OurProductsModel({
    required this.productId,
    required this.slug,
    required this.code,
    this.homeImg,
    required this.name,
    this.isGender,
    required this.store,
    required this.manufacturer,
    required this.oldprice,
    required this.price,
    required this.image,
    required this.cart,
    required this.wishlist,
  });
  late final int productId;
  late final String slug;
  late final String code;
  late final String? homeImg;
  late final String name;
  late final int? isGender;
  late final String store;
  late final String manufacturer;
  late final String oldprice;
  late final String price;
  late final String image;
  late final int cart;
  late final int wishlist;

  OurProductsModel.fromJson(Map<String, dynamic> json){
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = null;
    name = json['name'];
    isGender = null;
    store = json['store'];
    manufacturer = json['manufacturer'];
    oldprice = json['oldprice'];
    price = json['price'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['productId'] = productId;
    _data['slug'] = slug;
    _data['code'] = code;
    _data['home_img'] = homeImg;
    _data['name'] = name;
    _data['is_gender'] = isGender;
    _data['store'] = store;
    _data['manufacturer'] = manufacturer;
    _data['oldprice'] = oldprice;
    _data['price'] = price;
    _data['image'] = image;
    _data['cart'] = cart;
    _data['wishlist'] = wishlist;
    return _data;
  }
}

class SuggestedProducts {
  SuggestedProducts({
    required this.productId,
    required this.slug,
    required this.code,
    this.homeImg,
    required this.name,
    this.isGender,
    required this.store,
    required this.manufacturer,
    required this.oldprice,
    required this.price,
    required this.image,
    required this.cart,
    required this.wishlist,
  });
  late final int productId;
  late final String slug;
  late final String code;
  late final String? homeImg;
  late final String name;
  late final int? isGender;
  late final String store;
  late final String manufacturer;
  late final String oldprice;
  late final String price;
  late final String image;
  late final int cart;
  late final int wishlist;

  SuggestedProducts.fromJson(Map<String, dynamic> json){
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = null;
    name = json['name'];
    isGender = null;
    store = json['store'];
    manufacturer = json['manufacturer'];
    oldprice = json['oldprice'];
    price = json['price'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['productId'] = productId;
    _data['slug'] = slug;
    _data['code'] = code;
    _data['home_img'] = homeImg;
    _data['name'] = name;
    _data['is_gender'] = isGender;
    _data['store'] = store;
    _data['manufacturer'] = manufacturer;
    _data['oldprice'] = oldprice;
    _data['price'] = price;
    _data['image'] = image;
    _data['cart'] = cart;
    _data['wishlist'] = wishlist;
    return _data;
  }
}

class BestSeller {
  BestSeller({
    required this.productId,
    required this.slug,
    required this.code,
    this.homeImg,
    required this.name,
    this.isGender,
    required this.store,
    required this.manufacturer,
    required this.oldprice,
    required this.price,
    required this.image,
    required this.cart,
    required this.wishlist,
  });
  late final int productId;
  late final String slug;
  late final String code;
  late final String? homeImg;
  late final String name;
  late final int? isGender;
  late final String store;
  late final String manufacturer;
  late final String oldprice;
  late final String price;
  late final String image;
  late final int cart;
  late final int wishlist;

  BestSeller.fromJson(Map<String, dynamic> json){
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = null;
    name = json['name'];
    isGender = null;
    store = json['store'];
    manufacturer = json['manufacturer'];
    oldprice = json['oldprice'];
    price = json['price'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['productId'] = productId;
    _data['slug'] = slug;
    _data['code'] = code;
    _data['home_img'] = homeImg;
    _data['name'] = name;
    _data['is_gender'] = isGender;
    _data['store'] = store;
    _data['manufacturer'] = manufacturer;
    _data['oldprice'] = oldprice;
    _data['price'] = price;
    _data['image'] = image;
    _data['cart'] = cart;
    _data['wishlist'] = wishlist;
    return _data;
  }
}

class FlashSail {
  FlashSail({
    required this.productId,
    required this.slug,
    required this.code,
    this.homeImg,
    required this.name,
    this.isGender,
    required this.store,
    required this.manufacturer,
    required this.oldprice,
    required this.price,
    required this.image,
    required this.cart,
    required this.wishlist,
  });
  late final int productId;
  late final String slug;
  late final String code;
  late final String? homeImg;
  late final String name;
  late final int? isGender;
  late final String store;
  late final String manufacturer;
  late final String oldprice;
  late final String price;
  late final String image;
  late final int cart;
  late final int wishlist;

  FlashSail.fromJson(Map<String, dynamic> json){
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = null;
    name = json['name'];
    isGender = null;
    store = json['store'];
    manufacturer = json['manufacturer'];
    oldprice = json['oldprice'];
    price = json['price'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['productId'] = productId;
    _data['slug'] = slug;
    _data['code'] = code;
    _data['home_img'] = homeImg;
    _data['name'] = name;
    _data['is_gender'] = isGender;
    _data['store'] = store;
    _data['manufacturer'] = manufacturer;
    _data['oldprice'] = oldprice;
    _data['price'] = price;
    _data['image'] = image;
    _data['cart'] = cart;
    _data['wishlist'] = wishlist;
    return _data;
  }
}

class Categories {
  Categories({
    required this.category,
  });
  late final Category category;

  Categories.fromJson(Map<String, dynamic> json){
    category = Category.fromJson(json['category']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['category'] = category.toJson();
    return _data;
  }
}

class Category {
  Category({
    required this.id,
    required this.slug,
    required this.image,
    required this.name,
    required this.description,
  });
  late final int id;
  late final String slug;
  late final String image;
  late final String name;
  late final String description;

  Category.fromJson(Map<String, dynamic> json){
    id = json['id'];
    slug = json['slug'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['image'] = image;
    _data['name'] = name;
    _data['description'] = description;
    return _data;
  }
}

class TopAccessories {
  TopAccessories({
    required this.category,
  });
  late final Category category;

  TopAccessories.fromJson(Map<String, dynamic> json){
    category = Category.fromJson(json['category']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['category'] = category.toJson();
    return _data;
  }
}

class Featuredbrands {
  Featuredbrands({
    required this.id,
    required this.image,
    required this.slug,
    required this.name,
  });
  late final int id;
  late final String image;
  late final String slug;
  late final String name;

  Featuredbrands.fromJson(Map<String, dynamic> json){
    id = json['id'];
    image = json['image'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image;
    _data['slug'] = slug;
    _data['name'] = name;
    return _data;
  }
}

class Currency {
  Currency({
    required this.name,
    required this.code,
    required this.symbolLeft,
    required this.symbolRight,
    required this.value,
    required this.status,
  });
  late final String name;
  late final String code;
  late final String symbolLeft;
  late final String symbolRight;
  late final String value;
  late final int status;

  Currency.fromJson(Map<String, dynamic> json){
    name = json['name'];
    code = json['code'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    value = json['value'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['code'] = code;
    _data['symbol_left'] = symbolLeft;
    _data['symbol_right'] = symbolRight;
    _data['value'] = value;
    _data['status'] = status;
    return _data;
  }
}