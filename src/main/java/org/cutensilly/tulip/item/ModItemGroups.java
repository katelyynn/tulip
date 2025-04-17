package org.cutensilly.tulip.item;

import net.fabricmc.fabric.api.itemgroup.v1.FabricItemGroup;
import net.minecraft.item.ItemGroup;
import net.minecraft.item.ItemStack;
import net.minecraft.registry.Registries;
import net.minecraft.registry.Registry;
import net.minecraft.text.Text;
import net.minecraft.util.Identifier;
import org.cutensilly.tulip.Tulip;

public class ModItemGroups {

    public static final ItemGroup TULIP_ACCESSORIES = Registry.register(Registries.ITEM_GROUP,
            Identifier.of(Tulip.MOD_ID, "tulip_accessories"),
            FabricItemGroup.builder().icon(() -> new ItemStack(ModItems.ESTROGEN))
                    .displayName(Text.translatable("itemgroup.tulip.accessories"))
                    .entries(((displayContext, entries) -> {
                        entries.add(ModItems.ESTROGEN);
                    }))
                    .build());

    public static void registerItemGroups() {
        Tulip.LOGGER.info("Registering groups for" + Tulip.MOD_ID);
    }
}
