class Tasks {
  late final String? name;
  late bool isDone;
  Tasks({required this.name, this.isDone = false});
  void toggle() {
    isDone = !isDone;
  }
}
