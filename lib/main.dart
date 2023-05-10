import 'package:go_router/go_router.dart';
import 'package:iron_body/backend/app_state.dart';
import 'package:iron_body/backend/firebase_init.dart';
import 'package:iron_body/backend/usecase/use_event.dart';
import 'package:iron_body/backend/usecase/use_trainer.dart';
import 'package:iron_body/backend/usecase/use_hybrid.dart';
import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'backend/base_auth_user_provider.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'index.dart';
import 'flutter_flow/nav/nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebase();
  final appState = ApplicationState(); // Initialize ApplicationState

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  bool displaySplashImage = true;
  late GoRouter _router;
  late AppStateNotifier _appStateNotifier;
  late Stream<BaseAuthUser> userStream;

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier();
    _router = createRouter(_appStateNotifier);
    userStream = ironBodyFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    Future.delayed(
        Duration(seconds: 5), () => _appStateNotifier.stopShowingSplashImage()
    );  
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  @override
  void dispose() {
    _appStateNotifier.dispose();
    super.dispose();
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new EventRepository()),
        ChangeNotifierProvider(create: (_) => new TrainerRepository()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'ironBody',
        localizationsDelegates: [
          FFLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: _locale,
        supportedLocales: const [
          Locale('es'),
        ],
        theme: ThemeData(brightness: Brightness.light),
        themeMode: _themeMode,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      ),
    );
  }
}
