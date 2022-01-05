import 'package:flutter/material.dart';

class ForgotPassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password '),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: SingleChildScrollView(

            child: Container(
              color: Color(0xF9F9F9),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Forget Password',
                      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                        'Please, enter your email address. You will receive a link to create a new password via email.'),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        fillColor: Color(0XFFFFFF),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),


                    Align(
                      alignment: AlignmentDirectional.center,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 240, 31, 14)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80.0),
                          child: Text(
                            'SEND',
                            style: TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
