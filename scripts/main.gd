extends Node

@onready var input = $TextAreas/Input
@onready var output = $TextAreas/Output
@onready var string_output = $TextAreas/StringOutput
@onready var string_prefix_box = $Buttons/StringPrefixBox

var save_mode := ""

func _ready():
	pass

func _on_convert_btn_pressed():
	var converter = ExplorerScriptToPMDO.new()
	if not string_prefix_box.text.is_empty():
		converter.config.set("StringPrefix", string_prefix_box.text)
	var result = converter._convert_script(input.text)
	output.text = result.get("lua", "")
	string_output.text = result.get("strings", "")

func _on_copy_lua_btn_pressed():
	DisplayServer.clipboard_set(output.text)

func _on_export_lua_btn_pressed():
	save_mode = "lua"
	_save_as()

func _on_copy_strings_btn_pressed():
	DisplayServer.clipboard_set(string_output.text)

func _on_export_strings_btn_pressed():
	save_mode = "str"
	_save_as()

func _save_as():
	var file_dialog = FileDialog.new()
	file_dialog.mode = FileDialog.FILE_MODE_SAVE_FILE
	file_dialog.access = FileDialog.ACCESS_FILESYSTEM
	file_dialog.use_native_dialog = true
	match save_mode:
		"lua":
			file_dialog.add_filter("*.lua", "Lua Script")
		"str":
			file_dialog.add_filter("*.resx", "XML Format")
	file_dialog.popup()
	
	file_dialog.connect("file_selected", Callable(_on_file_selected))
	add_child(file_dialog)

func _on_file_selected(path):
	# Logic to save the file at the selected path
	print("File will be saved to: ", path)

	var file = FileAccess.open(path, FileAccess.WRITE)
	match save_mode:
		"lua":
			file.store_string(output.text)
		"str":
			file.store_string(string_output.text)
