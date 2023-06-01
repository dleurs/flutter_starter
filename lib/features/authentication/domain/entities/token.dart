import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Token {
  final String accessToken;
  final String refreshToken;
  Token({
    required this.accessToken,
    required this.refreshToken,
  });

  Token copyWith({
    String? accessToken,
    String? refreshToken,
  }) {
    return Token(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }

  factory Token.fromMap(Map<String, dynamic> map) {
    return Token(
      accessToken: map['accessToken'] as String,
      refreshToken: map['refreshToken'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Token.fromJson(String source) => Token.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Token(accessToken: $accessToken, refreshToken: $refreshToken)';

  @override
  bool operator ==(covariant Token other) {
    if (identical(this, other)) return true;

    return other.accessToken == accessToken && other.refreshToken == refreshToken;
  }

  @override
  int get hashCode => accessToken.hashCode ^ refreshToken.hashCode;
}
