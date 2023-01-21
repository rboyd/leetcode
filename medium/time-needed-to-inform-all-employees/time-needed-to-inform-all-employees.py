class Solution:
    def numOfMinutes(self, n: int, headID: int, manager: List[int], informTime: List[int]) -> int:
        adjs = defaultdict(set)
        for i, parent in enumerate(manager):
            adjs[parent].add(i)
        ans = 0
        def dfs(cur, total):
            nonlocal ans
            if not adjs[cur]:
                ans = max(ans, total)
            for adj in adjs[cur]:
                dfs(adj, total+informTime[cur])
        dfs(headID, 0)
        return ans
