import gdext,std/macros
import gdext/classes/[gdRefCounted]

macro GodScript*(i)=quote do:
  type `i`* {.gdsync.} = ptr object of RefCounted
    funcionando*{.gdexport.}:bool=true

GodScript character

var t:array[100000000,int]
proc numu*(self:aracter):int{.gdsync.}=
    for i in 0..99999999:
      t[i]=i*i
      
    return t[99999999]

    



