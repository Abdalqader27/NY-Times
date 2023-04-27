import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:design/design.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ny_times/router/router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'core/injections/service_locator.dart';
import 'generated/l10n.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<AppRouter>(
      create: (context) => sl<AppRouter>(),
      child: Builder(builder: (context) {
        final appRouter = context.read<AppRouter>();
        final goRouter = appRouter.goRouter;
        return KeyboardDismissOnTap(
          child: AdaptiveTheme(
            initial: AdaptiveThemeMode.light,
            light: lightTheme,
            dark: darkTheme,
            builder: (theme, darkTheme) => MaterialApp.router(
              key: key,
              routeInformationProvider: goRouter.routeInformationProvider,
              routeInformationParser: goRouter.routeInformationParser,
              routerDelegate: goRouter.routerDelegate,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              theme: theme,
              darkTheme: darkTheme,
              builder: (context, child) {
                child = ResponsiveWrapper.builder(
                  ClampingScrollWrapper.builder(context, child!),
                  mediaQueryData: MediaQuery.of(context),
                  maxWidth: 1200,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  minWidth: 480,
                  defaultScale: true,
                  breakpoints: [
                    const ResponsiveBreakpoint.resize(450, name: MOBILE),
                    const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                    const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                    const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                    const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                  ],
                );
                return child;
              },
            ),
          ),
        );
      }),
    );
  }
}
