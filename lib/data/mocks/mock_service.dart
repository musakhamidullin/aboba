import 'package:lorem_ipsum/lorem_ipsum.dart';

class MockService {
  final List<String> _listOfStrings =
      List.generate(69, (index) => loremIpsum(words: 20));


  List<String> get getStrings => _listOfStrings;
}
