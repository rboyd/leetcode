class Solution:
    def minStoneSum(self, piles: List[int], k: int) -> int:
        q = []
        total = 0
        for pile in piles:
            heappush(q, -pile)
            total += pile
        while k:
            k -= 1
            biggest = -heappop(q)
            removed = biggest // 2
            total -= removed
            biggest -= removed
            heappush(q, -biggest)
        return total
