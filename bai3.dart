class Solution {
  int subtractProductAndSum(int n) {
    int sumOfDigits = 0;
    int productOfDigits = 1;

    while (n > 0) {
      int number = n % 10;
      sumOfDigits += number;
      productOfDigits *= number;

      n ~/= 10;
    }

    return (productOfDigits - sumOfDigits);
  }
}
