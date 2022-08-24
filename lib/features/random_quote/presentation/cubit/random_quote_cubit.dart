import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'random_quote_state.dart';

class RandomQuoteCubit extends Cubit<RandomQuoteState> {
  RandomQuoteCubit() : super(RandomQuoteInitial());
}
