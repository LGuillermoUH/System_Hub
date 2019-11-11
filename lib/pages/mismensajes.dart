import 'package:flutter/material.dart';
import 'package:holamundo/main.dart';


class MisMensajes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:Color.fromARGB(250,30,26,26),
      appBar: new AppBar(
        
       
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              'img/logo.jpg',
                fit: BoxFit.cover,
                height: 45,
            )
          ],
        ),
        leading:  IconButton(icon: Icon(Icons.arrow_back,size:46.0),
        onPressed: ()=>Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context)=>MyApp(),
                )),
                /* title: Text('AppBar Back Button'),
        leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false),
        )
      ),*/ 
        ),
      
      ),
      body: new Center(
        child: new Text('Mis Mensajes'),
      ),
    );
  }
}
