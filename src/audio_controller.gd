extends Node2D

@onready var back_button_sounds = preload("res://Resources/Sound/SFX/back_button_randomizer.tres")
@onready var click_button_sounds = preload("res://Resources/Sound/SFX/back_button_randomizer.tres")

func _ready():
	pass

func play_back_button():
	$UISounds.stream = back_button_sounds
	$UISounds.play()

func play_click_button():
	$UISounds.stream = click_button_sounds
	$UISounds.play()

func set_music_volume(vol: float):
	$MusicPlayer.volume_db = vol

func set_sfx_volume(vol: float):
	$UISounds.volume_db = vol
	
func get_music_volume():
	return $MusicPlayer.volume_db
	
func get_sfx_volume():
	return $UISounds.volume_db
