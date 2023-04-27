import 'package:design/design.dart';
import 'package:ny_times/router/router.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'common/config.dart';
import 'core/bootstrap/bootstrap.dart';
import 'core/injections/service_locator.dart';

void main() async {
  await bootstrap(
    () async {
      await setUpApp();
      return const App();
    },
  );
}
