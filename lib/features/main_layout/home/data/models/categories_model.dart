import 'package:equatable/equatable.dart';

class CategoriesModel extends Equatable {
  int? results;
  Metadata? metadata;
  List<Data>? data;

  CategoriesModel({this.results, this.metadata, this.data});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => [results, metadata, data];
}

class Metadata extends Equatable {
  int? currentPage;
  int? numberOfPages;
  int? limit;

  Metadata({this.currentPage, this.numberOfPages, this.limit});

  Metadata.fromJson(Map<String, dynamic> json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
  }

  @override
  // TODO: implement props
  List<Object?> get props => [currentPage, numberOfPages, limit];
}

class Data extends Equatable {
  String? sId;
  String? name;
  String? slug;
  String? image;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.sId,
      this.name,
      this.slug,
      this.image,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  @override
  // TODO: implement props
  List<Object?> get props => [sId, name, slug, image, createdAt, updatedAt];
}
