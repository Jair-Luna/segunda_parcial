import 'package:flutter/material.dart';
import 'package:segunda_parcial/pages/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.0, 1.0),
            colors: <Color>[
              Color(0xffa7f2e5),
              Color(0xff349e8c),
            ],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              separador(),
              Expanded(
                child: Image.asset('assets/doctor-B.png'),
              ),
              separador(),
              const Text(
                'Jair Luna',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              separador(),
              const Text(
                'LogIn',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              separador(),
              const Text(
                'Usuario',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              separador(),
              const Text(
                'Contraseña',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                obscureText: true,
              ),
              separador(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Ingreso'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350.0, 50.0),
                  primary: const Color(0xff076656),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      '¿No tienes una cuenta?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: const Text('Regístrate'),
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        primary: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget separador() {
    return const SizedBox(
      height: 20.0,
      width: 20.0,
    );
  }
}
