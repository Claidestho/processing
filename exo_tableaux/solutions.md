## Exercice 1
`````java
//Displaying a 1D Array
void print1D(int[] array) {
  for (int i = 0; i < array.length; i++) {
    print(array[i], " ");
  }
}
`````

## Exercice 2

`````java
// Displaying a 2D Array
void print2D(int[][] array) {

  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      print(array[i][j], " ");
    }
    println();
  }
}
`````

## Exercice 3
````java
// Creating a matrix with 1s in diagonal
int[][] diagonal(int size) {
  int[][] array = new int[size][size];

  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      if (i == j) {
        array[i][j] = 1;
      }
    }
    println();
  }

  return array;
}
````

## Exercice 4
````java
// Creating a matrix with 1s in triangle
int[][] createTriangle(int size) {
  int[][] array = new int[size][size];

  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      if (i < j ) {
        array[i][j] = 1;
      }
    }
    println();
  }

  return array;
}
````

## Exercice 5

````java
// Creating a matrix with super diagonals
int[][] test(int size) {
int[][] array = new int[size][size];
for (int i = 0; i < array.length; i++) {
for (int j = 0; j < array[i].length; j++) {
array[i][j] = i - j;

      if (i < j) {
        array[i][j] = j - i;
      }
    }
}

return array;
}
````

## Exercice 6
`````java
void setup() {
  int size = 3;
  int resultSDiagonal[][] = test(size);
  print2D(resultSDiagonal);
  print("---------------------------------------------- \n");
  int[] flat = flatten_2(resultSDiagonal);
  print1D(flat);
}

//Displaying a 1D Array
void print1D(int[] array) {
  for (int i = 0; i < array.length; i++) {
    print(array[i], " ");
  }
}

// Displaying a 2D Array
void print2D(int[][] array) {

  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      print(array[i][j], " ");
    }
    println();
  }
}
// Creating a matrix with super diagonals
int[][] test(int size) {
  int[][] array = new int[size][size];
  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      array[i][j] = i - j;

      if (i < j) {
        array[i][j] = j - i;
      }
    }
  }

  return array;
}

int[] flatten_2(int[][] tab) {
 int size = calculate_nb_elements(tab);
 int[] result = new int[size];
 int i =0; // index dans result
 for(int j=0; j < tab.length; j++){ // parcours chaque ligne
   for(int k=0; k < tab[j].length; k++){
     result[i] = tab[j][k];
     i++;
   }
 }
 return result;
}

int calculate_nb_elements(int[][] tab){
  int numberOfElements = 0;
   for(int i =0; i< tab.length; i++){
    for(int k = 0; k < tab[i].length; k++)
     numberOfElements++;
   }
  return numberOfElements;  
}
`````
