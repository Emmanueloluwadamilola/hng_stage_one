import 'package:hng_stage_one/view/app_image.dart';

class ShopModel {
  final String name;
  final String itemImage;
  final int cost;
   int itemPicked;
   bool isAdded;

  ShopModel(
      {required this.name,
      required this.cost,
      required this.itemImage,
      required this.itemPicked,
      required this.isAdded});
}

List<ShopModel> checkOutItems = [];


List<ShopModel> items = [
  ShopModel(
    name: 'Bag',
    cost: 10000,
    itemImage: AppImage.bag,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Sneakers',
    cost: 20000,
    itemImage: AppImage.sneakers,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Watch',
    cost: 15000,
    itemImage: AppImage.watch,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Laptop',
    cost: 300000,
    itemImage: AppImage.laptop,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Phone',
    cost: 200000,
    itemImage: AppImage.phone,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Shirt',
    cost: 10000,
    itemImage: AppImage.shirt,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Trousers',
    cost: 10000,
    itemImage: AppImage.trouser,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'smart watch',
    cost: 40000,
    itemImage: AppImage.smartWatch,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'LED tv',
    cost: 250000,
    itemImage: AppImage.ledTv,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Smart tv',
    cost: 400000,
    itemImage: AppImage.smartTv,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'cap',
    cost: 5000,
    itemImage: AppImage.cap,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Chair',
    cost: 50000,
    itemImage: AppImage.chair,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Table',
    cost: 30000,
    itemImage: AppImage.table,
    itemPicked: 0, isAdded: false,
  ),
  ShopModel(
    name: 'Jeans',
    cost: 10000,
    itemImage: AppImage.jeans,
    itemPicked: 0, isAdded: false,
  ),
];
