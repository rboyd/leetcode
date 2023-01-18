class Solution:
    def shortestBridge(self, grid: List[List[int]]) -> int:
        n = len(grid)
        q = []
        dirs = [1, 0, -1, 0, 1]
        def dfs(r, c):
            q.append((r, c, 0))
            for di in range(4):
                rn, cn = r+dirs[di], c+dirs[di+1]
                if 0 <= rn < n and 0 <= cn < n and grid[rn][cn] == 1:
                    grid[rn][cn] = -1
                    dfs(rn, cn)
        found = False
        for r in range(n):
            if found:
                break
            for c in range(n):
                if grid[r][c] == 1:
                    grid[r][c] = -1
                    dfs(r, c)
                    found = True
                    break

        for r, c, pathlen in q:
            for di in range(4):
                rn, cn = r+dirs[di], c+dirs[di+1]
                if 0 <= rn < n and 0 <= cn < n:
                    if grid[rn][cn] == 1:
                        return pathlen
                    if grid[rn][cn] == 0:
                        grid[rn][cn] = -1
                        q.append((rn, cn, pathlen+1))
        return -1
