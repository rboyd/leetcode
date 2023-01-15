class Solution:
    def numberOfGoodPaths(self, vals: List[int], edges: List[List[int]]) -> int:
        m = {}
        adjs = defaultdict(set)
        parent = {}
        for src, dst in edges:
            adjs[src].add(dst)
            adjs[dst].add(src)
        val_to_nodes = defaultdict(set)
        for i, val in enumerate(vals):
            parent[i] = i
            m[i] = defaultdict(int)
            val_to_nodes[val].add(i)
        sorted_vals = sorted(val_to_nodes.keys())
        def union(a, b):
            pa, pb = find(a), find(b)
            if pa == pb:
                return False
            if pa < pb:
                parent[pb] = pa
            else:
                parent[pa] = pb
            return True
        def find(a):
            if parent[a] != a:
                parent[a] = find(parent[a])
            return parent[a]
        ans = 0
        for val in sorted_vals:
            for node in sorted(val_to_nodes[val]):
                p_node = node
                for adj in adjs[node]:
                    if vals[adj] <= val:
                        union(node, adj)
                        p_node = find(node)
                m[p_node][val] += 1
                ans += m[p_node][val]
        return ans
