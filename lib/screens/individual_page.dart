import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/cubit/cubit/pokemon_cubit_cubit.dart';
import 'package:pokemon_app/cubit/cubit/pokemon_cubit_cubit.dart';

import '../cubit/cubit/individual_cubit.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key key, this.id}) : super(key: key);
  final id;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  void initState() {
    BlocProvider.of<IndividualCubit>(context).getIndividualData(widget.id);
  }

  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<IndividualCubit, IndividualState>(
            builder: (context, state) {
              if (state is IndividualLoaded)
                return Text(state.getPokemon.data.name);
              else {
                return Text("Pokemons");
              }
            },
          ),
        ),
        body: Center(
          child: Container(
            child: BlocBuilder<IndividualCubit, IndividualState>(
              builder: (context, state) {
                if (state is IndividualLoaded) {
                  final pokemon = state.getPokemon.data;
                  return Positioned(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width - 20,
                    left: 10.0,
                    top: MediaQuery.of(context).size.height * 0.1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Hero(
                            flightShuttleBuilder: (
                              BuildContext flightContext,
                              Animation<double> animation,
                              HeroFlightDirection flightDirection,
                              BuildContext fromHeroContext,
                              BuildContext toHeroContext,
                            ) {
                              return Container(
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            'https://th.bing.com/th/id/R.6055cedbf125b43ee2bd8c6c0e8a1b98?rik=Bnfc8ur8kdFvBQ&pid=ImgRaw&r=0'))),
                              );
                            },
                            tag: pokemon.id,
                            child: Container(
                              height: 240.0,
                              width: 190.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          NetworkImage(pokemon.images.small))),
                            ),
                          ),
                          Text(
                            pokemon.name,
                            style: const TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                          Text("HP: ${pokemon.hp}"),
                          Text("Evolved from : ${pokemon.evolvesFrom}"),
                          const Text(
                            "Types",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: pokemon.types
                                .map((t) => FilterChip(
                                    backgroundColor: Colors.amber,
                                    label: Text(t),
                                    onSelected: (b) {}))
                                .toList(),
                          ),
                          const Text("Weakness",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: pokemon.weaknesses == null
                                ? <Widget>[const Text("Nothing")]
                                : pokemon.weaknesses
                                    .map((t) => FilterChip(
                                        backgroundColor: Colors.red,
                                        label: Text(
                                          t.type,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        onSelected: (b) {}))
                                    .toList(),
                          ),
                          const Text("Attacks",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: pokemon.attacks == null
                                ? <Widget>[const Text("This is the final form")]
                                : pokemon.attacks
                                    .map((n) => FilterChip(
                                          backgroundColor: Colors.green,
                                          label: Text(
                                            n.name,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onSelected: (b) {},
                                        ))
                                    .toList(),
                          )
                        ],
                      ),
                    ),
                  );
                } else if (state is IndividualLoading) {
                  return const CircularProgressIndicator();
                } else {
                  return Text("Sorry something happened wrong 😪 ");
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
