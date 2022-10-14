import 'package:chat_demo/data/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_conversation_state.freezed.dart';

@freezed
class ChatConversationState with _$ChatConversationState {
  const factory ChatConversationState(List<UserModel> contact) =
      ChatConversationStateData;
  const factory ChatConversationState.loading() = ChatConversationStateLoading;
  const factory ChatConversationState.error(dynamic error) =
      ChatConversationStateError;
}
