import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
           
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0)),
              child: Container(
                child: Image.asset('assets/1.jpg',
                    width: MediaQuery.of(context).size.width / 1.023),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 13.0),
                  padding: EdgeInsets.all(3.0),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        'BPS PLAY SCHOOL is a well known school in Tatisilwai area.\nIt is established in month of feb. 2018.And now it is going to spread his education throughouot.The aim of the School is to literate all the children those who belong to remote village area. It is known fact that children do their most important learning before the age five. Up to this age, for kids each morning is the dawn of another amazing adventure. Considering this fact, our focus is only on developing academic skills, but also intellectual, emotional, linguistic, physical, social and moral skills that will ensure all-round development of children. We believe that children are active learners, who learn best from interacting with nature, other children and adults in child-centered activities. BPS PLAY SCHOOL provides caring and trusting environment in which children can flourish as individual. Our child-centered philosophy allows children to learn through play by exploring their environment. In order to stimulate a child\'s learning, we provide opportunities for the child to grow and develop while reading, listening and playing. Love and affection are the hallmarks of all these pursuits. The colorful and cheerful environment, child-friendly equipments, enticing toys and games at BPS PLAY SCHOOL help a child to listen and discover, imagine and create. Overall, BPS PLAY SCHOOL is not merely a school; it is a concept in education. Its a new dimension for an all round development for 2 to 6 years old children. ',
                        style: TextStyle(fontSize: 18.0, fontFamily: "Roboto"),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
