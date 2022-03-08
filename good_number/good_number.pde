void setup() { //<>//
  String usersPhoneNumbers[] = {"+336 25 45 87 85", "0665541285", "0778451236", "+336.07.02.55.25", "06 75 42 13 54"};
  formatPhoneNumbers(usersPhoneNumbers);
}

String[] formatPhoneNumbers(String[] numbers) {
  for (int counter = 0; counter < numbers.length; counter++) {
    String number = numbers[counter];
    String formattedPhoneNumber = formatNumber(number);

    if (number.charAt(0) == '0') {
      formattedPhoneNumber = "+33" + formattedPhoneNumber.substring(1);
    }
    println(formattedPhoneNumber);
  }

  return numbers;
}

String formatNumber(String number) {
  String formattedPhoneNumber = "";

  for (int i = 0; i < number.length(); i ++) {
    if (number.charAt(i) != '.' && number.charAt(i) != ' ') {
      formattedPhoneNumber = formattedPhoneNumber + number.charAt(i);
    }
  }

  return formattedPhoneNumber;
}
