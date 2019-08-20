import 'package:firstapp/screen/RecipesList.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 40,
                ),
                height: 160,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 5,
                ),
                height: 50,
                child: Image.asset(
                  'assets/receitas.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Center(
                  child: Text(
                    'Faça login para continuar',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder()
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Esqueceu sua senha? Recupere aqui!',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipesList()
                      )
                    );
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text(
                    'ENTRAR',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
