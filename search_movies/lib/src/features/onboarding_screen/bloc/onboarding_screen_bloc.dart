import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_movies/src/core/consts/assets.dart';

part 'onboarding_screen_bloc.freezed.dart';

@freezed
class OnboardingScreenEvent with _$OnboardingScreenEvent {
  const OnboardingScreenEvent._();

  const factory OnboardingScreenEvent.init() = _InitOnboardingScreenEvent;

  const factory OnboardingScreenEvent.pushToSearchMovies() =
      _PushToSearchMoviesOnboardingScreenEvent;
}

@freezed
class OnboardingScreenState with _$OnboardingScreenState {
  const OnboardingScreenState._();

  const factory OnboardingScreenState(
          {@Default(false) bool pushButtonToSearchMovies,
          @Default(<String>[]) List<String> moviesPosters}) =
      _OnboardingScreenState;
}

class OnboardingScreenBLoC
    extends Bloc<OnboardingScreenEvent, OnboardingScreenState> {
  OnboardingScreenBLoC() : super(const OnboardingScreenState()) {
    on<_InitOnboardingScreenEvent>(_init);
    on<_PushToSearchMoviesOnboardingScreenEvent>(_pushToSearchMovies);
  }

  Future<void> _init(_InitOnboardingScreenEvent event,
      Emitter<OnboardingScreenState> emit) async {
    emit(state.copyWith(moviesPosters: [
      Assets.joker,
      Assets.titanik,
      Assets.littleWoman,
      Assets.openheimer,
      Assets.shpionsGame,
      Assets.theLastOfUs
    ]));
  }

  Future<void> _pushToSearchMovies(
      _PushToSearchMoviesOnboardingScreenEvent event,
      Emitter<OnboardingScreenState> emit) async {
        emit(state.copyWith(pushButtonToSearchMovies: true));
      }
}
