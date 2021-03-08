import 'package:http/http.dart' as http;
import 'package:flutter_app/learn/entity/prize/PrizeData.dart';

class NetApi {
  static void getPrize(NetCallback netCallback) async {
    String dataURL =
        "https://advert.guyinmedia.com/game/roulette/init/10?source=1";
    http.Response response = await http.get(dataURL);

    if (response.statusCode == 200) {
      netCallback.success(PrizeData.json(response.body));
    }
  }
}

class NetCallback<T> {

  void success(T t) {}

  void error(String error) {}
}
