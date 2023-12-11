class BlockWord:
    def __init__(self):
        self.state =['A','B','C']
    def move(self,source,destination):

        if source == destination or source not in self.state:
            return False


        block = self.state.pop(self.state.index(source))

        self.state.append(block)
        return True

    def solve(self):

        self.move('A','C')
        
        self.move('A','B')
        
        self.move('C','B')
        
        self.move('A','C')
        
        self.move('B','A')
        
        self.move('B','C')
        
        self.move('A','C')
        
        return self.state
        
BlockWord=BlockWord()

final_state=BlockWord.solve()

print("Final stte:",final_state)


