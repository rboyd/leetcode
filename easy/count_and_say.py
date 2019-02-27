class Solution:
    def countAndSay(self, n):
        """
        :type n: int
        :rtype: str
        """
        ret = "1"
        for i in range(n):
            latest = ""
            if i < 1:
                next
            else:
                c = ret[0]
                count = 0
                for j in range(len(ret)):
                    print "i: " + str(i) + " latest: '" + latest + "'"
                    if ret[j] == c:
                        print "count (" + str(count) + ") += 1"
                        count += 1
                    else:
                        # convert 'count' integer to string
                        latest = latest + str(count) + c
                        print "else: " + latest
                        c = ret[j]
                        count = 1
                latest = latest + str(count) + c
                ret = latest
        return ret

if __name__ == "__main__":
    s = Solution()
    print(s.countAndSay(5))
