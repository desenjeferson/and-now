import 'package:flutter/material.dart';
import 'package:learning/models/session.dart';
import 'package:learning/screens/sign/sign-in.dart';

class Cadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CadastroState();
  }
}

class CadastroState extends State<Cadastro> {
  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _passwordConfirmation = TextEditingController();
  bool _staySignin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          width: double.maxFinite,
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Image.asset(
                    'images/logo.png',
                    width: 150,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Material(
                        color: Theme.of(context).primaryColor,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Container(
                            child: Text(
                              'Entrar',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Material(
                        color: Theme.of(context).primaryColor,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            child: Text(
                              'Cadastrar',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:32,right:32),
                  child: TextField(
                    controller: _login,
                    decoration: InputDecoration(labelText: 'Apelido'),
                    style: TextStyle(fontSize: 24),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:32,right:32),
                  child: TextField(
                    controller: _password,
                    decoration: InputDecoration(labelText: 'Senha'),
                    style: TextStyle(fontSize: 24),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:32,right:32,bottom: 32),
                  child: TextField(
                    controller: _passwordConfirmation,
                    decoration: InputDecoration(labelText: 'Confirmar Senha'),
                    style: TextStyle(fontSize: 24),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Material(
                  color: Theme.of(context).primaryColor,
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _staySignin = !_staySignin;
                        },
                      );
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(_staySignin
                              ? Icons.check_box_outline_blank
                              : Icons.check_box),
                          Text(
                            'Permanecer conectado?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String login = _login.text;
                    final String password = _password.text;
                    final Session newSession = Session(0, login, password);
                  },
                ),
                RaisedButton(
                  child: Text('Pular'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
