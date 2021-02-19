import 'package:flutter/material.dart';

class MensajePage extends StatelessWidget {
  const MensajePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Mensaje Page'),
      ),
      body: Center(
        child: Container(
          child: Text('Mensaje: $arg'),
        ),
      ),
    );
  }
}
