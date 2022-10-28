// To parse this JSON data, do
//
//     final groupModel = groupModelFromJson(jsonString);

import 'dart:convert';

List<GroupModel> groupModelFromJson(String str) =>
    List<GroupModel>.from(json.decode(str).map((x) => GroupModel.fromJson(x)));

String groupModelToJson(List<GroupModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GroupModel {
  GroupModel({
    this.id,
    this.name,
    this.levelId,
    this.level,
    this.categoryId,
    this.sl,
    this.childSubCategories,
    this.groupImages,
  });

  int? id;
  String? name;
  int? levelId;
  String? level;
  int? categoryId;
  int? sl;
  List<ChildSubCategory>? childSubCategories;
  List<dynamic>? groupImages;

  factory GroupModel.fromJson(Map<String, dynamic> json) => GroupModel(
        id: json["id"],
        name: json["name"],
        levelId: json["levelId"],
        level: json["level"],
        categoryId: json["categoryId"],
        sl: json["sl"],
        childSubCategories: List<ChildSubCategory>.from(
            json["childSubCategories"]
                .map((x) => ChildSubCategory.fromJson(x))),
        groupImages: List<dynamic>.from(json["groupImages"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "levelId": levelId,
        "level": level,
        "categoryId": categoryId,
        "sl": sl,
        "childSubCategories":
            List<dynamic>.from(childSubCategories!.map((x) => x.toJson())),
        "groupImages": List<dynamic>.from(groupImages!.map((x) => x)),
      };
}

class ChildSubCategory {
  ChildSubCategory({
    this.id,
    this.englishName,
    this.banglaName,
    this.isPublishedOnCustomerApp,
    this.isPublishedOnPartnerApp,
    this.isServiceLevelSubCategory,
    this.hasGroup,
    this.levelId,
    this.level,
    this.parentSubCategoryId,
    this.parentSubCategoryEnglishName,
    this.parentSubCategoryBanglaName,
    this.parentGroupId,
    this.parentGroup,
    this.categoryId,
    this.categoryBanglaName,
    this.categoryEnglishName,
    this.sl,
    this.subCategories,
  });

  int? id;
  String? englishName;
  String? banglaName;
  bool? isPublishedOnCustomerApp;
  bool? isPublishedOnPartnerApp;
  bool? isServiceLevelSubCategory;
  bool? hasGroup;
  int? levelId;
  String? level;
  dynamic parentSubCategoryId;
  dynamic parentSubCategoryEnglishName;
  dynamic parentSubCategoryBanglaName;
  int? parentGroupId;
  String? parentGroup;
  int? categoryId;
  String? categoryBanglaName;
  String? categoryEnglishName;
  int? sl;
  dynamic subCategories;

  factory ChildSubCategory.fromJson(Map<String, dynamic> json) =>
      ChildSubCategory(
        id: json["id"],
        englishName: json["englishName"],
        banglaName: json["banglaName"],
        isPublishedOnCustomerApp: json["isPublishedOnCustomerApp"],
        isPublishedOnPartnerApp: json["isPublishedOnPartnerApp"],
        isServiceLevelSubCategory: json["isServiceLevelSubCategory"],
        hasGroup: json["hasGroup"],
        levelId: json["levelId"],
        level: json["level"],
        parentSubCategoryId: json["parentSubCategoryId"],
        parentSubCategoryEnglishName: json["parentSubCategoryEnglishName"],
        parentSubCategoryBanglaName: json["parentSubCategoryBanglaName"],
        parentGroupId: json["parentGroupId"],
        parentGroup: json["parentGroup"],
        categoryId: json["categoryId"],
        categoryBanglaName: json["categoryBanglaName"],
        categoryEnglishName: json["categoryEnglishName"],
        sl: json["sl"],
        subCategories: json["subCategories"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "englishName": englishName,
        "banglaName": banglaName,
        "isPublishedOnCustomerApp": isPublishedOnCustomerApp,
        "isPublishedOnPartnerApp": isPublishedOnPartnerApp,
        "isServiceLevelSubCategory": isServiceLevelSubCategory,
        "hasGroup": hasGroup,
        "levelId": levelId,
        "level": level,
        "parentSubCategoryId": parentSubCategoryId,
        "parentSubCategoryEnglishName": parentSubCategoryEnglishName,
        "parentSubCategoryBanglaName": parentSubCategoryBanglaName,
        "parentGroupId": parentGroupId,
        "parentGroup": parentGroup,
        "categoryId": categoryId,
        "categoryBanglaName": categoryBanglaName,
        "categoryEnglishName": categoryEnglishName,
        "sl": sl,
        "subCategories": subCategories,
      };
}

// enum CategoryName { CATEGORY_01 }

// final categoryNameValues =
//     EnumValues({"Category 01": CategoryName.CATEGORY_01});

// enum Level { FIRST_LEVEL }

// final levelValues = EnumValues({"First Level": Level.FIRST_LEVEL});

// enum ParentGroup { GROUP_01, GROUP_02, GROUP_03 }

// final parentGroupValues = EnumValues({
//   "Group 01": ParentGroup.GROUP_01,
//   "Group 02": ParentGroup.GROUP_02,
//   "Group 03": ParentGroup.GROUP_03
// });

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
