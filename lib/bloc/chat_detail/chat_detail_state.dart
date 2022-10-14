import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/message_model.dart';
part 'chat_detail_state.freezed.dart';

@freezed
class ChatDetailState with _$ChatDetailState {
  const factory ChatDetailState(List<MessageModel> messages) =
      ChatDetailStateData;
  const factory ChatDetailState.loading() = ChatDetailStateLoading;
  const factory ChatDetailState.error(dynamic error) = ChatDetailStateError;
}
