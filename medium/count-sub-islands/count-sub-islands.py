class Solution:
    def countSubIslands(self, grid1: List[List[int]], grid2: List[List[int]]) -> int:
        m = len(grid1)
        n = len(grid1[0])

        def dfs(r, c):
            if grid2[r][c] == 0:
                return 0
            grid2[r][c] = 0
            ret = 1
            if grid1[r][c] == 0:
                ret = -math.inf
            dirs = [1, 0, -1, 0, 1]
            for di in range(4):
                r2 = r+dirs[di]
                c2 = c+dirs[di+1]
                if 0 <= r2 < m and 0 <= c2 < n and grid2[r2][c2] == 1:
                    ret += dfs(r2, c2)
            return ret
        ans = 0
        for r in range(m):
            for c in range(n):
                if grid2[r][c] != 1:
                    continue
                ret = dfs(r, c)
                if ret > 0:
                    ans += 1
        return ans
