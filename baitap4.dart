class Solution {
  List<int> plusOne(List<int> digits) {
    BigInt digitsBigInt = BigInt.parse(digits.join("")) + BigInt.one;
    List<String> digitsList = digitsBigInt.toString().split("");

    return digitsList.map((e) => int.parse(e)).toList();
  }
}
