import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        //key: _validateRegister,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 40,),

                Text("Cadastro", style: TextStyle(
                  fontSize: 24,
                )),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
                  child: MaterialButton(
                    child: Icon(Icons.photo_camera, size: 100,color: Colors.black38,),
                    onPressed: (){},
                    color: Colors.black12,
                    height: 150,
                    minWidth: 150,
                    ),
                ),

                  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintText: "Nome",
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
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintText: "CPF",
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
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintText: "Email",
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
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            filled: true,
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
                        onPressed: (){
                          Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
                        },
                        elevation: 8,
                        minWidth: 800,
                        color: Colors.red,
                        child: Text("Cadastrar", style: TextStyle(
                          color: Colors.white,
                        ),),
                        ),
                    ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}