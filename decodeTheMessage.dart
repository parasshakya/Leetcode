class Solution {
  String decodeMessage(String key, String message) {
    final Map<String, String> keyMap = {};
    String decodedMessage = '';
    String lowerCaseLetters = 'abcdefghijklmnopqrstuvwxyz';

    key = key.split(' ').join();

    for (int i = 0; i < key.length; i++) {
      keyMap[key[i]] = '';
    }

    String mapKeys = keyMap.keys.take(keyMap.length).join();

    for (int i = 0; i < mapKeys.length; i++) {
      keyMap[mapKeys[i]] = lowerCaseLetters[i];
    }

    for (int i = 0; i < message.length; i++) {
      if (message[i] == ' ') {
        decodedMessage = decodedMessage + ' ';
        continue;
      }
      decodedMessage = decodedMessage + keyMap[message[i]]!;
    }
    return decodedMessage;
  }
}

void main(List<String> args) {
  print(Solution().decodeMessage(
      'the quick brown fox jumps over the lazy dog', 'vkbs bs t suepuv'));
}
