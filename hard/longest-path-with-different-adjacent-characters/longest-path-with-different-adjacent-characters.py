class Solution:
    def longestPath(self, parent: List[int], s: str) -> int:
        p = defaultdict(list)
        m = {}
        m[-1] = '-'
        for i, pi in enumerate(parent):
            p[pi].append(i)
            m[i] = s[i]
        ans = 0
        def dfs(i):
            nonlocal ans
            this_val = 0 if i == -1 else 1
            h = []
            for ch_i in p[i]:
                if m[ch_i] != m[i]:
                    heappush(h, -dfs(ch_i))
                else:
                    dfs(ch_i)
            if len(h) > 1:
                a1 = -heappop(h)
                a2 = -heappop(h)
                ans = max(ans, a1+a2+this_val)
                return a1+this_val
            elif len(h) == 1:
                a1 = -heappop(h)
                ans = max(ans, a1+this_val)
                return a1+this_val
            else:
                return this_val
        root = dfs(-1) - 1
        ans = max(ans, root)
        return ans
