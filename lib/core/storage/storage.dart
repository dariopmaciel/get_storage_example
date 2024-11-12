import 'package:get_storage/get_storage.dart';

class Storage {
  // final name = ReadWriteValue('nameKey', '');
  // final _name = ReadWriteValue('nameKey', '');
//! ou assim
  final _name = ''.val('nameKey');

  // final nameGetX = ReadWriteValue('nameKey', '', () => GetStorage('JornadaGetX'),);
  // final _nameGetX = ReadWriteValue('nameKey', '', () => GetStorage('JornadaGetX'));
  //!ou assim
  final _nameGetX = ''.val('nameKey',getBox: () => GetStorage('JornadaGetX'),);



  set name(String value)=> _name.val = value;
  String get name => _name.val;

  set nameGetX(String value)=> _nameGetX.val = value;
  String get nameGetX => _nameGetX.val;

}
