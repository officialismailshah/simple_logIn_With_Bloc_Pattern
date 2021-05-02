import 'package:flutter/material.dart';
import 'package:implementing_bloc/blocs/provider.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Log Me In'),
          ),
          body: Column(
            children: [
              emailField(bloc),
              passwordField(bloc),
              submitBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: bloc.changeEmail,
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                labelText: 'Email',
                errorText: snapshot.error,
              ),
            ),
          );
        });
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: bloc.changePassword,
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                labelText: 'Password',
                errorText: snapshot.error,
              ),
            ),
          );
        });
  }

  Widget submitBtn() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              Icons.sentiment_satisfied_alt,
              color: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
            Text('Submit'),
          ],
        ),
      ),
    );
  }
}
