class Solution:
    def minReorder(self, n: int, connections: List[List[int]]) -> int:
        adjs = defaultdict(set)
        E = set()
        for src, dst in connections:
            adjs[src].add(dst)
            adjs[dst].add(src)
            E.add((src, dst))
        V = set()
        def dfs(node):
            V.add(node)
            ret = 0
            for adj in adjs[node]:
                if adj in V:
                    continue
                if (node, adj) in E:
                    ret += 1
                ret += dfs(adj)
            return ret
        return dfs(0)
