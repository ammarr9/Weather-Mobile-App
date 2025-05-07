import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather/screens/sign_up.dart';
import 'package:weather/screens/search_screen.dart';
import 'package:weather/Provider/registeration_provider.dart';
import 'package:weather/Widget/custom_text_field.dart';


class LoginPage extends StatelessWidget
{
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Login", style: TextStyle(fontSize: 24)),
        ),
        leading: const Icon(Icons.menu),
        actions: const
        [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            const SizedBox(height: 40),
            CustomTextField(
              controller: emailController,
              labelText: "Email",
              icon: Icons.email,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: passwordController,
              labelText: "Password",
              icon: Icons.remove_red_eye_rounded,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Consumer<RegisterProvider>(
              builder: (context, value, child)
              {
                return  ElevatedButton(
                        onPressed: () async
                        {
                          if (formKey.currentState!.validate())
                          {
                            await value.logUser(
                              email: emailController.text,
                              password: passwordController.text,
                            );

                            if(value.userModel?.status == true)
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
                            }
                          }
                        },
                        child: const Text("Login"),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
