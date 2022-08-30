import 'package:flutter/material.dart';

Card kartuNama({
  String name = "",
  String study = "",
  String fictionStory = "",
  String urlProfil = ""
}){
  return Card(
    child: Container(
      padding: const EdgeInsets.all(10),
      width: 350,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 60,
              height: 60,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Image.network(
                  urlProfil,
                  fit: BoxFit.cover)
          ),

          SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              )),
              SizedBox(height: 5),
              Text(study, style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12
              )),

              SizedBox(height: 10),
              Container(
                width: 250,
                child: Text(fictionStory,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 12,
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}