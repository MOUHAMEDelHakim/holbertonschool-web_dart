String longestPalindrome(String s) {
  if (s.length < 3) return "none";

  bool isPalindrome(String str) {
    int left = 0;
    int right = str.length - 1;
    while (left < right) {
      if (str[left] != str[right]) return false;
      left++;
      right--;
    }
    return true;
  }

  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substr = s.substring(i, j);
      if (isPalindrome(substr) && substr.length > longest.length) {
        longest = substr;
      }
    }
  }

  return longest;
}
