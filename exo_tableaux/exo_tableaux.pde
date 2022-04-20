char[] letters = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };

void setup() {
// LE DECALAGE SE FAIT DANS LES DEUX SENS PTAIN <->
  String message = "a";
  int encryptionKey = 2;

  println(encryptMessage(message, encryptionKey));
}

String encryptMessage(String message, int encryptionKey) {
  String encryptedMessage = "";

  char[] lettersMessage = message.toLowerCase().toCharArray();
  //Refaire double boucle i/j, voir exo précédent
  for (int i = 0; i < lettersMessage.length; i++) {
    for (int j = 0; j < letters.length; j++) {
      if (lettersMessage[i] == letters[j]) {
        if ((j - encryptionKey) < 0) {
          lettersMessage[i] = letters[letters.length - (j + encryptionKey)];
        } else {
          lettersMessage[i] = letters[j - encryptionKey];
          encryptedMessage += lettersMessage[i];
        }
      }
    }
  }
  return encryptedMessage;
}






//String decryptMessage(String encryptedMessage) {
//  String decryptedMessage = "";




//  return decryptedMessage;
//}
