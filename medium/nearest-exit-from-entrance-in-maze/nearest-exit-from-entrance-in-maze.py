class Solution:
    def nearestExit(self, maze: List[List[str]], entrance: List[int]) -> int:
        m = len(maze)
        n = len(maze[0])
        entrance.append(0)
        q = [entrance]
        for r, c, steps in q:
            maze[r][c] = '+'
            dirs = [1, 0, -1, 0, 1]
            for di in range(4):
                rn, cn = r+dirs[di], c+dirs[di+1]
                if 0 <= rn < m and 0 <= cn < n and maze[rn][cn] == '.':
                    maze[rn][cn] = '+'
                    if rn == 0 or rn == m-1 or cn == 0 or cn == n-1:
                        return steps+1
                    q.append((rn, cn, steps+1))
        return -1
