import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Yehismar',
      'last_name': 'Carvajal',
      'email': 'yehismar@google.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
            
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', keyboardType: TextInputType.text, formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30),
            
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', keyboardType: TextInputType.text, formProperty: 'last_name', formValues: formValues),
                const SizedBox(height: 30),
            
                CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox(height: 30),
            
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true , formProperty: 'password', formValues: formValues),
                const SizedBox(height: 30),

                DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(value: 'admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'super_user', child: Text('SuperUser')),
                      DropdownMenuItem(value: 'developer', child: Text('Developer')),
                      DropdownMenuItem(value: 'jr_developer', child: Text('Jr. Developer')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'admin';
                    }
                ),
                const SizedBox(height: 30),
            
                ElevatedButton(
                    onPressed: () {

                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }

                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))
                    )
                )
            
              ],
            ),
          ),
        ),
      )
    );
  }
}



