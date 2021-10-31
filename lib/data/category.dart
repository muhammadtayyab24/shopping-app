import 'package:shopping/category_data/mobiles.dart';
import 'package:shopping/models/category_models.dart';

List<CategoryModels> getCategories() {
  // ignore: deprecated_member_use
  List<CategoryModels> category = <CategoryModels>[];
  CategoryModels categoryModels = new CategoryModels();

  categoryModels.categoryName = "MOBILES";
  categoryModels.imageUrl = "assets/images/mobiles.jpg";

  category.add(categoryModels);
  categoryModels = new CategoryModels();

  categoryModels.categoryName = "CARS";
  categoryModels.imageUrl = "assets/images/cars.jpg";
  category.add(categoryModels);
  categoryModels = new CategoryModels();

  categoryModels.categoryName = "ELECTRONICS";
  categoryModels.imageUrl = "assets/images/electronic.jpg";
  category.add(categoryModels);
  categoryModels = new CategoryModels();

  categoryModels.categoryName = "CLOTHES";
  categoryModels.imageUrl = "assets/images/clothes.jpg";
  category.add(categoryModels);
  categoryModels = new CategoryModels();

  categoryModels.categoryName = "GROCERIES";
  categoryModels.imageUrl = "assets/images/groceries.jpg";
  category.add(categoryModels);
  categoryModels = new CategoryModels();

  return category;
}
