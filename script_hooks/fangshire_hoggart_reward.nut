::mods_hookNewObject("contracts/contracts/tutorial_contract", function(tc) {
	foreach (state in tc.m.States) {
		if (state.ID == "Finale") {
			local start = state.start;
			state.start = function() {
				start();

				Contract.m.Location.addToInventory("helmets/legendary/fangshire");
			}
		}
	}
});
