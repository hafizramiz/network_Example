/// Burdaki modeli kullanarak network isteklerini bu modelin
/// instance fieldlarina gore atilacak.

/// Bu model icinde
final class LevelPointModel {
  int id;
  int order;

  ///  Network istegi atarken kac soru getirecegini belirtir.
  int? requestQustionSize;
  String? categoryName;

  int? page;

  /// Network istegini hangi kategoriye attigini belirtir.

  /// Network istegini hangi sayfaya attigini belirtir.
  /// Kategori degisince page parametresi de sifirlanir.
  int? lastQuestion;
  int? levelPointIndex;
  String? scrollMapPointUrl;
  String? gridViewPointUrl;
  bool? isOpen = false;

  LevelPointModel(
      {required this.id,
      required this.order,
      this.requestQustionSize,
      this.categoryName,
      this.page,
      required this.lastQuestion,
      this.levelPointIndex,
      this.scrollMapPointUrl,
      this.isOpen,
      this.gridViewPointUrl});

  @override
  factory LevelPointModel.fromJson(json) {
    return LevelPointModel(
        id: json["id"],
        order: json["order"],
        requestQustionSize: json["requestQustionSize"],
        categoryName: json["categoryName"],
        page: json["page"],
        lastQuestion: json["lastQuestion"],
        levelPointIndex: json["levelPointIndex"],
        scrollMapPointUrl: json["scrollMapPointUrl"],
        gridViewPointUrl: json["gridViewPointUrl"],
        isOpen: json["isOpen"]);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        order,
        requestQustionSize,
        categoryName,
        page,
        lastQuestion,
        levelPointIndex,
        scrollMapPointUrl,
        gridViewPointUrl,
        isOpen
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "order": order,
      "requestQustionSize": requestQustionSize,
      "categoryName": categoryName,
      "page": page,
      "lastQuestion": lastQuestion,
      "levelPointIndex": levelPointIndex,
      "scrollMapPointUrl": scrollMapPointUrl,
      "gridViewPointUrl": gridViewPointUrl,
      "isOpen": isOpen
    };
  }

  @override
  String toString() {
    return 'LevelPointModel{'
        'id: $id, '
        'order: $order, '
        'requestQustionSize: $requestQustionSize, '
        'categoryName: $categoryName, '
        'page: $page, '
        'lastQuestion: $lastQuestion, '
        'levelPointIndex: $levelPointIndex, '
        'scrollMapPointUrl: $scrollMapPointUrl, '
        'gridViewPointUrl: $gridViewPointUrl, '
        'isOpen: $isOpen}';
  }
}

/// Question Service'te istek atilirken bizden 3 tane paramtere istiyor. Bu parametreleri kullanarak
/// bir path olusturup ["page=$page&size=$size&category=$category"] istek atiyoruz.
/// Burdaki parametreleri LevelPointModel'den alacagiz.

// Future<QuestionResponseModel> getQuestions(
//     {required int page, required int size, required String category}) async {
//   /// Burdaki 1001 daha sonra dinamik hale getirilecek.
//
//   final response = await _networkManager.get<QuestionResponseModel>(
//
//     /// Burda artik path olusturup gondercegim.
//       "page=$page&size=$size&category=$category",
//       model: QuestionResponseModel());
//
// }
