import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/router.dart';
//import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/cubit/newest_books_cubit.dart';
//import 'package:bookly/features/home/presentation/manager/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
                  HomeRepoIMpl(
                    ApiService(Dio()),
                  ),
                )..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) => NewestBooksCubit(
                  HomeRepoIMpl(
                    ApiService(Dio()),
                  ),
                )..fetchNewestBooks())
        //FeaturedBooksCubit(
        // getIt.get<HomeRepoIMpl>(),
        //)),
        //   BlocProvider(
        //   create: (context) => NewestBooksCubit(getIt.get<HomeRepoIMpl>()),
        //)
      ],
      child: MaterialApp.router(
        routerConfig: Rout.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
