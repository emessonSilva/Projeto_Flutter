import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

    void navigateToHomeScreen(BuildContext context) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
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
              child: Text(
                'ClackMovie',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            //Texto de Login
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            //Texto de Email ou Nome de Usuário
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email ou Nome de Usuário',
                        labelStyle: GoogleFonts.poppins(),
                        prefixIcon: Icon(
                          Icons.alternate_email_rounded,
                          color: Color(0xFF9F86C0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Texto de Senha
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: GoogleFonts.poppins(),
                        prefixIcon: Icon(
                          Icons.lock_rounded,
                          color: Color(0xFF9F86C0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Texto de Esqueceu a senha?
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: navigateToPasswordRecoveryScreen,
                child: Text('Esqueceu a senha?',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 14.5,
                      color: Color(0xFF646464),
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),

            //Botão e o texto dentro(Entrar)
            Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
              child: ElevatedButton(
                onPressed: () {
                  navigateToHomeScreen(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5E548E),
                  minimumSize: const Size(250, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Entrar',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            //Texto de Ainda não tem cadastro? Registre-se
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: navigateToRegisterScreen,
                child: Text('Ainda não tem cadastro? Registre-se',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 14.5,
                      color: Color(0xFF646464),
                      fontWeight: FontWeight.w500,
                    )),
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
                child: Text(
                  'Cadastre-se',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // Texto Nome de Usuário
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nome de Usuário',
                          labelStyle: GoogleFonts.poppins(),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Color(0xFF9F86C0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Texto Número de telefone
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Número de Telefone',
                          labelStyle: GoogleFonts.poppins(),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Color(0xFF9F86C0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Texto Email
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: GoogleFonts.poppins(),
                          prefixIcon: Icon(
                            Icons.alternate_email_rounded,
                            color: Color(0xFF9F86C0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Texto Senha
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: GoogleFonts
                              .poppins(), // Aplicando a fonte Poppins
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            color: Color(0xFF9F86C0),
                          ),
                        ),
                      ),
                    ],
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
                  child: Text(
                    'Cadastrar',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 18,
                    ),
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
                  child: Text('Já possui uma conta? Entre',
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 14.5,
                        color: Color(0xFF646464),
                        fontWeight: FontWeight.w500,
                      )),
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
  const GenreScreen({super.key, Key? keys});

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
                        child: Text(
                          'ClackMovie',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(45),
            child: Text(
              'Quais tipos de filmes você gosta?',
              style: GoogleFonts.poppins(fontSize: 18),
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

///////////////////////////////////////////////////////////////////////////////////////

//Tela Home
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 26.0, 8.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 8),
                          Icon(
                            Icons.search,
                            color: Color(0xFF7D7D7D),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Digite o nome do filme',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(
                      Icons.filter_alt_rounded,
                      color: Color(0xFF9F86C0),
                    ),
                    onPressed: () {
                      // Implementar a funcionalidade de filtro aqui
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'RECOMENDAÇÕES',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 22,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1.0,
              ),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return movieCard(
                    'Terrifier 2',
                    'https://t.ctcdn.com.br/ENz3LFCDlWe9-_SPt0us3b19pKM=/640x360/smart/i645465.jpeg',
                    'Descrição do Filme',
                  );
                } else if (index == 1) {
                  return movieCard(
                    'Scream 6',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyvwZbtzQpeflX71rForQScUVAQC_UrOX14g&usqp=CAU',
                    'Descrição do Filme',
                  );
                } else if (index == 2) {
                  return movieCard(
                    'Scream 5',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4jIuF3iCLaT9dJzEsOaNaLUNV8UIE0jCO8g&usqp=CAU',
                    'Descrição do Filme',
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget movieCard(String title, String imgPath, String description) {
    return GestureDetector(
      onTap: () {
        // Navigate to the movie details screen
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              imgPath,
              fit: BoxFit.cover,
              height: 120.0,
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
