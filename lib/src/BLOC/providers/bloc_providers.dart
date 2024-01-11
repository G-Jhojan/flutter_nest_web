import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nest/src/BLOC/presentation/pages/auth/login/login_bloc_cubit.dart';
import 'package:flutter_nest/src/BLOC/presentation/pages/auth/register/register_bloc_cubit.dart';

List <BlocProvider> blocProviders = [

  BlocProvider<LoginBlocCubit>(
    create: (context) => LoginBlocCubit(),
  ),

  BlocProvider<RegisterBlocCubit>(
    create: (context) => RegisterBlocCubit(),
  ),
];
