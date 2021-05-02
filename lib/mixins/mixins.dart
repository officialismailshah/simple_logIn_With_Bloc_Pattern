import 'dart:async';

class ValidatedMixins {
  final validatedEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError("Please Provide The Valid Email");
      }
    },
  );
  final validatedPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length > 3) {
        sink.add(password);
      } else {
        sink.addError("Please Enter At Least 4 Character");
      }
    },
  );
}
