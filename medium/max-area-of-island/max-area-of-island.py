class Solution:
    def maxAreaOfIsland(self, grid: List[List[int]]) -> int:
        m = len(grid)
        n = len(grid[0])
        ans = 0
        def dfs(r, c):
            if r < 0 or r >= m:
                return 0
            if c < 0 or c >= n:
                return 0
            if grid[r][c] == 0:
                return 0
            grid[r][c] = 0
            ret = 1
            for r2, c2 in (r+1, c), (r-1, c), (r, c+1), (r, c-1):
                ret += dfs(r2, c2)
            return ret
        for r in range(m):
            for c in range(n):
                if grid[r][c] == 1:
                    ans = max(ans, dfs(r,c))
        return ans
