class Solution:
    def shortestPathBinaryMatrix(self, grid: List[List[int]]) -> int:
        m = len(grid)
        n = len(grid[0])
        if grid[0][0] == 1:
            return -1
        if m == n == 1:
            return 1
        grid[0][0] = 1
        q = [(0, 0, 1)]
        for r, c, pathlen in q:
            dirs = [
                (0, 1),
                (0, -1),
                (1, 0),
                (-1, 0),
                (1, 1),
                (1, -1),
                (-1, -1),
                (-1, 1)]
            for r2, c2 in dirs:
                rn, cn = r+r2, c+c2
                if 0 <= rn < m and 0 <= cn < n and grid[rn][cn] != 1:
                    grid[rn][cn] = 1
                    if rn == m-1 and cn == n-1:
                        return pathlen+1
                    q.append((rn, cn, pathlen+1))
        return -1
