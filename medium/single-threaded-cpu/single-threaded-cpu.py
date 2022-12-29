class Solution:
    def getOrder(self, tasks: List[List[int]]) -> List[int]:
        tuples = []
        for i, t in enumerate(tasks):
            tuples.append((t[0], t[1], i))
        tuples.sort()
        t = 1
        i = 0
        q = []
        ans = []
        while i < len(tuples):
            if not q and t < tuples[i][0]:
                t = tuples[i][0]
                continue
            while i < len(tuples) and t >= tuples[i][0]:
                heappush(q, (tuples[i][1], tuples[i][2])) # duration, idx
                i += 1
            if q:
                duration, idx = heappop(q)
                t += duration
                ans.append(idx)
        while q:
            duration, idx = heappop(q)
            ans.append(idx)
        return ans
