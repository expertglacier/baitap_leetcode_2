class Solution {
  int searchInsert(List<int> nums, int target) {
    int index = 0;
    
    for (int element in nums) {
      if (element < target) index += 1;
    }
    
    return index;
  }
}
