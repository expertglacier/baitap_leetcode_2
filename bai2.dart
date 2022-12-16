class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
    for (int i = 0; i < (heights.length) - 1; i++) {
      for (int j = i + 1; j < heights.length; j++) {
        if (heights[i] < heights[j]) {
          names.insert(i, names[j]);
          names.removeAt(j + 1);
          heights.insert(i, heights[j]);
          heights.removeAt(j + 1);
        }
      }
    }

    return names;
  }
}
