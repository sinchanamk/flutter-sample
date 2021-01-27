import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp()); 

  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Register_Form';  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: MyCustomForm(),  
      ),  
    );  
  }  
}  
  
class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  

class MyCustomFormState extends State<MyCustomForm> {  
 
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
   
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[  
          TextFormField(  
            
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
             
            ),
            ), 
             
      
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'Enter your date of birth',  
            labelText: 'Date of birth',  
            ),  
           ),  
           TextFormField(
             decoration:const InputDecoration(
               icon:const Icon(Icons.email),
               hintText: 'Enter your email id',
               labelText: 'Email',
             ) ,),
             TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  icon:const Icon(Icons.security),
                  labelText: 'Password',
                ),
              ),
            TextFormField(
             decoration:const InputDecoration(
               icon:const Icon(Icons.location_city),
               hintText: 'Enter your City',
               labelText: 'City',
             ) ,),  
              
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new RaisedButton(  
                child: const Text('Submit'),  
                  onPressed:(){},  
              )),  
        ],  
      ),  
    );  
  }  
}  

