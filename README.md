# in-engine-jumper

A Godot Game Engine plugin that actually is a simple jumper game which runs as a Godot Dock with the Built-in Control Node.<br>
<h2> NOTE: This was made as an experiment as no one else seemed to have done this before. </h2>

Only Tested in Godot Version 3.2

A screenshot: <br><br>
![ss](https://user-images.githubusercontent.com/81418329/118756267-638c3f80-b88c-11eb-8863-6ec6f8d4688e.PNG)

<br><br>
<h2> Results: It's pretty slow and: </h2>
<br>
  - 2 KinematicBody2Ds won't collide with each other. Fixed it by adding StaticBody2Ds with the same collision layer as the main Kinematic and made them have the exact position as their main Kinematic (updates every physics delta) <br>
  - Reset button sometimes doesn't work properly. It won't re-spawn player sometimes. But clicking it twice or more fixes it. May fix this later. <br>
  - Many other godot features that work in a normal/appropiate game won't work this way (This is obvious because games aren't supposed to be made this way in the first place)
