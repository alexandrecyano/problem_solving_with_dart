/* 
Given an array of integers,write a funtion that returns the the index 
of the target element x.

Best used when the data is not in order.
----------------------------------------
Time Complexity:
Best-case complexity: O(1) if the element is found at the first index.
Worst-case complexity:  O(n) where the element if found at the last index.

*/
void main(){
  
  linearSearch([12,8,3, 5, 100, 26, 20, 1, 3, 13, 50], 26);
}

int linearSearch(List<int> arr, int target ){
  for(int index = 0; index<arr.length; index++){
    if(target == arr[index]){
      return index;
    }
  }
  return -1;
}

// if you're using dartpad, you might want to replace return index with print(index) so
// that it shows on the scree.