import gdext,std/macros
import gdext/classes/[gdSprite2D, gdInput,gdRefCounted]
type Character* {.gdsync.} = ptr object of Sprite2D
  speed: float = 400
  angular_speed: float = PI

macro GodScript*(i)=quote do:
  type `i`* {.gdsync.} = ptr object of RefCounted
    funcionando*{.gdexport.}:bool=true

 
method process(self: Character; delta: float64) {.gdsync.} =
  var direction = 0
  if Input.is_action_pressed("ui_left"):
    direction = -1
  if Input.is_action_pressed("ui_right"):
    direction = 1

  self.rotation = self.rotation + self.angular_speed * direction * delta

  var velocity: Vector2
  if Input.is_action_pressed("ui_up"):
    velocity = Vector2.Up.rotated(self.rotation) * self.speed
  self.position = self.position + velocity * delta
