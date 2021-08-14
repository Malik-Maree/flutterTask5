import 'package:flutter/material.dart';
import 'word.dart';
import 'package:intl/intl.dart';
import 'bottomWidget.dart';

class WordListScreen extends StatefulWidget{

  @override
  _WordListScreenState createState() => _WordListScreenState();
}

class _WordListScreenState extends State<WordListScreen> {
List <Word> wordList =[
  Word('1','play','يلعب',DateTime.now()),
  Word('2','play','يلعب',DateTime.now()),
  Word('3','play','يلعب',DateTime.now()),
];

void addNewWord(String id, String engWord, String arbWord, DateTime date){
  setState(() {
    
  wordList.add(Word(id, engWord, arbWord, date));
  });
}

void removeWord(String id){
 wordList.removeWhere((element) => element.id == id);
}

void addWord(){
  showModalBottomSheet(context: context, builder: (ctx) {
  
   return BottomSheetWidget(addNewWord);
   
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App 5'),
        
      ),
      body: 
       wordList.length==0?Column(
         children: [
           Center(
             
             child: Image.asset('assets/notavimgae.jpg'),
          //  child: Text('no word added!!'),
           ),
           SizedBox(height: 25,),
         Center(
           child: Text('no word added!!',),
         )
         ],
       ):
      ListView.builder(
        itemCount: wordList.length,
        itemBuilder: (ctx,index){
          return ListTile(
            leading: CircleAvatar(
              child: FittedBox(child: Text(wordList[index].id),),
            ),
            title: Text(wordList[index].engWord),
            subtitle: Text('${wordList[index].arbWord} ${DateFormat.yMMMEd().format(wordList[index].date)}'),
            
            trailing: IconButton(
              onPressed: (){
               setState((){
                removeWord(wordList[index].id);

               });
                //print(wordList.length);
              },
              icon: Icon(
                Icons.delete_forever,
                color: Colors.red,
              )
            ),
          );
        },
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:addWord,
          child: Icon(Icons.add),
          ),
    );

  }
}