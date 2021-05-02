import 'dart:async';

import 'package:implementing_bloc/mixins/mixins.dart';

class Bloc extends Object with ValidatedMixins {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get email => _emailController.stream.transform(validatedEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatedPassword);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = new Bloc();
