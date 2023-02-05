class OpenAIStreamCompletionModelChoice {
  /// The text generated by the completion.
  final String text;

  /// The index of the choice.
  final int index;

  /// The log probabilities of the tokens in the completion.
  final int? logprobs;

  /// The reason the completion finished.
  final dynamic finishReason;

  /// This class is used to represent a choice generated by an OpenAI stream completion.
  OpenAIStreamCompletionModelChoice({
    required this.text,
    required this.index,
    required this.logprobs,
    required this.finishReason,
  });

  /// This method is used to convert a [Map<String, dynamic>] object to a [OpenAIStreamCompletionModelChoice] object.
  factory OpenAIStreamCompletionModelChoice.fromJson(
      Map<String, dynamic> json) {
    return OpenAIStreamCompletionModelChoice(
      text: json['text'],
      index: json['index'],
      logprobs: json['logprobs'],
      finishReason: json['finishReason'],
    );
  }
}
