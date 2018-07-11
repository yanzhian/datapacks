#有人就尝试下降
execute if entity @a[x=24,y=41,z=95,dx=2,dy=2,dz=2] run function death_realm:door/down
#没人就尝试上升
execute unless entity @a[x=24,y=41,z=95,dx=2,dy=2,dz=2] run function death_realm:door/up