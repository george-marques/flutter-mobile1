import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app/AppController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de FIIS', style: TextStyle(fontSize: 25)),

        actions: const [
          MudarTema(),
        ],
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Código ou Nome',
                ),
                style: const TextStyle(fontSize: 20),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe o Código ou Nome do fundo';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Quantidade ',
                ),
                style: const TextStyle(fontSize: 20),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe a quantidade do fundo';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Preço',
                ),
                style: const TextStyle(fontSize: 20),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe o preço do fundo';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Data da compra',
                ),
                style: const TextStyle(fontSize: 20),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe a data da compra do fundo';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child:
                      const Text('Adicionar', style: TextStyle(fontSize: 15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MudarTema extends StatelessWidget {
  const MudarTema({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
