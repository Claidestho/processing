void setup() {

  String num_users[] =  {"+33625458785", "0665541285", "0778451236", "06.07.02.55.25", "06 75 42 13 54"};
  num_users = format_number(num_users);
  print(num_users);
}

String[] format_number(String[] numbers) {
  
  for (int counter = 0; counter < numbers.length; counter++) {
    String good_number;
    for (int i = 0; i < numbers[i].length(); i ++) {
      if (numbers[counter].charAt(i) != '.') {
        //Ajouter char a good numbers;
        
      }
    }
  }

  return numbers;
}
