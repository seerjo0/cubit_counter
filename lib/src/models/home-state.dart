// ignore_for_file: public_member_api_docs, sort_constructors_first
class HomeState {
  bool isLoading;
  final int counter;
  final bool apptheme;

  HomeState({
    required this.isLoading,
    required this.counter,
    required this.apptheme,
  });

  factory HomeState.initial() => HomeState(isLoading: true, counter: 0, apptheme: true);

  @override
  bool operator ==(covariant HomeState other) {
    if (identical(this, other)) return true;

    return other.isLoading == isLoading && other.counter == counter && other.apptheme == apptheme;
  }

  @override
  int get hashCode => isLoading.hashCode ^ counter.hashCode ^ apptheme.hashCode;

  @override
  String toString() => 'HomeState(isLoading: $isLoading, counter: $counter, apptheme: $apptheme)';

  HomeState copyWith({
    bool? isLoading,
    int? counter,
    bool? apptheme,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      counter: counter ?? this.counter,
      apptheme: apptheme ?? this.apptheme,
    );
  }
}
