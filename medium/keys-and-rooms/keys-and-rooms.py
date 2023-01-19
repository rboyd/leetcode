class Solution:
    def canVisitAllRooms(self, rooms: List[List[int]]) -> bool:
        keychain = {0}
        def dfs(room_num):
            for key in rooms[room_num]:
                if key not in keychain:
                    keychain.add(key)
                    dfs(key)
        dfs(0)
        return len(keychain) == len(rooms)
