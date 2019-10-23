import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TecMM',
      theme: ThemeData(
        brightness: Brightness.dark,
      

      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Menu lateral"),),
        drawer: MenuLateral(),
        body: Center(
          child: Text("Home"),
          
        ),
      )
    );
  }
}
class MenuLateral extends StatelessWidget{
  Widget build(BuildContext context){
    return new Drawer( 
      child:ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                
                accountName: Text("SYSTEM HUB"),
                accountEmail:Text("jala@perro"),
                decoration:BoxDecoration(
                  color:Colors.red,
                  image: DecorationImage(image: NetworkImage("https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s900-c-k-c0xffffffff-no-rj-mo"),
                  fit: BoxFit.cover
                   )
                  ),
              ),
              Ink(
                color: Colors.orange,
                child: new ListTile(
                title: Text("PERFIL"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context)=>Perfil()

                    
                    )
                  );

                },
              ),
              ),
              Ink(
                color: Colors.orange,
                child: new ListTile(
                  title: Text("ELEMENTOS GUARDADOS"),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(BuildContext context)=>ElementosGuardados()
                    )
                    );
                  },
                ),

              ),
               Ink(
                color: Colors.orange,
                child: new ListTile(
                  title: Text("MIS MENSAJES"),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(BuildContext context)=>MisMensajes()
                    )
                    );
                  },
                ),

              ),
              Ink(
                color: Colors.orange,
                child: new ListTile(
                  title: Text("ELEMENTOS GUARDADOS"),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(BuildContext context)=>ElementosGuardados()
                    )
                    );
                  },
                ),

              ),
               Ink(
                color: Colors.orange,
                child: new ListTile(
                  title: Text("INFORMACION APP"),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(BuildContext context)=>MiApp()
                    )
                    );
                  },
                ),

              ),
              
            ],
      ) ,
      );
  }
}

class Perfil extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text("PERFIL"),),
      body: Center(
        child:Text("Estas en Perfil") ,),
    );
  }
}
class ElementosGuardados extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text("Elementos Guardados"),),
      body: Center(
        child:Text("Elementos guardados") ,),
    );
  }
}
class MisMensajes extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text("MIS MENSAJES"),),
      body: Center(
        child:Text("Mensajes") ,),
    );
  }
}
class MiApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text("INFORMACION APP"),),
      body: Center(
        child:Text("Estas en INFORMACACION APP") ,),
    );
  }
}