import 'package:flutter/material.dart';
import 'package:mycalcourse/main.dart';

final TextEditingController budget = TextEditingController();

class SaisieBudget extends StatefulWidget {
  const SaisieBudget({Key? key}) : super(key: key);

  @override
  State<SaisieBudget> createState() => _SaisieBudgetState();
}

class _SaisieBudgetState extends State<SaisieBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  'Bonjour',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF6200EE),
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'DANIELLA ti sousaoute',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
              child: TextFormField(
                controller: budget,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Votre Budget',
                  labelStyle: TextStyle(
                    color: Color(0xFF6200EE),
                  ),
                  helperText: 'Saisissez votre montant de départ',
                  suffixIcon: Icon(
                    Icons.euro,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const courseCalc(),
                    ),
                  );
                  // Respond to button press
                },
                icon: Icon(Icons.euro, size: 18),
                label: Text(
                  "JE VALIDE",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Text('version beta 1.0'),
          ),
        ],
      ),
    );
  }
}
