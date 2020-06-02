import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:pizzagarcia/app/pages/register/register_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),

            Text("L & E", style: TextStyle(
              fontSize: 30,
            ),),
            Text("Sabores e Cia", style: TextStyle(
              fontSize: 30,
            ),),

            SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Usuário",
                        ),
                        validator: (value) {
                          if (value.isEmpty){
                            return "Insira um usuário válido!";
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.vpn_key),
                          border: InputBorder.none,
                          hintText: "Senha",
                        ),
                        validator: (value) {
                          if (value.isEmpty){
                            return "Insira uma senha válida";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: (){},
                        elevation: 8,
                        minWidth: 800,
                        color: Colors.red,
                        child: Text("Entrar", style: TextStyle(
                          color: Colors.white,
                        ),),
                        ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("OU"),
                    ),

                    SignInButton(
                      Buttons.Facebook, 
                      text: "Entrar com Facebook", 
                      onPressed: (){}
                      ),
                      SignInButton(
                      Buttons.GoogleDark, 
                      text: "Entrar com Google", 
                      onPressed: (){}
                      )
                  ],
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  hoverColor: Colors.white,
                  onPressed: (){
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text("Ainda não é Cadastrado?", style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}