class Solution:
    def makeConnected(self, n: int, connections: List[List[int]]) -> int:
        parent = [i for i in range(n)]
        rank = [1] * n
        def find(a):
            if parent[a] != a:
                parent[a] = find(parent[a])
            return parent[a]
        def union(a, b):
            pa, pb = find(a), find(b)
            if pa == pb:
                return 1
            if rank[pa] < rank[pb]:
                pb, pa = pa, pb
            parent[pb] = parent[pa]
            rank[pa] += rank[pb]
            return 0
        extra_cables = 0
        for src, dst in connections:
            extra_cables += union(src, dst)
        num_components = len(set([find(i) for i in range(n)]))
        if num_components-1 > extra_cables:
            return -1
        return num_components-1
