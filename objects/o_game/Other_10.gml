//toggle pause

if(!paused_) {
	paused_ = true
	instance_deactivate_all(true)
} else {
	paused_ = false
	instance_activate_all()
}