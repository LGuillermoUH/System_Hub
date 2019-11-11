import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/text.dart';
import 'package:holamundo/pages/mismensajes.dart';
import 'package:holamundo/pages/perfil.dart';
import 'package:holamundo/pages/guardados.dart';
import 'package:holamundo/pages/info.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  _MyApp createState()=>_MyApp();
}



class _MyApp extends State<MyApp> {
  
  List<Container> listamos = List();
  var arreglox=[
    {"nombre":"3 en 1","imagen":"3en1.jpg","ejercicio":"COMPLETE"},
    {"nombre":"Aplicacion Movil","imagen":"appMovil.png","ejercicio":"Fitness APP"},
    {"nombre":"Aplicacion Movil","imagen":"appMovil1.png","ejercicio":"Food APP"},
    {"nombre":"Aplicacion Movil","imagen":"appMovil2.png","ejercicio":"Restaurant APP"},
    {"nombre":"Pagina Web","imagen":"paginasWeb1.jpg","ejercicio":"Bar Restaurant Web"},
    {"nombre":"Pagina Web","imagen":"paginasWeb2.jpg","ejercicio":"Motor Web"},
    {"nombre":"Paginas Web","imagen":"paginasWeb3.jpg","ejercicio":"Motos Web"}
  ];

  _listado() async {
    for (var i = 0; i < arreglox.length; i++) {
      final arregloxyz = arreglox[i];
      final String imagen = arregloxyz["imagen"];
       listamos.add(new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                tag: arregloxyz['nombre'],
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Detalle(
                        nombre: arregloxyz['nombre'],
                        imagen: imagen,
                        deporte: arregloxyz['deporte']
                      ),
                    )),
                    child: new Image.asset(
                      "img/$imagen",
                      fit: BoxFit.contain
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(3.0),
              ),
              new Text(
                arregloxyz['nombre'],
                style: new TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
  }
  @override
  void initState(){
    _listado();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

     
      
      
      
      
      title: 'TecMM',
      
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(250, 0, 0, 0)
        )
      

      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        
        backgroundColor: Color.fromARGB(250, 30, 26, 26),
        appBar: AppBar(
          
           bottom: TabBar(
            tabs: <Widget>[
                Tab(icon: Icon(Icons.desktop_windows ,color: Color.fromARGB(245, 245, 145, 20),),),
                Tab(icon: Icon(Icons.mobile_screen_share,color: Color.fromARGB(245, 245, 145, 20),),),
                Tab(icon: Icon(Icons.web,color: Color.fromARGB(245, 245, 145, 20),),),
                //Text('WEB',style: TextStyle(color: Color.fromARGB(245, 245, 145, 20),fontSize: 45.0)

            ],
          ),
          
          title: Row(
            mainAxisAlignment: MainAxisAlignment .end,
            children: <Widget>[
              Image.asset(
                'img/logo.jpg',
                fit: BoxFit.cover,
                height: 45,
              ),
            
            ],
          ),
          
          
     /*  leading: IconButton(icon: Icon(Icons.menu,size:46.0),
          onPressed: ()=>Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context)=>MenuLateral(),
                )),
          )*/
         leading: new Icon(Icons.menu,color: Colors.orange,size: 50.0,),
         iconTheme: new  IconThemeData(color: Colors.orange,size: 48.5,),
        

       ),
       drawer: MenuLateral(),
       body: TabBarView(
         children: <Widget>[
           GridView.count(
            crossAxisCount: 1, //numero de columas de la primera pagina pruebn con 1
            mainAxisSpacing: 1.91, //espacio entre card
            childAspectRatio:0.600, //espacio largo de cada card 
            children: listamos,
           ),
           Icon(Icons.directions_transit,color: Color.fromARGB(245, 245, 145, 20),),
              Icon(Icons.directions_bike),
            
         ],
       )
        
      //  body: new GridView.count(
          
         
              
       // ),
        )
      )
    );
  }
}
class MenuLateral extends StatelessWidget{
  Widget build(BuildContext context){
    return new Drawer(
      child: Container( 
        color: Colors.orange,
      child:ListView(
            children: <Widget>[
               
              new UserAccountsDrawerHeader(
                
                //aqui iran los datos desde firebase
                accountName: Text('Nombre de usuario'
                ,style: TextStyle(
                  fontSize: 27.0
                ),),
                accountEmail:Text("funcion@gmail.com"),
                decoration:BoxDecoration(
               
                  image: new DecorationImage(
                    //con esta sentencia me traigo el dato
                    image: AssetImage('img/doc0.jpg'),
                  fit: BoxFit.cover
                   )
                  ),
              ),
              Ink(

                //color: Color.fromARGB(250, 250,250, 250),
                child: new ListTile(
              
                leading: Icon(Icons.account_circle,size: 45.0),
                title: Text('PERFIL',
                
                textAlign: TextAlign.center,
                
                style: TextStyle(
                  fontSize: 25.0,
                  //color: Colors.white,
                  fontFamily: 'Calibri',
                  letterSpacing: 1.2
                ),
                ),

                
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context)=>Perfil(),
                )),
                 
              ),
              decoration: const BoxDecoration(
                border: Border(
                 top: BorderSide(width: 5.0, color: Colors.black),
      left: BorderSide(width: 25.0, color: Colors.black),
      right: BorderSide(width: 25.0, color: Colors.black),
      bottom: BorderSide(width: 25.0, color: Colors.black),
                ),
                
              ),
              ),
              
              Ink(
                //color: Colors.orange,
                child: new ListTile(
                  leading: Icon(Icons.save,size: 45.0),
                  title: Text('ELEMENTOS GUARDADOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.85,
                    fontFamily: 'RobotoMono',
                  
                    
                  ),
                  ),
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context)=> Guardados(),
                  )),
                ),

              ),
               Ink(
                //color: Colors.orange,
                child: new ListTile(
                  leading: Icon(Icons.message,size:45.0),
                  title: Text('MIS MENSAJES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.85,
                  ),),
                   onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                             builder: (BuildContext context)=> MisMensajes(),
                  )),
                    
                   
                    
                
                ),

              ),
             Ink(
                color: Colors.orange,
                child: new ListTile(
                  leading: Icon(Icons.perm_device_information,size: 45.0,),
                  title: Text('INFORMACION APP',
                  textAlign: TextAlign.center,
                  
                  style: TextStyle(
                  fontSize: 17.85
                  )),
                  
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                             builder: (BuildContext context)=> Info(),
                  )),
    
                ),

              ),
              
            ],
      ) ,
      )
      );
      
     
  }
}

class Detalle extends StatelessWidget {
   Detalle({this.nombre, this.imagen, this.deporte});
  final String nombre;
  final String imagen;
  final String deporte;


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 387.0,//tamaño de la segunda imagen
              child: new Hero(
                tag: nombre,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/$imagen",width: 387,height: 450,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
            new IniciarNombre(
                nombre: nombre,
              ),
              new IniciarIcon(),
              new Informacion(
                deporte: deporte,
              ),
          ],
        ),
      );
    } 

}
class IniciarNombre extends StatelessWidget {
  IniciarNombre({this.nombre});
  final String nombre;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nombre,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "$nombre\@gmail.com",
                  style: new TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
          ),
              new Row(
              children: <Widget>[
              new Icon(//icono que agrega estrellas calificacion
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.orange,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.purple,
              ),
              new Text(
                "12",
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
class IniciarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new IconTec(
            icon: Icons.call,
            tec: "Llamar"
                ), 
                new IconTec(
            icon: Icons.message,
            tec: "WhastApp"
                ),
                new IconTec(
            icon: Icons.photo,
            tec: "Foto"
                ),
                  ],
      ),
    );
  }
}
class IconTec extends StatelessWidget {
  IconTec({this.icon, this.tec});
  final IconData icon;
  final String tec;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          new Text(
            tec,
            style: new TextStyle(fontSize: 12.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

class Informacion extends StatelessWidget {
  Informacion({this.deporte});
  final String deporte;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            deporte,
            style: new TextStyle(fontSize: 16.0, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
class Drawhorizontalline extends CustomPainter {
  Paint _paint;

  Drawhorizontalline() {
    _paint = Paint()
      ..color = Colors.orange
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
      canvas.drawLine(Offset(-250.0, 0.0), Offset(359.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}