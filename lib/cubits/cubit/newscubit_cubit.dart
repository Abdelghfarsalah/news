import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_day/models/newsmodel.dart';
import 'package:news_day/services/getnews.dart';

part 'newscubit_state.dart';

class NewscubitCubit extends Cubit<NewscubitState> {
  NewscubitCubit() : super(NewscubitInitial());

  getnews get = getnews();
  void getnewssport({required String category}) async {
    emit(NewscubitLoading());
    try {
      List<newsmodel> list = await get.getnewsfunction(category: category);
    
      emit(NewscubitSuccess(list: list));
    } on Exception catch (e) {
      emit(NewscubitFauiler());
    }
  }

}
