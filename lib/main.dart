import 'package:fit_test/injector.dart';
import 'package:fit_test/routes.dart';
import 'package:fit_test/view/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view/bloc/main_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1024, 600),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MainBloc>(
              create: (BuildContext context) =>
                  MainBloc()..add(const MainEvent.init())),
          BlocProvider<LoginBloc>(
              create: (BuildContext context) => LoginBloc()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: Routes.router,
        ),
      ),
    );
  }
}
