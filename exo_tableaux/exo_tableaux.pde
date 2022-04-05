void setup() {

  String message = "test";
  int encryptionKey = 1;
  char[] letters = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
  encryptMessage(message, encryptionKey);
}

String encryptMessage(String message, int encryptionKey) {
  String encryptedMessage = "";

  char[] lettersMessage = message.toCharArray();
//Refaire double boucle i/j, voir exo précédent
  for (char character : lettersMessage) {
    for (int index : letters) {
    }

    return encryptedMessage;
  }

  String decryptMessage(String encryptedMessage) {
    String decryptedMessage = "";


    return decryptedMessage;
  }
