import 'package:aboba/data/interface/strings_interface.dart';
import 'package:aboba/data/mocks/mock_service.dart';

class StringsRepositoryImp implements IStrings{


  final MockService mockService;

  StringsRepositoryImp(this.mockService);

  @override
  List<String> getStrings() => mockService.getStrings;
}