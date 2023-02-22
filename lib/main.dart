import 'package:sharing_cooks/application/services/init_app.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';

Future<void> main() async {
  return initApp(AppContext.AppTest);
}
