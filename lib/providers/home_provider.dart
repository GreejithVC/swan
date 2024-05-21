import 'package:flutter/material.dart';

import '../api_services/http_api_client.dart';
import '../constants/app_enums.dart';
import '../models/home_model.dart';

class HomeProvider with ChangeNotifier {
  PageStatus _pageStatus = PageStatus.initial;

  PageStatus get pageStatus => _pageStatus;

  set pageStatus(PageStatus newState) {
    _pageStatus = newState;
    notifyListeners();
  }

  HomeModel? homeModel;

  Future<bool> getData() async {
    _pageStatus = PageStatus.loading;
    try {
      var response = await httpRequest(
          urlAddress:
              "home?id=bDy&token=KrvydjzDxLue43pAfPnU3uUnvDUPcI9QoYUMv2ZB",
          httpMethod: HttpMethod.post);
      homeModel = await HomeModel.fromJson(response);
      pageStatus = PageStatus.loaded;
      return true;
    } catch (e) {
      debugPrint('getData  Error : $e');
      pageStatus = PageStatus.loadingFailed;
      return false;
    }
  }
}
