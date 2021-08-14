import 'package:flutter/material.dart';
import 'word.dart';
import 'package:intl/intl.dart';
import 'wordScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{


@override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: WordListScreen() ,
   );

  }
}










// class WordListScreen extends StatelessWidget{


//   @override
//   Widget build(BuildContext context) {
// List <Word> wordList =[
//   Word('1','play','يلعب',DateTime.now()),
//   Word('2','play','يلعب',DateTime.now()),
//   Word('3','play','يلعب',DateTime.now()),
// ];
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('App 5'),
        
//       ),
//       body: ListView.builder(
//         itemCount: wordList.length,
//         itemBuilder: (ctx,index){
//           return ListTile(
//             leading: CircleAvatar(
//               child: FittedBox(child: Text(wordList[index].id),),
//             ),
//             title: Text(wordList[index].engWord),
//             subtitle: Text('${wordList[index].ArbWord} ${DateFormat.yMMMEd().format(wordList[index].date)}'),
            
//             trailing: IconButton(
//               onPressed: (){},
//               icon: Icon(
//                 Icons.beach_access,
//                 color: Colors.red,
//               )
//             ),
//           );
//         },
        
//         ),
//     );

//   }
// }