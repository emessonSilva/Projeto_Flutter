import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ClackMovie',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color(0xFF5E548E);
    // Color themeColor = const Color(0xFF9F86C0);

    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 60,
              ),
              width: 150,
              height: 150,
              child: Image.asset('assets/img_claquete.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'ClackMovie',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
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
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nome de Usuário',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Esqueceu a senha?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
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
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              child: const Text(
                'Ainda não tem cadastro? Registre-se',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
