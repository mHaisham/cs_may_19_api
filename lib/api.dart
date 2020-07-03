class Api {
  String buildEventsUri() =>
      'https://script.google.com/macros/s/AKfycbxTiBoR1oWIq7WIpE9PPejfJHCQPK4Uj70Wwl_93_1sMRirYUw/exec?request=get&path=events';

  String buildLecturesUri() =>
      'https://script.google.com/macros/s/AKfycbxTiBoR1oWIq7WIpE9PPejfJHCQPK4Uj70Wwl_93_1sMRirYUw/exec?request=get&path=classes';

  String buildUpdateUri(String token) =>
      'https://script.google.com/macros/s/AKfycbxTiBoR1oWIq7WIpE9PPejfJHCQPK4Uj70Wwl_93_1sMRirYUw/exec?request=post&path=update&token=$token';
}
