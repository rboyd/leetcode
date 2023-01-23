class Solution:
    def eventualSafeNodes(self, graph: List[List[int]]) -> List[int]:
        in_degree = defaultdict(set)
        out_degree = {node: 0 for node in range(len(graph))}
        for src, adjs in enumerate(graph):
            for dst in adjs:
                in_degree[dst].add(src)
                out_degree[src] += 1
        q = [node for node, edges_out in out_degree.items() if edges_out == 0]
        ans = []
        while q:
            safe_node = q.pop()
            ans.append(safe_node)
            for in_adj in in_degree[safe_node]:
                out_degree[in_adj] -= 1
                if out_degree[in_adj] == 0:
                    q.append(in_adj)
        ans.sort()
        return ans
