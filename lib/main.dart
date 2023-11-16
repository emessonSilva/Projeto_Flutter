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
    void navigateToRegisterScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        ),
      );
    }

    void navigateToPasswordRecoveryScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const PasswordRecoveryScreen(),
        ),
      );
    }

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
              child: InkWell(
                onTap: navigateToPasswordRecoveryScreen,
                child: const Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                      fontSize: 14.5,
                      color: Color(0xFF646464),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
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
                  backgroundColor: const Color(0xFF5E548E),
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
              margin: const EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: navigateToRegisterScreen,
                child: const Text(
                  'Ainda não tem cadastro? Registre-se',
                  style: TextStyle(
                    fontSize: 14.5,
                    color: Color(0xFF646464),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Tela de cadastro

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key, Key? keys});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  right: 320,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop(); // Voltar para a tela anterior
                  },
                  color: const Color(0xFF5E548E),
                  iconSize: 30,
                ),
              ),

              // Texto "Cadastre-se"
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                child: const Text(
                  'Cadastre-se',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),

              // Texto Nome de Usuário
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome de Usuário',
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Color(0xFF9F86C0),
                      ),
                      labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),

              //Texto Número de telefone
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Número de telefone',
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xFF9F86C0),
                      ),
                      labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),

              //Texto Email
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
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

              //Texto Senha
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
              //Botão Cadastrar
              Container(
                margin: const EdgeInsets.only(
                  top: 50,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => GenreScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5E548E),
                    minimumSize: const Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                  ),
                ),
              ),

              //Texto Já possui uma conta? Entre
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop(); // Retorna à tela anterior
                  },
                  child: const Text(
                    'Já possui uma conta? Entre',
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Color(0xFF646464),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
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

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Tela de recuperar a senha

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //AppBar para colocar a seta
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Voltar para a tela anterior
            },
            color: const Color(0xFF5E548E),
            iconSize: 30,
          ),
        ),
        body: SingleChildScrollView(
            reverse: true,
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  // Texto "Cadastre-se"
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 20),
                    child: const Text(
                      'Recuperar senha',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ]))));
  }
}

////////////////////////////////////////////////////////////////////////////////////////////

//Tela de escolha de gêneros
class GenreScreen extends StatefulWidget {
  const GenreScreen({Key? key}) : super(key: key);

  @override
  _GenreScreenState createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  final List<bool> _isSelected = List.generate(12, (_) => false);
  final List<String> genres = [
    'Suspense',
    'Ação',
    'Comédia',
    'Romance',
    'Drama',
    'Ficção Científica',
    'Animação',
    'Fantasia',
    'Documentário',
    'Mistério',
    'Aventura',
    'Thriller',
  ];

  @override
  Widget build(BuildContext context) {
    int halfLength = (genres.length / 2).ceil();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 8,
              left: 8,
              right: 50,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop(); // Voltar para a tela anterior
                  },
                  color: const Color(0xFF5E548E),
                  iconSize: 30,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 14),
                        width: 34,
                        height: 34,
                        child: Image.asset('assets/images/img_claquete.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        child: const Text(
                          'ClackMovie',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(45),
            child: Text(
              'Quais tipos de filmes você gosta?',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: halfLength,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: _isSelected[index]
                                ? Colors.amber
                                : Colors.black26,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _isSelected[index] = !_isSelected[index];
                            });
                          },
                          child: Card(
                            child: Row(
                              children: [
                                Icon(Icons.movie),
                                SizedBox(width: 16),
                                Text(genres[index]),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: halfLength,
                    itemBuilder: (context, index) {
                      int newIndex = index + halfLength;
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: _isSelected[newIndex]
                                ? Colors.amber
                                : Colors.black26,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _isSelected[newIndex] = !_isSelected[newIndex];
                            });
                          },
                          child: Card(
                            child: Row(
                              children: [
                                Icon(Icons.movie),
                                SizedBox(width: 16),
                                Text(genres[newIndex]),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
