class Solution:
    def isBipartite(self, graph: List[List[int]]) -> bool:
        BLACK = 0
        RED = 1
        colors = [None] * len(graph)
        def dfs(node, color):
            for adj in graph[node]:
                if colors[adj] == color:
                    return False
                if colors[adj] == None:
                    nxtColor = RED if color == BLACK else BLACK
                    colors[adj] = nxtColor
                    if not dfs(adj, nxtColor):
                        return False
            return True
        for i in range(len(graph)):
            if colors[i] == None:
                colors[i] = BLACK
                if not dfs(i, BLACK):
                    return False
        return True
