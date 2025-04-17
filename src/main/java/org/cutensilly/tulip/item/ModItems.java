package org.cutensilly.tulip.item;

import net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents;
import net.minecraft.item.Item;
import net.minecraft.item.ItemGroups;
import net.minecraft.registry.Registries;
import net.minecraft.registry.Registry;
import net.minecraft.registry.RegistryKey;
import net.minecraft.registry.RegistryKeys;
import net.minecraft.util.Identifier;
import org.cutensilly.tulip.Tulip;

public class ModItems {

    public static final Item ESTROGEN = registerItem("estrogen", new Item(new Item.Settings().registryKey(RegistryKey.of(RegistryKeys.ITEM, Identifier.of(Tulip.MOD_ID, "estrogen")))));

    private static Item registerItem(String name, Item item) {
        return Registry.register(Registries.ITEM, Identifier.of(Tulip.MOD_ID, name), item);
    }

    public static void registerModItems() {
        Tulip.LOGGER.info("Registering items for" + Tulip.MOD_ID);

        ItemGroupEvents.modifyEntriesEvent(ItemGroups.INGREDIENTS).register(fabricItemGroupEntries -> {
           fabricItemGroupEntries.add(ESTROGEN);
        });
    }
}
