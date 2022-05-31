import 'package:flutter/material.dart';
import 'package:pokemon_app/cubit/cubit/individual_cubit.dart';
import 'package:pokemon_app/cubit/cubit/pokemon_cubit_cubit.dart';
import 'package:pokemon_app/screens/homepage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonCubit(),
      child: BlocProvider(
        create: (context) => IndividualCubit(),
        child: const MaterialApp(
          
          color: Color.fromARGB(255, 165, 29, 120),
          title: 'Material App',
          home: Scaffold(
            body: HomePage(),
          ),
        ),
      ),
    );
  }
}
