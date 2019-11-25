
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graph_widget/graph_widget.dart';
import 'package:holamundo/main.dart';

class Grafica extends StatelessWidget {
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
                  builder: (BuildContext context)=>MyApp()),
                )),
                /* title: Text('AppBar Back Button'),
        leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false),
        )
      ),*/ 
        ),
      
      
      body: Center(
      child: GrafInterface(),
      
      
      ),
       
    
    );
  }
}
class GrafInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250,30,26,26),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _botomAccion(FontAwesomeIcons.history),
            _botomAccion(FontAwesomeIcons.chartPie),
            SizedBox(width: 40.0),
            _botomAccion(FontAwesomeIcons.wallet),
            _botomAccion(Icons.settings)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      body: _body(),
    );
      
 
  }
}
 Widget _botomAccion(IconData icon){
    return InkWell(
      child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Icon(icon)
      ),
      onTap: (){},
    );
  }
  Widget _body(){
    return SafeArea(
      child: Column(
        children: <Widget>[
          _selector(),
          Container(
            color: Colors.blueAccent.withOpacity(0.15),
            height: 16.0,
          ),
          _extenses(),
          _graph(),
          Container(
            color: Colors.blueAccent.withOpacity(0.15),
            height: 16.0,
          ),
          _list(),
        ],
      ),
    );
  }

Widget _selector()=> Container();

Widget _extenses() {
    return Column(
      children: <Widget>[
        Text("200,5497,214",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
            color:  Colors.black,
          ),
        ),
        Text("Total proyectos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color:  Colors.blueGrey,
          ),
        ),
      ],
    );
  }
Widget _graph() {

    return Container(
      height: 300.0,
      width: 350.0,
      child: GraphWidget(),
    );
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

