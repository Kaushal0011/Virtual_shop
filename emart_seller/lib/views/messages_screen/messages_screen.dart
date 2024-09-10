import 'package:emart_seller/views/messages_screen/chat_screen.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../const/const.dart';

class MessagesScreen extends StatelessWidget{
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(
           icon: Icon(Icons.arrow_back), color: darkGrey, onPressed: () {Get.back();}),
       title: boldText(text: messages, size: 16.0, color: fontGrey),
     ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: SingleChildScrollView(
         physics: const BouncingScrollPhysics(),
         child: Column(
           children: List.generate(
             20,
               (index) => ListTile(
                 onTap: (){
                   Get.to(() => const ChatScreen());
                 },
                 leading: const CircleAvatar(
                   backgroundColor: purpleColor,
                   child: Icon(
                     Icons.person,
                     color: white,
                   ),
                 ),
                 title: boldText(text: "Username", color: fontGrey),
                 subtitle: normalText(text: "last message...", color: darkGrey),
                 trailing: normalText(text: "10:45AM", color: darkGrey),
               )
           ),
         )
       )
     )
   );
  }

}