require 'trello'
include Trello::Authorization

Trello::Authorization.const_set :AuthPolicy, OAuthPolicy
OAuthPolicy.consumer_credential =
  OAuthCredential.new(
    'bed5663e811a8bbbdbd5380e04cb1dc6',
    '2745a4b09d0c36a95236a6c5381146ec08f47e2cfa358993fcc674564e2ee9b7')

OAuthPolicy.token =
  OAuthCredential.new(
    'd85316e5dbfb1c222a1ed58d7d43d7d065826fb0a5cb6f5468b518c2a52e45cd',
    nil)
