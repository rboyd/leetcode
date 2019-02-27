import sys

class Solution:
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        usedChars = {}
        start = maxLength = 0
        for i in range(len(s)):
            if s[i] in usedChars and start <= usedChars[s[i]]:
                start = usedChars[s[i]] + 1
            else:
                maxLength = max(maxLength, i - start + 1)

            usedChars[s[i]] = i

        return maxLength

def main():
    s = Solution()
    print(s.lengthOfLongestSubstring(sys.argv[1]))

if __name__ == "__main__":
    main()
