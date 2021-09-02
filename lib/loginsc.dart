import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.red,
      ),
      body:Padding(
          padding: const EdgeInsets.all(20.0),
          child:
          Center(
            heightFactor: 100,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                    const Text(
                        'Login',style: TextStyle(fontSize: 30.0,)),
                  const SizedBox(
                    height: 35.0,
                  ),
                   TextFormField(
                     controller: emailController,
                     keyboardType: TextInputType.emailAddress,
                    decoration:  const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email, ),
                      labelText: 'Email address',
                      alignLabelWithHint: true,),

                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration:  const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock_outline_rounded, ),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded,),
                      labelText: 'Password',
                      alignLabelWithHint: true,),


                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    child: MaterialButton(onPressed: () {

                    },
                      child: const Text('LOGIN',style: TextStyle(color: Colors.white),),
                      color: Colors.lightBlue,

                      ),
                    ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text('Don\'t have an account?',
                        style: TextStyle(color: Colors.grey),),
                          TextButton(
                            child:const Text('Register Now',
                                          style:
                                          TextStyle(color: Colors.blue,),
                            ),
                             onPressed: () {

                          },),
                        ]),

                    ],
                  ),
            ),
          )



            ,
          )

      );

  }

}