
import 'package:flutter/material.dart';
import 'package:loginapp/components/my_button.dart';
import 'package:loginapp/components/option_button.dart';
import 'package:loginapp/components/text_field.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
            const SizedBox(height: 50,),
                Icon(
                  Icons.person,
                  size: 100,
                ),
              const SizedBox(height: 50,),
              
              Text('Welcome back!!',style: TextStyle(color: Colors.grey[1000],fontSize: 16),),

              const SizedBox(height: 25,),

              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10,),

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(('Forgot password?'),style: TextStyle(color: Colors.grey[600]),),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',
                      style: TextStyle(color: Colors.grey[700]
                        ,),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SignInButton(imagePath: 'lib/this.png',),
                  SizedBox(width: 10,),
                  SignInButton(imagePath: 'lib/2nd.png'),
                  SizedBox(width: 10,),
                  SignInButton(imagePath: 'lib/gh.png')
                ],
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?'),
                  const SizedBox(width: 4,),
                  Text('Register Now',
                    style: TextStyle(color: Colors.blueGrey[900],fontWeight: FontWeight.bold),),
                  ],
              ),
          ],
          ),
        ),
      ),
    );
  }
}