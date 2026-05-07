import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenLogin extends StatelessWidget {
  static const String name = 'login';
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: vistaDeLog(),
    );
  }
}

class vistaDeLog extends StatefulWidget {
  @override
  State<vistaDeLog> createState() => _vistaDeLogState();
}

class _vistaDeLogState extends State<vistaDeLog> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String muestraRespuesta = 'Ingrese su cuenta';
  String analisisPass = '';
  String analisisUser = '';
  String username = 'sergio';
  String password = 'sergio12345';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,child: Text(muestraRespuesta, style: TextStyle(fontSize: 24),)),
          SizedBox(width: 160, height:90, child: TextField(controller: usernameController, 
            decoration: InputDecoration(labelText: 'Usuario'),
            ),
           ),
          SizedBox(width: 160, height: 50, child: TextField(obscureText: true, controller: passwordController,
            decoration: InputDecoration(labelText: 'Contraseña'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(height: 50, child: ElevatedButton(style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 5,
              )
            ),onPressed: () {
               
              final inputUser = usernameController.text;
              final inputPass = passwordController.text;
            
              if(inputUser.isNotEmpty){
                if (inputPass.isNotEmpty){
                  analisisUser = inputUser;
                  analisisPass = inputPass;
                  if(analisisUser == username){
                    if (analisisPass == password){
                      context.push('home');
                    } else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Contraseña no válida'),
                          backgroundColor: Colors.red,
                          duration: const Duration(seconds: 2),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Usuario no válido'),
                        backgroundColor: Colors.red,
                        duration: const Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                } else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Ingrese una contraseña'),
                      backgroundColor: const Color.fromARGB(255, 51, 155, 253),
                      duration: const Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Ingrese un usuario'),
                    backgroundColor: const Color.fromARGB(255, 51, 155, 253),
                    duration: const Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
              setState(() {});
              }, child: Text('Login'),),
            ),
          ),
        ],
      ),
    );
  }
}