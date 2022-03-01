#init 
graph = TinkerGraph.open()
g=graph.traversal()

#add 2 nodes and one edge
g.addV('pessoa').property('name','diana').as('diana').addV('pessoa').property('name','helena').as('helena').addE('likes').from('diana').to('helena')

#get one existing node, add one node, and one edge
g.V().has('name','diana').as('diana').addV('person').property('name','carolina').as('carolina').addE('likes').from('diana').to('carolina')

#describe entities
g.V().values()
g.E()
