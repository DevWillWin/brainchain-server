<<<<<<< HEAD
#!/bin/bash
curl -LO https://downloads.tuxfamily.org/godotengine/4.4.1/Godot_v4.4.1-stable_linux_headless.64.zip
unzip Godot_v4.4.1-stable_linux_headless.64.zip
mv Godot_v4.4.1-stable_linux_headless.64 godot
chmod +x godot
./godot --headless --path . --script SERVER.gd
=======
#!/bin/sh
godot-headless --main-pack project.godot --script SERVER.gd
>>>>>>> 92ac0993134320cb574c3f163844e19dc5ad070b
