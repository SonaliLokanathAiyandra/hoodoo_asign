import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dashboard extends StatefulWidget {
  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {

  Widget _buildContainer() {
    return Stack(
      children: <Widget>[
        Container(
          height: 165.0,
      decoration: BoxDecoration(
          image: DecorationImage(
           image: AssetImage('assets/food.jpg'),
            fit: BoxFit.cover,
          ),
      ),
          child: Row(
            children: <Widget>[
              SizedBox(width: 165),
            Container(
          height: 35.0,
          width: 35.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.fitHeight,
              ),
          ),
            )
            ],
          ),
        ),
    ],
    );
    }
//
  Widget _buildContact() {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 165, 0.0, 0.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: (){},
            splashColor: Colors.grey,
            tooltip: 'contact',
          ),
          SizedBox(width: 5.0),
          Text('Utkarsh Tiwari',style: TextStyle(fontWeight: FontWeight.w500),),
    ],
    ),
    );
  }





    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        leading: IconButton(
          iconSize: 14,
          icon: Image.asset('assets/home.png',width: 14,height: 14),),
        title: Text('hoodoo',style: TextStyle(letterSpacing: 1.0,fontFamily: 'Roboto-Medium.ttf',fontSize: 16,fontWeight: FontWeight.bold),),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            splashColor: Colors.grey,
            tooltip: 'Notification',
            icon: Icon(Icons.notifications,color: Colors.white,size: 14,),
          ),
          IconButton(
            onPressed: (){},
            splashColor: Colors.grey,
            tooltip: 'Menu',
            icon: Icon(Icons.menu,color: Colors.white,size: 14,),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,size: 12),
            title: Text('Home',style: TextStyle(fontSize: 8)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.chat,size: 12),
            title: Text('Chat',style: TextStyle(fontSize: 8)),

          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.account_circle,size: 12),
            title: Text('Account',style: TextStyle(fontSize: 8)),

          ),
        ],
      ),
      body:Stack(
        children:<Widget>[
          _buildContainer(),
          _buildContact(),
            Container(
            padding: EdgeInsets.fromLTRB(20,220,20,0.0),
            child: GridView.count
              (crossAxisCount:2,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: (){},
                    splashColor: Colors.grey,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Image.asset('assets/cook.png',width: 20,height: 20,),
                          SizedBox(height: 5.0),
                          Text('cook Info',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto-Medium.ttf',
                                fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
         Card(
           margin: EdgeInsets.all(8),
           child: InkWell(
             onTap: (){},
             splashColor: Colors.grey,
             child: Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 mainAxisSize: MainAxisSize.max,
                 children: <Widget>[
                   Image.asset('assets/calendar2-check.png',width: 20,height: 20,),
                   SizedBox(height: 5.0),
                   Text('Track Leaves',
                     textAlign: TextAlign.center,
                     style: TextStyle
                       (fontWeight: FontWeight.w500,
                         fontFamily: 'Roboto-Medium.ttf',
                         fontSize: 12),
                   )],
               ),
             ),
           ),
         ),
         Card(
           margin: EdgeInsets.all(8),
           //margin: EdgeInsets.fromLTRB(20,45,20,40),
           child: InkWell(
             onTap: (){},
             splashColor: Colors.grey,
             child: Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 mainAxisSize: MainAxisSize.max,
                 children: <Widget>[
                   Image.asset('assets/attachmoney_round.png',width: 20,height: 20,),
                   SizedBox(height: 5.0),
                   Text('Payments',
                       textAlign: TextAlign.center,
                       style: TextStyle
                         (fontWeight: FontWeight.w500,
                           fontSize: 12,
                           fontFamily: 'Roboto-Medium.ttf')),
                 ],
               ),
             ),
           ),
         ),
         Card(
           margin: EdgeInsets.all(8),
           child: InkWell(
             onTap: (){},
             splashColor: Colors.grey,
             child: Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 mainAxisSize: MainAxisSize.max,
                 children: <Widget>[
                   Image.asset('assets/feedback_outline.png',width: 20,height: 20,),
                   SizedBox(height: 5.0),
                   Text('Feedback',
                     textAlign: TextAlign.center,
                     style: TextStyle
                       (fontFamily: 'Roboto-Medium.ttf',
                         fontWeight: FontWeight.w500,fontSize: 12),
                   )],
               ),
             ),
           ),
         ),
              ],
            ),
          )
            ],

),
    );
  }
}

