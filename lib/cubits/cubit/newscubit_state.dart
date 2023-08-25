part of 'newscubit_cubit.dart';

@immutable
sealed class NewscubitState {}

final class NewscubitInitial extends NewscubitState {}
final class NewscubitLoading extends NewscubitState {}
final class NewscubitSuccess extends NewscubitState {
  List<newsmodel> list=[];
  NewscubitSuccess({required this.list});
}
final class NewscubitFauiler extends NewscubitState {}
