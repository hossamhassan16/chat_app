import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:chat_app/models/message_model.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');

  void sendMessage({required String message, required String email}) {
    messages.add({
      "message": message,
      "createdAt": DateTime.now(),
      "id": email,
    });
  }

  void getMessages() {
    messages.orderBy("createdAt", descending: true).snapshots().listen(
      (event) {
        List<MessageModel> messagesList =
            event.docs.map((doc) => MessageModel.fromJson(doc)).toList();
        emit(ChatSuccess(messagesList));
      },
    );
  }
}
