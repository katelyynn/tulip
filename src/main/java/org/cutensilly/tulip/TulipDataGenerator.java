package org.cutensilly.tulip;

import net.fabricmc.fabric.api.datagen.v1.DataGeneratorEntrypoint;
import net.fabricmc.fabric.api.datagen.v1.FabricDataGenerator;
import org.cutensilly.tulip.datagen.*;

public class TulipDataGenerator implements DataGeneratorEntrypoint {
	@Override
	public void onInitializeDataGenerator(FabricDataGenerator fabricDataGenerator) {
		FabricDataGenerator.Pack pack = fabricDataGenerator.createPack();

		pack.addProvider(TulipBlockTagProvider::new);
		pack.addProvider(TulipItemTagProvider::new);
		//pack.addProvider(TulipLootTableProvider::new);
		pack.addProvider(TulipModelProvider::new);
		pack.addProvider(TulipRecipeProvider::new);
	}
}
