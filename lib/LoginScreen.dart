import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email ='';
  var password ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      title: Text('Login'),
    ) ,
    body: Container(
    color:  Color(0xF9F9F9),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [

            Text('Login',style:TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),)
            , SizedBox(
              height: 50.0,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email',fillColor: Color(0XFFFFFF),border: OutlineInputBorder(),),
              onChanged: (value) =>email=value ,

            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'password',fillColor: Color(0XFFFFFF),border: OutlineInputBorder() ,),
              onChanged: (value) =>password=value ,

            ),

            Align(alignment: Alignment.centerRight,
              child: Container(
                  child: MaterialButton(onPressed: (){}
              ,child: Text('Forgot your password ?'),

              )
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton
                (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255,240,31,14)),shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text('Login',style: TextStyle(fontSize: 20.0,color: Colors.white),),
                  )
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Align(alignment: Alignment.center,
              child: Container(
                  child: MaterialButton(onPressed: (){}
                    ,child: Text('Dont have an account  sign up ?'),

                  )
              ),
            ),
          ],
        ),
      ),
    ),






    );
  }
}
