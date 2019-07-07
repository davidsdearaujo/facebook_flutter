
import 'package:facebook/src/shared/widgets/reactions_list/reactions_list_widget.dart';
import 'package:flutter/material.dart';

class FooterComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                GestureDetector(
                  onTap: () {}, //TODO: Conectar com a tela correspondente
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      "Responda...",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  child: IconButton(
                    icon: Container(
                      child: Icon(Icons.gif, color: Colors.white),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    onPressed: () {}, //TODO: Conectar com a tela correspondente
                  ),
                ),
              ],
            ),
          ),
          ReactionsListWidget(),
        ],
      ),
    );
  }
}
