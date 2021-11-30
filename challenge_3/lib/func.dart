import 'dart:math';

class Mark {
  static String generateRandomString(int len) {
    var random = Random();
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkL IMmNnOoPpQqRrSsTtUuVvWwXXYyZz1234567890';
    return List.generate(len, (index) => _chars[random.nextInt(_chars.length)])
        .join();
  }

  static bool generateRandomEnabledState() {
    var random = Random();
    return random.nextInt(2) == 0 ? false : true;
  }

}


class Aux{
  static List<String> listString() {
    List<String> list = [];
    for (int i = 0; i < 1000; i++) {
      list.add(Mark.generateRandomString(11));
    }
    return list;
  }

  static List<bool> listBool() {
    List<bool> list = [];
    for (int i = 0; i < 1000; i++) {
      list.add(Mark.generateRandomEnabledState());
    }
    return list;
  }
}