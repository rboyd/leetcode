class Solution:
    def smallestEquivalentString(self, s1: str, s2: str, baseStr: str) -> str:
        p = {}
        def find(a):
            if p[a] != a:
                return find(p[a])
            return p[a]
        def union(a, b):
            pa = find(a)
            pb = find(b)
            if pa != pb:
                if pa < pb:
                    p[pb] = pa
                else:
                    p[pa] = pb

        for ch in string.ascii_lowercase:
            p[ch] = ch
        for i in range(len(s1)):
            union(s1[i], s2[i])
        return ''.join(find(ch) for ch in baseStr)
