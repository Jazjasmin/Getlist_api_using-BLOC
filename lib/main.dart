import 'package:active_list_bloc/bloc/activeblocstatus/activeblocstatus_bloc.dart';
import 'package:active_list_bloc/bloc/news_list/news_list_bloc.dart';
import 'package:active_list_bloc/di/injectable.dart';
import 'package:active_list_bloc/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ActiveblocstatusBloc>(),
        ),
         BlocProvider(
          create: (context) => getIt<NewsListBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
