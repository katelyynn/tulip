package org.cutensilly.tulip;

import net.fabricmc.api.ModInitializer;

import org.cutensilly.tulip.item.TulipItemGroups;
import org.cutensilly.tulip.item.TulipItems;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Tulip implements ModInitializer {
	public static final String MOD_ID = "tulip";

	// This logger is used to write text to the console and the log file.
	// It is considered best practice to use your mod id as the logger's name.
	// That way, it's clear which mod wrote info, warnings, and errors.
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

	@Override
	public void onInitialize() {
		TulipItems.registerModItems();
		TulipItemGroups.registerItemGroups();
	}
}