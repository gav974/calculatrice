import 'package:flutter/material.dart';

num budget = 520;

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
            child: Text('Bonjour'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: TextFormField(
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
          ElevatedButton.icon(
            onPressed: () {
              // Respond to button press
            },
            icon: Icon(Icons.add, size: 18),
            label: Text("JE VALIDE"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
