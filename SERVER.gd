extends SceneTree

func _ready():
	print("✅ Server ready, starting server...")
	create_server()

func create_server():
	var peer = ENetMultiplayerPeer.new()
	var result = peer.create_server(1234, 8)
	if result != OK:
		print("❌ Failed to start server: %s" % result)
		return

	get_multiplayer().set_multiplayer_peer(peer)
	print("✅ Server running on port 1234")

	# Optional dummy scene
	var dummy = preload("res://dummy.tscn").instantiate()
	get_root().add_child(dummy)
