if (Const.DLC.Fangshire) {
	// local fangshireIndex = -1;
	foreach (index, item in Const.World.Assets.NewCampaignEquipment)
		if (item == "scripts/items/helmets/legendary/fangshire")
			Const.World.Assets.NewCampaignEquipment.remove(index);
}
