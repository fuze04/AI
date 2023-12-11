graph={
    '3':['5','8','25'],
    '5':['1','2'],
    '8':[ ],
    '25':['12','8'],
    '1':[ ],
    '2':[ ],
    '12':['6' ],
    '8':[],
    '6':['4','9' ],
    '4':[ ],
    '9':[ ],
    }

visited = set() # Set to keep track of visited nodes of graph.

def dfs(visited, graph, node):  #function for dfs 
    if node not in visited:
        print (node)
        visited.add(node)
        for neighbour in graph[node]:
            dfs(visited, graph, neighbour)

# Driver Code
print("Following is the Depth-First Search")
dfs(visited, graph, '3')
