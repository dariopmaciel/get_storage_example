
import 'package:get_storage/get_storage.dart';

class Storage {
  final name = ReadWriteValue('nameKey', '');
  final nameGetX = ReadWriteValue('nameKey', '', () => GetStorage('JornadaGetX'),);
}