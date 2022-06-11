import 'dart:math';

class Model {
  late String id;

  Model() {
    id = generateRandomString(10);
  }

  String generateRandomString(int len) {
    Random r = Random();
    String randomString =
        String.fromCharCodes(List.generate(len, (index) => r.nextInt(33) + 89));
    return randomString;
  }
}
