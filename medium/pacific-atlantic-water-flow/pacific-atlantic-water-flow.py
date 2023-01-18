class Solution:
    def pacificAtlantic(self, heights: List[List[int]]) -> List[List[int]]:
        pac_q = deque()
        atl_q = deque()
        m = len(heights)
        n = len(heights[0])
        for r in range(m):
            for c in range(n):
                if r == 0 or c == 0:
                    pac_q.append((r, c))
                if r == m-1 or c == n-1:
                    atl_q.append((r, c))
        pac_s = set(pac_q)
        atl_s = set(atl_q)

        def bfs(q, s):
            V = s
            dirs = [0, 1, 0, -1, 0]
            while q:
                r, c = q.popleft()
                for i in range(4):
                    rn, cn = r+dirs[i], c+dirs[i+1]
                    if min(rn, cn) < 0 or rn >= m or cn >= n:
                        continue
                    if (rn, cn) in V:
                        continue
                    if heights[rn][cn] >= heights[r][c]:
                        V.add((rn, cn))
                        s.add((rn, cn))
                        q.append((rn, cn))

        bfs(pac_q, pac_s)
        bfs(atl_q, atl_s)
        return list(pac_s & atl_s)
