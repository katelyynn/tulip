package org.cutensilly.tulip;

import net.fabricmc.api.ModInitializer;

import net.fabricmc.fabric.api.client.item.v1.ItemTooltipCallback;
import net.minecraft.text.MutableText;
import net.minecraft.text.Style;
import net.minecraft.text.Text;
import net.minecraft.util.Formatting;
import org.cutensilly.tulip.component.TulipDataComponentTypes;
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

		TulipDataComponentTypes.registerDataComponentTypes();

		// TODO: once docs are updated, move this to component
		ItemTooltipCallback.EVENT.register(((itemStack, tooltipContext, tooltipType, list) -> {
			boolean hasRarity = itemStack.contains(TulipDataComponentTypes.RARITY);
			if (hasRarity) {
				var rarity = itemStack.get(TulipDataComponentTypes.RARITY);

                assert rarity != null;
                var rarityColour = switch (rarity) {
                    case "uncommon" -> Formatting.GREEN;
                    case "rare" -> Formatting.BLUE;
                    case "epic" -> Formatting.DARK_PURPLE;
                    case "legendary" -> Formatting.GOLD;
                    case "mythic" -> Formatting.LIGHT_PURPLE;
                    case "special" -> Formatting.RED;
                    default -> Formatting.GRAY;
                };

				MutableText mutable = Text.translatable(String.format("rarity.tulip.%s", rarity))
						.withColor(16724480);

				list.add(mutable);
			}
		}));
	}
}