import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  final _formKey = GlobalKey<FormState>(); // Ключ управления формой
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Поле не может быть пустым';
                    } else if (!value.contains('@')) {
                      return 'Неверный формат email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Пароль должен быть не менее 6 символов';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(
                          () {
                            _isChecked = newValue!;
                          },
                        );
                      },
                      activeColor: Colors.lightBlue,
                    ),
                    Text('Я согласен с условиями пользования'),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (!_isChecked) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Необходимо согласится с условиями'),
                        ),
                      );
                      return;
                    }

                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Выполнено!'),
                        ),
                      );
                    }
                    String pass = _passwordController.text;
                    print('Пароль: $pass');
                  },
                  child: Text('Отправить'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
