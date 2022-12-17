class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> generateList = [];

    for (int i = 1; i <= numRows; i++) {
      generateList.add([]);
      for (int j = 0; j < i; j++) {
        if (j == 0 || j == (i - 1)) {
          generateList[i - 1].add(1);
        } else if (j == j + 1 || j == (i - 2)) {
          generateList[i - 1].add(i - 1);
        } else {
          int number = generateList[i - 2][j - 1] + generateList[i - 2][j];
          generateList[i - 1].add(number);
        }
      }
    }
    
    return generateList;
  }
}
