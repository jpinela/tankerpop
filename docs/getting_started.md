graph = TinkerGraph.open()
g=graph.traversal()

g.addV('pessoa').property('name','diana').as('diana').addV('pessoa').property('name','helena').as('helena').addE('likes').from('diana').to('helena')
g.V().where(addV('pessoa').property('name','carolina').as('carolina').addE('likes').from('diana').to('carolina')

g.V()

g.V().has('name','diana').as('diana').addV('pessoa').property('name','carolina').as('carolina').addE('likes').from('diana').to('carolina')

g.E()
