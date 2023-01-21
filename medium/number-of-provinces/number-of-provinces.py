class Solution:
    def findCircleNum(self, isConnected: List[List[int]]) -> int:
        n = len(isConnected)
        parent = [i for i in range(n)]
        def find(a):
            if parent[a] != a:
                parent[a] = find(parent[a])
            return parent[a]
        def union(a, b):
            pa, pb = find(a), find(b)
            if pa == pb:
                return 0
            if pa < pb:
                parent[pb] = pa
            else:
                parent[pa] = pb

        for i in range(n):
            for j, edge in enumerate(isConnected[i]):
                if edge != 1:
                    continue
                union(i, j)
        return len(set([find(i) for i in range(n)]))
