#include <stdio.h>
#include <vector>
#include <iostream>

using namespace std;

int BinarySearch(int arr[], int min, int max, int bingo, int counter) {
  
  // chek if size of array is at least 2 indexes
  if(max >= 1) {
    
    int middle = 1 + ((max + min)/2);
    
    counter += 1;
    printf("Binary search iterations #: %i \n", counter);
    
    /* if middle of array value is greater than
       the searched value then set new max to be
       one index just below the current middle.
    */
    if (arr[middle] > bingo) {
      return BinarySearch(arr, min, middle - 1, bingo, counter);
    };
    
    /* if middle of array value is less than
       the searched value then set new minimum to be
       one index above the current middle.
    */
    if (arr[middle] < bingo) {
      return BinarySearch(arr, middle + 1, max, bingo, counter);
    }
    
    if (arr[middle] == bingo) {
      return arr[middle];
    }  
    
  };
  
  return -1;
};


int LinearSearch(int arr[], int arrLength, int bingo) {
  
  // for loop to run through array
  for (int i = 0; i < arrLength; i += 1 ) {
    cout << "linear iteration #: " << i << endl;
    
    // check for item
    if (arr[i] == bingo) {
      return arr[i];
    };
  };
  
  return -1;
  
};


int main(void) {
  int input[1001];
  for (int i = 0; i <= 1000; i++) {
    input[i] = i;
  };
  

  int guess = 589;
  int sizeInput = (sizeof(input)/sizeof(int));
  int result = BinarySearch(input, 0, sizeInput - 1, guess, 0);
  
  printf("The item %i was found in the input with Binary search \n", result);
  int linearResult = LinearSearch(input, sizeInput, guess);
  printf("we found this with linear search: %i", linearResult);
};

