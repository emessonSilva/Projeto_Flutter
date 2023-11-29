import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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

    // void navigateToListScreen(BuildContext context) {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) =>  ListScreen(),
    //     ),
    //   );
    // }

    // void navigateToAddMovieScreen(BuildContext context) {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => HomeScreen(),
    //     ),
    //   );
    // }

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
                        builder: (context) => HomeScreen(),
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

// class Genre {
//   final String name;
//   final String emoji;
//   final int id;

//   Genre({required this.name, required this.emoji, required this.id});
// }

// class GenreScreen extends StatefulWidget {
//   const GenreScreen({super.key, Key? keys});

//   @override
//   _GenreScreenState createState() => _GenreScreenState();
// }

// class _GenreScreenState extends State<GenreScreen> {
//   final List<Genre> selectedGenres = [];

//   final List<Genre> genres = [
//     Genre(name: 'Musical', emoji: '🎶', id: 1),
//     Genre(name: 'Ação', emoji: '💥', id: 2),
//     Genre(name: 'Comédia', emoji: '🤣', id: 3),
//     Genre(name: 'Romance', emoji: '🥰', id: 4),
//     Genre(name: 'Drama', emoji: '😳', id: 5),
//     Genre(name: 'Ficção Científica', emoji: '👽', id: 6),
//     Genre(name: 'Animação', emoji: '😄', id: 7),
//     Genre(name: 'Fantasia', emoji: '😴', id: 8),
//     Genre(name: 'Documentário', emoji: '📖', id: 9),
//     Genre(name: 'Terror', emoji: '😱', id: 10),
//     Genre(name: 'Aventura', emoji: '🤠', id: 11),
//     Genre(name: 'História', emoji: '🦖', id: 12),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     int halfLength = (genres.length / 2).ceil();
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: const EdgeInsets.only(
//               top: 8,
//               left: 8,
//               right: 50,
//             ),
//             child: Row(
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.arrow_back),
//                   onPressed: () {
//                     Navigator.of(context).pop(); // Voltar para a tela anterior
//                   },
//                   color: const Color(0xFF5E548E),
//                   iconSize: 30,
//                 ),
//                 Expanded(
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(top: 14),
//                         width: 34,
//                         height: 34,
//                         child: Image.asset('assets/images/img_claquete.png'),
//                       ),
//                       Container(
//                         margin: const EdgeInsets.only(top: 6),
//                         child: Text(
//                           'ClackMovie',
//                           style: GoogleFonts.poppins().copyWith(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(45),
//             child: Text(
//               'Quais tipos de filmes você gosta?',
//               style: GoogleFonts.poppins(fontSize: 18),
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: halfLength,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: const EdgeInsets.all(10.0),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: selectedGenres.any(
//                                     (genre) => genre.id == genres[index].id)
//                                 ? const Color(0xFF5E548E)
//                                 : Colors.black26,
//                           ),
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         child: InkWell(
//                           onTap: () {
//                             setState(() {
//                               int i = selectedGenres.indexWhere(
//                                   (genre) => genre.id == genres[index].id);
//                               if (i == -1) {
//                                 selectedGenres.add(genres[index]);
//                               } else {
//                                 selectedGenres.removeAt(i);
//                               }
//                             });
//                           },
//                           child: Card(
//                             child: Row(
//                               children: [
//                                 Text(
//                                   genres[index].emoji,
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                                 SizedBox(width: 16),
//                                 Text(genres[index].name),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: halfLength,
//                     itemBuilder: (context, index) {
//                       int newIndex = index + halfLength;
//                       return Container(
//                         margin: const EdgeInsets.all(10.0),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: selectedGenres.any(
//                                     (genre) => genre.id == genres[newIndex].id)
//                                 ? const Color(0xFF5E548E)
//                                 : Colors.black26,
//                           ),
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         child: InkWell(
//                           onTap: () {
//                             setState(() {
//                               int i = selectedGenres.indexWhere(
//                                   (genre) => genre.id == genres[newIndex].id);
//                               if (i == -1) {
//                                 selectedGenres.add(genres[newIndex]);
//                               } else {
//                                 selectedGenres.removeAt(i);
//                               }
//                             });
//                           },
//                           child: Card(
//                             child: Row(
//                               children: [
//                                 Text(
//                                   genres[newIndex].emoji,
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                                 SizedBox(width: 16),
//                                 Text(genres[newIndex].name),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.all(
//               80,
//             ),
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         GenreScreen(), //mudar para a página de recomendação de filmes quando for criada
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xFF5E548E),
//                 minimumSize: const Size(250, 50),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: Text(
//                 'Continuar',
//                 style: GoogleFonts.poppins().copyWith(
//                   fontSize: 18,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////////////////////////////////////////

//Tela de Recomendação

/////////////////////////////////////////////////////////////////////////////////////

//Tela Home

class Movie {
  final String title;
  final String imgPath;

  Movie({
    required this.title,
    required this.imgPath,
  });
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, Key? keys});

  final List<Movie> movies = [
    Movie(
      title: 'Pânico 6',
      imgPath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyvwZbtzQpeflX71rForQScUVAQC_UrOX14g&usqp=CAU',
    ),
    Movie(
      title: 'Halloween - O início',
      imgPath:
          'https://tse2.mm.bing.net/th?id=OIP.9Jpo7iU5VcteZvrOiiwhcQHaEK&pid=Api&P=0&h=180',
    ),
    Movie(
      title: 'Hereditário',
      imgPath:
          'https://tse4.mm.bing.net/th?id=OIP.LrMjPj44OlIfMxYJnDdcAwHaEK&pid=Api&P=0&h=180',
    )
  ];

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = 2;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 40.0, 8.0, 8.0),
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
                        child: const Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(
                              Icons.search,
                              color: Color(0xFF7D7D7D),
                            ),
                            SizedBox(width: 8),
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
                    SizedBox(width: 6),
                    IconButton(
                      icon: Icon(
                        Icons.filter_alt_rounded,
                        color: Color(0xFF9F86C0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: Text(
                'MEUS FILMES',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return movieCard(movies[index]);
              },
              childCount: movies.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Color(0xFF9F86C0), size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Color(0xFF9F86C0),
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.format_list_bulleted_add,
                  color: Color(0xFF9F86C0), size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.add_box_outlined,
                  color: Color(0xFF9F86C0), size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMovieScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget movieCard(Movie movie) {
    return GestureDetector(
      onTap: () {
        // Navigate to the movie details screen
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              movie.imgPath,
              fit: BoxFit.cover,
              height: 120.0,
            ),
            SizedBox(height: 4),
            Text(
              movie.title,
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

////////////////////////////////////////////////////////////////////

//Tela de listas

class ListScreen extends StatelessWidget {
  const ListScreen({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              // Texto "Minhas Listas"
              Container(
                margin: const EdgeInsets.only(),
                child: Text(
                  'Minhas Listas',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FavoriteMoviesScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  const Color(0xFF9F86C0),
                    minimumSize: const Size(300, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Favoritos',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WatchedMoviesScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  const Color(0xFF9F86C0),
                    minimumSize: const Size(300, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Assistidos ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => UnwatchedMoviesScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  const Color(0xFF9F86C0),
                    minimumSize: const Size(300, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Não Assistidos',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
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

//////////////////////////////////////////////////////////////////////////

//Tela da Lista Assistidos 

class WatchedMovies {
  final String title;
  final String genre;
  final String director;
  final String cast;
  final String plot;
  final String rate;
  final String imgPath;

  WatchedMovies(this.title, this.genre, this.director, this.cast, this.plot,
      this.rate, this.imgPath);
}

class WatchedMoviesScreen extends StatelessWidget {
  const WatchedMoviesScreen({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    List<WatchedMovies> movies = [
      WatchedMovies(
          'Pânico 6',
          'Terror',
          ' Matt Bettinelli-Olpin e Tyler Gillett',
          'Melissa Barrera, Jenna Ortega, ...',
          'Sam, Tara, Mindy, e Chad, sobreviventes do massacre em Woodsboro, mudam-se para Nova York para recomeçar. No entanto, o assassino com a máscara de fantasma reaparece na cidade, causando pânico. Enquanto tentam deixar o passado traumático para trás, os quatro enfrentam um Ghostface com novos truques, desafiando suas experiências anteriores.',
          '5/5',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyvwZbtzQpeflX71rForQScUVAQC_UrOX14g&usqp=CAU'),
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Go back to the previous screen
              },
              color: const Color(0xFF5E548E),
              iconSize: 30,
            ),
            title: Container(
              margin: const EdgeInsets.only(left: 60),
              child: Text(
                'Assistidos',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            expandedHeight: 50.0,
          ),
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 8.0, 0.0),
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
                        child: const Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(
                              Icons.search,
                              color: Color(0xFF7D7D7D),
                            ),
                            SizedBox(width: 8),
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
                    SizedBox(width: 6),
                    IconButton(
                      icon: Icon(
                        Icons.filter_alt_rounded,
                        color: Color(0xFF9F86C0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieDetailsScreen(
                          movie: movies[index],
                        ),
                      ),
                    );
                  },
                  child: MovieCard(movies[index]),
                );
              },
              childCount: movies.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget MovieCard(WatchedMovies movie) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Image.network(
          movie.imgPath,
          width: 100.0,
          height: 72.0,
          fit: BoxFit.cover,
        ),
        title: Text(
          movie.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Avaliação: ${movie.rate}',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            // aqui implementar a função do ícone da lixeira
          },
        ),
      ),
    );
  }
}

class MovieDetailsScreen extends StatelessWidget {
  final WatchedMovies movie;

  MovieDetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Go back to the previous screen
              },
              color: const Color(0xFF5E548E),
              iconSize: 30,
            ),
            title: Text(movie.title),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    movie.imgPath,
                    width: 380.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                  ),
                  Text(
                    movie.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Gênero: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.genre}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Direção: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.director}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Atuação: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.cast}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Text(
                        'Enredo: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 9),
                        width: MediaQuery.of(context).size.width - 20,
                        child: Text(
                          '${movie.plot}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Avaliação: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.rate}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////

//Tela Não Assistidos

class UnwatchedMovies {
  final String title;
  final String genre;
  final String director;
  final String cast;
  final String plot;
  final String rate;
  final String imgPath;

  UnwatchedMovies(this.title, this.genre, this.director, this.cast, this.plot,
      this.rate, this.imgPath);
}

class UnwatchedMoviesScreen extends StatelessWidget {
  const UnwatchedMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<UnwatchedMovies> movies = [
      UnwatchedMovies(
        'Hereditário',
        'Terror Psicológico',
        'Ari Aster',
        'Toni Collette, Gabriel Byrne, ...',
        'A família Graham, após a morte da avó, confronta segredos sombrios. Lidando com a dor, Annie e sua filha exploram o sobrenatural, enquanto a matriarca continua a influenciar a casa. À medida que o terror cresce, revelações perturbadoras ligam experiências sobrenaturais aos traumas geracionais da família.',
        '1/5',
        'https://tse2.explicit.bing.net/th?id=OIP.GIQ7nuEpMHqwxQcSBdxjiQHaD4&pid=Api&P=0&h=180',
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
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
            title: Container(
              margin: const EdgeInsets.only(left: 50),
              child: Text(
                'Não Assistidos',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            expandedHeight: 50.0,
          ),
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 8.0, 0.0),
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
                        child: const Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(
                              Icons.search,
                              color: Color(0xFF7D7D7D),
                            ),
                            SizedBox(width: 8),
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
                    SizedBox(width: 6),
                    IconButton(
                      icon: Icon(
                        Icons.filter_alt_rounded,
                        color: Color(0xFF9F86C0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UnwatchedMovieDetailsScreen(
                          movie: movies[index],
                        ),
                      ),
                    );
                  },
                  child: MovieCard(movies[index]),
                );
              },
              childCount: movies.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget MovieCard(UnwatchedMovies movie) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Image.network(
          movie.imgPath,
          width: 100.0,
          height: 72.0,
          fit: BoxFit.cover,
        ),
        title: Text(
          movie.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Avaliação: ${movie.rate}',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class UnwatchedMovieDetailsScreen extends StatelessWidget {
  final UnwatchedMovies movie;

  UnwatchedMovieDetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: const Color(0xFF5E548E),
              iconSize: 30,
            ),
            title: Text(movie.title),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    movie.imgPath,
                    width: 380.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                  ),
                  Text(
                    movie.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Gênero: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.genre}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Direção: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.director}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Atuação: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.cast}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Text(
                        'Enredo: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 9),
                        width: MediaQuery.of(context).size.width - 20,
                        child: Text(
                          '${movie.plot}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Avaliação: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.rate}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////

//Tela Favoritos

class FavoriteMovies {
  final String title;
  final String genre;
  final String director;
  final String cast;
  final String plot;
  final String rate;
  final String imgPath;

  FavoriteMovies(this.title, this.genre, this.director, this.cast, this.plot,
      this.rate, this.imgPath);
}

class FavoriteMoviesScreen extends StatelessWidget {
  const FavoriteMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FavoriteMovies> movies = [
      FavoriteMovies(
        'Halloween - O início',
        'Terror',
        'Rob Zombie',
        'Malcolm McDowell, Brad Dourif, ...',
        'Michael Myers, traumatizado desde a infância, foge de uma clínica psiquiátrica após 15 anos. Usando uma máscara, retorna a Haddonfield na véspera do Dia das Bruxas para se vingar. Seu passado inclui assassinatos e uma infância perturbadora, marcada por maus-tratos a animais e o assassinato de sua família no Dia das Bruxas. Agora, em silêncio, ele busca vingança na cidade onde tudo começou.',
        '4.5/5',
        'https://tse2.mm.bing.net/th?id=OIP.9Jpo7iU5VcteZvrOiiwhcQHaEK&pid=Api&P=0&h=180',
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: const Color(0xFF5E548E),
              iconSize: 30,
            ),
            title: Container(
              margin: const EdgeInsets.only(left: 60),
              child: Text(
                'Favoritos',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            expandedHeight: 50.0,
          ),
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 8.0, 0.0),
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
                        child: const Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(
                              Icons.search,
                              color: Color(0xFF7D7D7D),
                            ),
                            SizedBox(width: 8),
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
                    SizedBox(width: 6),
                    IconButton(
                      icon: Icon(
                        Icons.filter_alt_rounded,
                        color: Color(0xFF9F86C0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavoriteMovieDetailsScreen(
                          movie: movies[index],
                        ),
                      ),
                    );
                  },
                  child: MovieCard(movies[index]),
                );
              },
              childCount: movies.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget MovieCard(FavoriteMovies movie) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Image.network(
          movie.imgPath,
          width: 100.0,
          height: 72.0,
          fit: BoxFit.cover,
        ),
        title: Text(
          movie.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Avaliação: ${movie.rate}',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class FavoriteMovieDetailsScreen extends StatelessWidget {
  final FavoriteMovies movie;

  FavoriteMovieDetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: const Color(0xFF5E548E),
              iconSize: 30,
            ),
            title: Text(movie.title),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    movie.imgPath,
                    width: 380.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                  ),
                  Text(
                    movie.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Gênero: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.genre}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Direção: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.director}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Atuação: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.cast}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Text(
                        'Enredo: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 9),
                        width: MediaQuery.of(context).size.width - 20,
                        child: Text(
                          '${movie.plot}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                      ),
                      Text(
                        'Avaliação: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${movie.rate}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////

//Tela Adicionar Filme
class AddMovieScreen extends StatefulWidget {
  const AddMovieScreen({Key? key}) : super(key: key);

  @override
  _AddMovieScreenState createState() => _AddMovieScreenState();
}

class _AddMovieScreenState extends State<AddMovieScreen> {
  String selectedOption = ''; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Container(
          margin: const EdgeInsets.only(left: 40),
          child: Text(
            'Adicionar Filme',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return {'Assistidos', 'Favoritos', 'Não Assistidos'}
                  .map((choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
            onSelected: (String value) {
              // Lógica para lidar com a escolha selecionada
              setState(() {
                selectedOption = value;
              });
              print('Selecionado: $value');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: ClipRRect(
                  child: Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                    ),
                    child: const Icon(
                      Icons.movie,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Título',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Gênero',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Direção',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Atuação',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enredo',
                ),
              ),
              SizedBox(height: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Avaliação',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xFF646464),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: RatingBar.builder(
                            initialRating: 0,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 30,
                            itemPadding: EdgeInsets.only(right: 8),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          OptionList(context);
                        },
                        child: Icon(
                          Icons.add_circle_rounded,
                          size: 30,
                          color: const Color(0xFF646464),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 26),
              Container(
                margin: const EdgeInsets.only(
                  left: 60,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
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
                    'Salvar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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

  // Função para mostrar as opções de avaliação ao clicar no ícone de mais
void OptionList(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext builder) {
      return Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.circle,
                  color: selectedOption == 'Assistidos'
                      ? const Color(0xFF5E548E)
                      : const Color(0xFF646464)),
              title: Text('Assistidos'),
              onTap: () {
                // Lógica para lidar com a escolha "Assistidos"
                setState(() {
                  selectedOption = 'Assistidos';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.circle,
                  color: selectedOption == 'Favoritos'
                      ? const Color(0xFF5E548E)
                      : const Color(0xFF646464)),
              title: Text('Favoritos'),
              onTap: () {
                // Lógica para lidar com a escolha "Favoritos"
                setState(() {
                  selectedOption = 'Favoritos';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.circle,
                  color: selectedOption == 'Não Assistidos'
                      ? const Color(0xFF5E548E)
                      : const Color(0xFF646464)),
              title: Text('Não Assistidos'),
              onTap: () {
                // Lógica para lidar com a escolha "Não Assistidos"
                setState(() {
                  selectedOption = 'Não Assistidos';
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
}


//////////////////////////////////////////////////////////////////////

//Tela de Perfil

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, Key? keys});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Sair',
                style: TextStyle(
                  color: const Color(0xFF646464),
                  fontSize: 18 ,
                ),
              ),
            ),
          ],
          title: Container(
            margin: const EdgeInsets.only(left: 70),
            child: Text(
              'Meu Perfil',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Editar foto de perfil',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF646464),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9F86C0),
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  ' Editar dados',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9F86C0),
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  ' Perguntas frequentes',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
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