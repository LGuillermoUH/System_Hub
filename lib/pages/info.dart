import 'package:flutter/material.dart';

import 'package:holamundo/main.dart';

class Info extends StatelessWidget {
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
                
                 child: Text(
                   'Version de SystemHub 1.0 ',style:
                   TextStyle(
                     color: Colors.white,
                     fontSize:40.0,
                    
                   ),
                   textAlign: TextAlign.center,
                  
                 ),
                 
               ),
               
            ],
            
          ),
          
         
          Row(
            children: [
             
              Expanded(
                child: CustomPaint(painter: Drawhorizontalline(),),
              )

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),

          ),
          Column(
            children: <Widget>[
              //Podria tener un titulo
              //Text('MIS ARCHIVOS',style: TextStyle(color: Colors.orange,fontSize: 29.0,fontFamily:'Arial' ,)),
             
             
              
              
            ],
            
          ),
          Row(
            children: <Widget>[
              
       Expanded(
         flex: 1,
               child: Container(
               //child:Text('hola', style: TextStyle(color: Colors.white),
               //),
               
         //      color: Colors.red,
               height: 295,
               width: 300,
               
               ),
              
             ),
        Expanded(
           flex:8,

           child:  Container(
              
            
               color: Colors.blue,
               height: 295,
               width: 300,
              
               
               
               
             ),
            
        ),
        Expanded(
          flex:1,

           child:  Container(
             //  child:Text('hola', style: TextStyle(color: Colors.white),
               //) ,
           //    color: Colors.white,
               height: 295,
               width: 0,
               
             )
        )
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),

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
    return ListView(
      children: <Widget>[
        

      ],
    );
  }
}