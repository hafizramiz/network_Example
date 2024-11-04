import 'package:flutter/material.dart';
class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

    );
  }
}


class Deneme extends StatefulWidget {
  const Deneme({super.key});

  @override
  State<Deneme> createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class D extends _DenemeState {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}