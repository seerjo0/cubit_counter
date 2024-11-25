// ignore_for_file: public_member_api_docs, sort_constructors_first
class HomeState {
  bool isLoading;
  final int counter;

  HomeState({
    required this.isLoading,
    required this.counter,
  });

  @override
  bool operator ==(covariant HomeState other) {
    if (identical(this, other)) return true;
  
    return 
      other.isLoading == isLoading &&
      other.counter == counter;
  }

  @override
  int get hashCode => isLoading.hashCode ^ counter.hashCode;

  @override
  String toString() => 'HomeState(isLoading: $isLoading, counter: $counter)';

  HomeState copyWith({
    bool? isLoading,
    int? counter,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      counter: counter ?? this.counter,
    );
  }
}
