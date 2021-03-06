import "package:flutter/material.dart";

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Kotel App')),
          body: Center(
              child: (Column(
            children: [
              // Text('Hello'),
              Container(
                //  padding: EdgeInsets.all(1),
                child: Image.network(
                    "https://abbapai.files.wordpress.com/2010/09/muro-das-lamentacoes1.jpg"),
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kotel',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text('Jerusalem, Israel',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.star, size: 30),
                              Text('3.891', style: TextStyle(fontSize: 20)),
                            ])
                      ])),
              Center(
                  heightFactor: 1.2,
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button(
                            onPress: callAction,
                            icon: Icons.call,
                            text: "Liga"),
                        Button(
                            onPress: mapaAction,
                            icon: Icons.location_on,
                            text: "Mapa"),
                        Button(
                          onPress: shareAction,
                          icon: Icons.share,
                          text: "Compartilhar",
                        )
                        // Expanded(
                        //     child: FlatButton(
                        //   onPressed: () {},
                        //   child: Column(children: [
                        //     Icon(Icons.share, color: Colors.blue),
                        //     Text("Compartilhar"),
                        //   ]),
                        // )),
                      ])),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                      "The Wailing Wall or Western Wall, known in Islam as the Buraq Wall, is an ancient limestone wall in the Old City of Jerusalem. It is a relatively small segment of a far longer ancient retaining wall, known also in its entirety as the Western Wall."))
            ],
          )))),
    );
  }

  void callAction() {}

  void mapaAction() {}

  void shareAction() {}
}

class Button extends StatelessWidget {
  Button({this.onPress, this.icon, this.text});

  VoidCallback? onPress;
  var icon;
  var text;

  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
      onPressed: onPress,
      child: Column(children: [
        Icon(icon, color: Colors.blue),
        Text(text),
      ]),
    ));
  }
}
