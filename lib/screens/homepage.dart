import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/cubit/cubit/individual_cubit.dart';
import 'package:pokemon_app/cubit/cubit/pokemon_cubit_cubit.dart';
import 'package:pokemon_app/screens/individual_page.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PokemonCubit>(context).getPokemonList();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 113, 176, 127),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70))),
          title: Center(child: const Text('Pokemons')),
        ),
        body: 
         
            
            BlocBuilder<PokemonCubit, PokemonCubitState>(
              builder: (context, state) {
                if (state is PokemonInitial || state is PokemonLoading) {
                  return const Center(
                      child: RiveAnimation.asset(
                    "assets/loading delivery.riv",
                    fit: BoxFit.fill,
                  ));
                } else if (state is PokemonLoaded) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5),
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.vertical,
                      children: List<Widget>.generate(
                          state.getPokemons.data.length,
                          (int index) => Expanded(
                                child: InkWell(
                                  onTap: () async {
                                    Navigator.push(
                                        context,
                                        CustomPageRoute(IndividualPage(
                                            id: state
                                                .getPokemons.data[index].id)));
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      color: Colors.teal[10],
                                      child: Hero(
                                          tag: state.getPokemons.data[index].id,
                                          child: Container(
                                              decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(state
                                                  .getPokemons
                                                  .data[index]
                                                  .images
                                                  .large),
                                            ),
                                          )))),
                                ),
                              )),
                    ),
                  );
                } else {
                  return Center(
                      child: Column(
                    children: [
                      Text("Error has occured"),
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<PokemonCubit>(context)
                                .getPokemonList();
                          },
                          child: Text("refresh"))
                    ],
                  ));
                }
              },
            ),
         
        );
  }
}

class CustomPageRoute<T> extends PageRoute<T> {
  final Widget child;

  CustomPageRoute(this.child);

  @override
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 1300);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
