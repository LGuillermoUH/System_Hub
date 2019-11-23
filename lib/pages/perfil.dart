import 'package:flutter/material.dart';
import 'package:holamundo/pages/info.dart';
import 'package:holamundo/pages/subir.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:holamundo/main.dart';

class Perfil extends StatelessWidget {
  
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
      body: Center(

      child:MisDatos() ,
     /* width: 150,
      height: 250,
      padding: const EdgeInsets.all(20),
      
      child: new Image.asset(
        "img/doc0.jpg",
          fit: BoxFit.cover,
      ),
      
       */ 
     // color: Color.fromARGB(200,200,200,1),
        
      
      ),
       
    
    );
  }
}

class MisDatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Expanded(
                 flex: 4,
                 
                 child: ClipOval(
                   child: Image.asset(
                     'img/doc0.jpg',
                  width: 120,
                  height: 150,
                   ),
                   
                 ),
                
                 
               ),
              
               Expanded(
                 flex: 5,
                 child: Text(
                   'Raziel Rivera ',style:
                   TextStyle(
                     color: Colors.white,
                     fontSize:30.0
                   )
                  
                 ),
                 
               ),
               
            ],
            
          ),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                 Text("Skills: ",style: TextStyle(color: Color.fromARGB(250, 250, 145, 20),fontSize: 25.0),textAlign: TextAlign.left,),  
                 Text("                         -JavaWeb",style: TextStyle(color: Colors.white,),textAlign: TextAlign.right,
                
                 
                 ),
                 Text("                  -Php  ",style: TextStyle(color: Colors.white),textAlign: TextAlign.right,)
                   
                  ],   
             
               
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),

          ),
          
         
          Row(
            children: [
             
              Expanded(
                child: CustomPaint(painter: Drawhorizontalline(),),
              )

            ],
          ),
          Column(
            children: <Widget>[
              Text('MIS ARCHIVOS',style: TextStyle(color: Colors.orange,fontSize: 29.0,fontFamily:'Arial' ,)),
             
             
              
              
            ],
            
          ),
          Row(
            children: <Widget>[
              
       /*Expanded(
         flex: 1,
               child: Container(
               //child:Text('hola', style: TextStyle(color: Colors.white),
               //),
               
               //color: Colors.red,
               height: 180,
               width: 300,
               
               ),
              
             ),*/
        Expanded(
           //flex:8,

           child:  Container(
               child:ContDate(),
            
               //color: Colors.blue,
               height: 180,
               width: 250,
               
             ),
            
        ),
        /*Expanded(
          flex:1,

           child:  Container(
               //child:Text('hola', style: TextStyle(color: Colors.white),
               //) ,
               //color: Colors.white,
               height: 180,
               width: 300,
               
             )
        )*/
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),

          ),
          Expanded(
            
            child: CustomPaint(painter: Drawhorizontalline(),
          ),
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
           children: <Widget>[
             Expanded(
               flex: 2,
               child: Container
               (
                 padding: EdgeInsets.symmetric(vertical: 58,horizontal: 20),
                 // color: Colors.red,  
                  //child: Text('data'),
               ),
             ),
             Expanded(
              flex: 8,
              child: Container(
                padding:  EdgeInsets.symmetric(vertical: 41.5,horizontal: 20),
               // margin: EdgeInsets.fromLTRB(left, top, right, bottom)
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
               // color: Colors.white,
                child: Row(
                  children: <Widget>[
                     const SizedBox(height: 30,), 
             RaisedButton(
               onPressed: (){},
               child: const Text(
                 'Borrar',
                 style: TextStyle(fontSize: 20,color: Colors.black),
                 
               ),
            
               color: Colors.orange,
             ),
             
             const SizedBox(height: 30,
             width: 30.0,
             ), 
             RaisedButton(
               onPressed: ()=>Navigator.of(context).push(new MaterialPageRoute(
                 builder:(BuildContext context)=>Subir(), )),
               child: const Text(
                 'Subir',
                 style: TextStyle(fontSize: 20,color: Colors.black),
                 
               ),
               color: Colors.orange,
             )
                  ],
                ),
              ),
             )
            
           ],

          ),
          
          
          

        ],
      
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

class ContDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
      children: <Widget>[
        _list()
      ],
      ) 

    );

     
  }
}
Widget _list(){
    return Expanded(
      child: ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext contex, int index) => _item(Image.asset('img/doc0.jpg')/*FontAwesomeIcons.appStore*/, "MyApp", 1, "View"),
        separatorBuilder: (BuildContext context, int index)  {
          return Container(
            color: Colors.blueAccent.withOpacity(0.15),
            height: 8.0,
          );
        },
      ),
    );


  }
 Widget _item(Image im/*IconData icon*/, String nombre, int porcentaje , String value) {
    return ListTile(
      leading:Image.asset('img/doc0.jpg',) //Icon(icon,color: Color.fromARGB(245, 245, 146, 20),),
      ,title: Text(nombre,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(245, 245, 146, 20),
          fontSize: 20.0,
        ),
      ),

      subtitle: Text("$porcentaje of proyectos",
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
          
          child: RaisedButton(
            child:Text("View",
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            
            ),
          
          ),
           onPressed: ()=>Info()
           
          )
          /*Text("View",
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            
            ),
          
          ),
          */
        ),
        
      ),
    );
  }
