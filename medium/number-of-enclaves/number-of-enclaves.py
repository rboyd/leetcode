class Solution:
    def numEnclaves(self, grid: List[List[int]]) -> int:
        m = len(grid)
        n = len(grid[0])
        ans = 0
        def dfs(r, c):
            if grid[r][c] == 0:
                return 0
            if r == 0 or r == m-1 or c == 0 or c == n-1:
                return -math.inf
            grid[r][c] = 0
            ret = 1
            for r2, c2 in (r+1, c), (r-1, c), (r, c+1), (r, c-1):
                ret += dfs(r2, c2)
            return ret
        for r in range(1, m-1):
            for c in range(1, n-1):
                if grid[r][c] == 1:
                    ret = dfs(r, c)
                    if ret > 0:
                        ans += ret
        return ans
