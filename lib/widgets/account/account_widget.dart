import 'package:flutter/material.dart';

class AccountWidget extends StatefulWidget {
  const AccountWidget({super.key});

  final String usernameLogged = '';

  @override
  State createState() {
    return RegisterFormState();
  }

}

class RegisterFormState extends State<AccountWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textController = TextEditingController();

  String _username = '';

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget> [
          TextFormField(
            controller: _textController,
            decoration: const InputDecoration(labelText: 'Username'),
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Password'),
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  _username = _textController.text;
                });
              }
            },
            child: const Text('Submit'),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget> [
                Image.network(
                  _username.isNotEmpty && _username == 'funix' ? 'https://static-cdn.jtvnw.net/jtv_user_pictures/9e7d8fd1-b0c4-4470-b040-1d7c13f444f2-profile_image-300x300.png' : 'https://static.vecteezy.com/system/resources/previews/008/442/086/original/illustration-of-human-icon-user-symbol-icon-modern-design-on-blank-background-free-vector.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Text(
                  'Utilisateur $_username',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
