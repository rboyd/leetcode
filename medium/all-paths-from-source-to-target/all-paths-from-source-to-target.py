class Solution:
    def allPathsSourceTarget(self, graph: List[List[int]]) -> List[List[int]]:
        ans = []
        n = len(graph)
        def dfs(path: List[int], pos: int) -> None:
            for adj in graph[pos]:
                if adj == n-1:
                    ans.append(path + [adj])
                else:
                    dfs(path + [adj], adj)
        dfs([0], 0)
        return ans
