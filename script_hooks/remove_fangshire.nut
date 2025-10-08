// This is my *preferred* way of getting rid of the helm. . .but it messes with seeds. RIP.
/* if (Const.DLC.Fangshire) {
	foreach (index, item in Const.World.Assets.NewCampaignEquipment)
		if (item == "scripts/items/helmets/legendary/fangshire")
			Const.World.Assets.NewCampaignEquipment.remove(index);
} */

::mods_hookNewObject("states/world/asset_manager", function(am) {
	local setCampaignSettings = ::mods_getMember(am, "setCampaignSettings");

	::mods_override(am, "setCampaignSettings", function(_settings) {
		setCampaignSettings(_settings);

		foreach (item in m.Stash.getItems()) {
			if (item.getID() == "armor.head.fangshire") {
				m.Stash.remove(item);
				break;
			}
		}
	});
});
