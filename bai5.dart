class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if (nums2.isEmpty) {
    } else {
      if (nums1.length > m) nums1.removeRange(m, nums1.length);

      for (int i = m; i < (m + n); i++) {
        nums1.insert(i, nums2[i - m]);
      }

      nums1.sort();
    }
  }
}
