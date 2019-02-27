class Solution:
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        if x < 0:
            return False
        y = x
        accum = 0
        while y > 0:
            j = y % 10
            y = int(y / 10)
            accum = (accum * 10) + j
        return accum == x
