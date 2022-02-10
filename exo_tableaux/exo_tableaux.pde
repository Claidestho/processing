void setup() {
  //int[] array1D = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  //int[][] Array2D = { {1, 2, 3, 4, 5}, {6, 7, 8, 9, 10} };
  //print1D(array1D);
  //print2D(Array2D);
  int size = 10;

  //int result[][] = diagonal(size);
  //print2D(result);
  
  int resultTriangle[][] = createTriangle(size);
  print2D(resultTriangle);
}



//Displaying a 1D Array
void print1D(int[] array) {
  for (int i = 0; i < array.length; i++) {
    println(array[i]);
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

// Creating a matrix with 1s in triangle
int[][] createTriangle(int size) {
  int[][] array = new int[size][size];

  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      if (i <= j ) {
        array[i][j] = 1;
      }
    }
    println();
  }

  return array;
}
