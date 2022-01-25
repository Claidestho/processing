void setup() {

  String num_users[] =  {"+33625458785", "0665541285", "0778451236", "06.07.02.55.25", "06 75 42 13 54"};
  //num_users = format_number(num_users);
  //print(num_users);
  format_number(num_users);
}

String[] format_number(String[] numbers) {
  // boucle sur tous les numéros
  for (int counter = 0; counter < numbers.length; counter++) {
    String good_number = "";
    // boucle sur tous les charactères
    for (int i = 0; i < numbers[counter].length(); i ++) {
      if (numbers[counter].charAt(i) != '.' && numbers[counter].charAt(i) != ' ') {
        //Ajouter char a good numbers;
        good_number = good_number + numbers[counter].charAt(i);
      }
      // Vérifier si premier numéro == 0 / Si premier numéro == +33
      if(numbers[counter].charAt(0) == '0'){
      }
    }
    println(good_number);
  }

  return numbers;
}
