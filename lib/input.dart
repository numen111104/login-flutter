import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 3, 23, 173)),
        useMaterial3: true,
      ),
      home: const WidgetInput(),
    );
  }
}

class WidgetInput extends StatelessWidget {
  const WidgetInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Jenis Input'),
      ),
      body: const JenisInput(),
    );
  }
}

class JenisInput extends StatefulWidget {
  const JenisInput({super.key});

  @override
  State<JenisInput> createState() => _JenisInputState();
}

class _JenisInputState extends State<JenisInput> {
  String _name = "";
  String? _food;
  bool _isEnabled = true;
  bool _setuju = true;
  final TextEditingController _controllerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // print(_isEnabled);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name onChanged',
            ),
            onChanged: (String value) {
              setState(() {
                _name = value;
              });
            },
          ),
        ),
        const SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(_name),
                );
              },
            );
          },
          child: const Text("Sumbit onChanged"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextField(
            controller: _controllerName,
            decoration: const InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name Controller',
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(_controllerName.text),
                );
              },
            );
          },
          child: const Text("Sumbit Controller"),
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: _isEnabled,
              onChanged: (bool value) {
                setState(() {
                  _isEnabled = value;
                  if (_isEnabled) {
                    showSnackbar("Enabled");
                  } else {
                    showSnackbar("Disabled");
                  }
                });
              },
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          alignment: Alignment.centerLeft,
          child: const Text(
            'Pilih makanan favoritmu :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: [
            ListTile(
              leading: Radio<String>(
                value: 'Soto Ayam',
                groupValue: _food,
                onChanged: (String? value) {
                  setState(() {
                    _food = value;
                    showSnackbar(_food!);
                  });
                },
              ),
              title: const Text("Soto Ayam"),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Mie Ayam',
                groupValue: _food,
                onChanged: (String? value) {
                  setState(() {
                    _food = value;
                    showSnackbar(_food!);
                  });
                },
              ),
              title: const Text("Mie Ayam"),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: const Text("Setuju / Tidak Setuju"),
              leading: Checkbox(
                value: _setuju,
                onChanged: (bool? value) {
                  setState(() {
                    _setuju = value!;
                    if (_setuju) {
                      showSnackbar("Setuju");
                    } else {
                      showSnackbar("Tidak Setuju");
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  void showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}