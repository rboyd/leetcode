class Solution:
    def findJudge(self, n: int, trust: List[List[int]]) -> int:
        candidates = set(range(1,n+1))
        trusted = defaultdict(int)
        for truster, trustee in trust:
            candidates.discard(truster)
            trusted[trustee] += 1
        for c in candidates:
            if trusted[c] == n-1:
                return c
        return -1
