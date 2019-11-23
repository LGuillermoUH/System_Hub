import 'package:flutter/material.dart';
import 'package:holamundo/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
      body:SafeArea(
        child: Column(
          children: <Widget>[
            _list()
          ],
        ),
       
      ),
    );
  }
}

Widget _list(){
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext contex, int index) => _item(FontAwesomeIcons.shoppingCart, "proyecto 1", 30, 124.7),
        separatorBuilder: (BuildContext context, int index)  {
          return Container(
            color: Colors.blueAccent.withOpacity(0.15),
            height: 8.0,
          );
        },
      ),
    );


  }
 Widget _item(IconData icon, String nombre, int porcentaje , double value) {
    return ListTile(
      leading: Icon(icon),
      title: Text(nombre,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),

      subtitle: Text("$porcentaje % of proyectos",
        style: TextStyle(
          fontSize: 16.0,
          color:  Colors.blueGrey,
        ),
      ),

      trailing: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("\$$value",
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
