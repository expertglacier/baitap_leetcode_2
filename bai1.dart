/*
Giải thích for in trong code chạy:
1/ Chạy for in lấy từng element của List sentences.
2/ Gán count = length của element đã xoá 2 space ở đầu và cuối element (nếu có).
  Tiếp theo chuyển element thành 1 list sau khi đã cắt tất cả space ở bên trong.
3/ So sánh count và lengthMax, nếu lengthMax < count sẽ gán lengthMax = count.
*/

class Solution {
  int mostWordsFound(List<String> sentences) {
    int lengthMax = 0;

    for (var element in sentences) {
      int count = element.trim().split(" ").length;
      if (lengthMax < count) lengthMax = count;
    }

    return lengthMax;
  }
}
