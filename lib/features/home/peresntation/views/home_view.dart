import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repository/home_repo.dart';
import 'package:bookly/features/home/peresntation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/peresntation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/peresntation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(getIt.get<HomeRebo>())..fetchFeatureBooks() ) ,
        BlocProvider(create: (context)=> NewestBooksCubit(getIt.get<HomeRebo>())..fetchNewesBooks()) ,
      ],
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
