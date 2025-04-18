package org.cutensilly.tulip;

import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.item.v1.ItemTooltipCallback;
import net.minecraft.text.MutableText;
import net.minecraft.text.Text;
import org.cutensilly.tulip.component.TulipDataComponentTypes;

public class TulipClient implements ClientModInitializer {

    @Override
    public void onInitializeClient() {
        // TODO: once docs are updated, move this to component
        ItemTooltipCallback.EVENT.register(((itemStack, tooltipContext, tooltipType, list) -> {
            boolean hasRarity = itemStack.contains(TulipDataComponentTypes.RARITY);

            if (!hasRarity) {
                itemStack.set(TulipDataComponentTypes.RARITY, "common");
            }

            var rarity = itemStack.get(TulipDataComponentTypes.RARITY);

            assert rarity != null;
            int rarityColour = switch (rarity) {
                case "uncommon" -> 9089377;
                case "rare" -> 6852573;
                case "epic" -> 8939995;
                case "legendary" -> 14721100;
                case "mythic" -> 15231451;
                case "special" -> 14374770;
                default -> 9933455;
            };

            MutableText mutable = Text.translatable(String.format("rarity.tulip.%s", rarity))
                    .withColor(rarityColour);

            list.add(Text.literal(""));
            list.add(mutable);
        }));
    }
}
