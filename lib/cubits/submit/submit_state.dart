part of 'submit_cubit.dart';

enum SubmitStatus {
  initial,
  submitting,
  submitted,
  failure,
}

class SubmitState extends Equatable {
  const SubmitState({
    required this.title,
    required this.url,
    required this.text,
    required this.status,
  });

  const SubmitState.init()
      : title = null,
        url = null,
        text = null,
        status = SubmitStatus.initial;

  final String? title;
  final String? url;
  final String? text;
  final SubmitStatus status;

  SubmitState copyWith({
    String? title,
    String? url,
    String? text,
    SubmitStatus? status,
  }) {
    return SubmitState(
      title: title ?? this.title,
      url: url ?? this.url,
      text: text ?? this.text,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        title,
        url,
        text,
        status,
      ];
}
