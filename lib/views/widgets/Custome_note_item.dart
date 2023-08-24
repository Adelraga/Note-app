import 'package:flutter/material.dart';
import 'package:noteapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                return EditNoteView();
               }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title: Text(
                    'Flutter Tips',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Text(
                      'Bulit your career with Us please',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 59, 59, 59),
                          fontSize: 20),
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    ),
                    onPressed: () {},
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                child: Text(
                  'May 21 , 2022',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
