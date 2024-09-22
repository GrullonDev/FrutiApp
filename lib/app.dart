import 'package:flutter/material.dart';
import 'package:fruti_app/features/main/bloc/main_bloc.dart';
import 'package:fruti_app/features/main/pages/main_page.dart';
import 'package:fruti_app/utils/routes/routes_switch.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MainBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainPage(),
        onGenerateRoute: RoutesSwitch.generateRoute,
      ),
    );
  }
}
