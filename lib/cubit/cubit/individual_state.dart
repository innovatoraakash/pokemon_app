part of 'individual_cubit.dart';

@immutable
abstract class IndividualState {}

class IndividualInitial extends IndividualState {}

class IndividualLoaded extends IndividualState {
  IndividualLoaded(this.pokemon);
  final Individual pokemon;
  Individual get getPokemon => pokemon;
  List<Object> get props => [pokemon];
}

class IndividualLoading extends IndividualState {}

class IndividualNotLoaded extends IndividualState {}

class ErrorState extends IndividualState {}
