import 'package:flutter/material.dart';
import 'package:segunda_parcial/pages/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                'Registro',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              separador(),
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
                  labelText: 'Su Nombre',
                ),
              ),
              separador(),
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
                  labelText: 'Cédula',
                ),
              ),
              separador(),
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
                  labelText: 'Email',
                ),
              ),
              separador(),
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
                  labelText: 'Contraseña',
                ),
                obscureText: true,
              ),
              separador(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Enviar'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350.0, 50.0),
                  primary: const Color(0xff076656),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              separador(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancelar'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350.0, 50.0),
                  primary: const Color(0xffffffff),
                  onPrimary: const Color(0xff076656),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
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
