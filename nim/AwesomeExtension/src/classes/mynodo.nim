# src/classes/gdmyfirstnode.nim
import gdext
import gdext/classes/[gdNode]

type MyFirstNode* {.gdsync.} = ptr object of Node

method ready*(self: MyFirstNode) {.gdsync.} =
  print "hello, world!"
