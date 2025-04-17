package org.cutensilly.tulip.component;

import com.mojang.serialization.Codec;
import net.minecraft.component.ComponentType;
import net.minecraft.registry.Registries;
import net.minecraft.registry.Registry;
import net.minecraft.util.Identifier;
import org.cutensilly.tulip.Tulip;

import java.util.function.UnaryOperator;

public class TulipDataComponentTypes {
    public static final ComponentType<String> RARITY = register("rarity", builder -> builder.codec(Codec.STRING));

    private static <T>ComponentType<T> register(String name, UnaryOperator<ComponentType.Builder<T>> builderOperator) {
        return Registry.register(Registries.DATA_COMPONENT_TYPE, Identifier.of(Tulip.MOD_ID, name),
                builderOperator.apply(ComponentType.builder()).build());
    }

    public static void registerDataComponentTypes() {
        Tulip.LOGGER.info("Registering data components for" + Tulip.MOD_ID);
    }
}
