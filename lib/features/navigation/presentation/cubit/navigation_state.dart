part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.silesian() = _Silesian;
  const factory NavigationState.news() = _News;
  const factory NavigationState.events() = _Events;
  const factory NavigationState.explore() = _Explore;
}
