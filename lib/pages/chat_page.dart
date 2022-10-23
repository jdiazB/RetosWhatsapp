import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4_semana7/pages/widget/item_chat_widget.dart';

import '../data/data_dummy.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index){
        return ItemchatWidget(chatModel: chats[index],);
      },

    );
  }
}


