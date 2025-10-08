::mods_registerMod("fangshire_removal", 1.1, "Sato's Fangshire Removal");

::mods_queue("fangshire_removal", null, function() {
	::include("script_hooks/remove_fangshire");
	::include("script_hooks/fangshire_hoggart_reward");
});
