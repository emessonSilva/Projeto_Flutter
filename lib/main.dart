import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ClackMovie',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color(0xFF5E548E);

    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Imagem do app
            Container(
              margin: const EdgeInsets.only(
                top: 60,
              ),
              width: 150,
              height: 150,
              child: Image.asset('assets/images/img_claquete.png'),
            ),

            //Nome do app
            Container(
              margin: const EdgeInsets.only(top: 2),
              child: const Text(
                'ClackMovie',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ),

            //Texto de Login
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),

            //Texto de Email ou Nome de Usuário
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email ou Nome de Usuário',
                    prefixIcon: Icon(
                      Icons.alternate_email_rounded,
                      color: Color(0xFF9F86C0),
                    ),
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ),

            //Texto de Senha
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(
                      Icons.lock_rounded,
                      color: Color(0xFF9F86C0),
                    ),
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ),

            //Texto de Esqueceu a senha?
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                'Esqueceu a senha?',
                style: TextStyle(
                    fontSize: 14.5,
                    color: Color(0xFF646464),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            ),

            //Botão e o texto dentro(Entrar)
            Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  minimumSize: const Size(250, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                ),
              ),
            ),

            //Texto de Ainda não tem cadastro? Registre-se
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              child: const Text(
                'Ainda não tem cadastro? Registre-se',
                style: TextStyle(
                    fontSize: 14.5,
                    color: Color(0xFF646464),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
