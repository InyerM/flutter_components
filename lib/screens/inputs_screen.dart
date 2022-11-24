import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                CustomInputField(
                  label: 'First name',
                  placeholder: 'Enter your first name',
                  helperText: 'Please enter your first name',
                  icon: Icons.account_circle,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  label: 'Lastname',
                  placeholder: 'Enter your last name',
                  helperText: 'Please enter your last name',
                  icon: Icons.account_circle,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  label: 'Email',
                  placeholder: 'Enter your email',
                  helperText: 'Please enter your email',
                  icon: Icons.alternate_email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  label: 'Password',
                  placeholder: 'Enter your password',
                  helperText: 'Please enter your password',
                  icon: Icons.lock,
                  suffixIcon: Icons.visibility,
                  keyboardType: TextInputType.visiblePassword,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                    value: 'Admin',
                    icon: const Icon(Icons.arrow_drop_down),
                    decoration: const InputDecoration(
                      labelText: 'Role',
                      hintText: 'Select your role',
                      helperText: 'Please select your role',
                      icon: Icon(Icons.supervised_user_circle),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Super user',
                        child: Text('Super user'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'User',
                        child: Text('User'),
                      ),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    }),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print(formValues);
                      }
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                            child:
                                Text('Save', style: TextStyle(fontSize: 20))))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
