import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClackMovie',
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color(0xFF5E548E); // Cor #5E548E

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Remove o fundo.
        elevation: 0, // Remove a sombra da barra de aplicativo.
        title: Text(
          'ClackMovie',
          style: TextStyle(
            fontSize: 40, // Tamanho do título.
            color: Colors.black, // Cor preta para o título.
          ),
        ),
        centerTitle: true, // Centraliza o título na barra de aplicativo.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Align(
                alignment: Alignment.centerLeft, // Alinha o texto à esquerda.
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black, // Cor preta para o título.
                  ),
                ),
              ),
            ),
            const SizedBox(
                height: 20), // Espaço entre o título e os campos de entrada.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nome de Usuário',
                ),
              ),
            ),
            const SizedBox(
                height:
                    10), // Espaço entre o campo de nome de usuário e a senha.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
            ),
            const SizedBox(
                height:
                    30), // Espaço entre os campos de entrada e o botão "Entrar".
            ElevatedButton(
              onPressed: () {
                // Adicione a lógica de autenticação aqui.
              },
              style: ElevatedButton.styleFrom(
                primary: buttonColor, // Cor de fundo roxa (#5E548E).
                minimumSize: Size(200, 50), // Largura e altura do botão.
              ),
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
