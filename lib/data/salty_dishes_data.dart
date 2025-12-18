class SaltyDishesData {
  static List<Map<String, String>> getDishes(String countryName) {
    if (countryName == "Morocco") {
      return [
        {
          "name": "Harira",
          "desc": "Classic Moroccan Soup with Lentils and Chickpeas.",
          "image": "assets/Morocco/HariraMA.png",
          "fullRecipe": """
Classic Harira Recipe (Serves 6-8)
Prep time: 20 minutes (plus overnight soaking for dried legumes/chickpeas)
Cook time: ~2 hours

Ingredients
Meat (optional): 300g (about ⅔ lb) lamb or beef, cut into small cubes
Oil/Butter: 2 tbsp olive oil or 1 tbsp smen (Moroccan preserved butter) or ghee
Vegetables/Herbs:
- 1 large onion, finely chopped
- 2 stalks celery, finely chopped
- 1 cup fresh cilantro (coriander leaves), chopped
- ½ cup fresh parsley, chopped
- 2-3 cloves garlic, minced (optional)

Spices:
- 1 tsp ground ginger
- 1 tsp ground cinnamon
- 1 tsp ground turmeric
- 1 tsp paprika
- 1 tbsp cumin seeds or ground cumin (optional)
- Salt and freshly ground black pepper to taste

Legumes/Grains:
- 1 cup dried chickpeas, soaked overnight and drained
- ⅔ cup green or brown lentils, rinsed and drained
- ¼ cup vermicelli noodles or rice

Liquids:
- 8 cups (about 2 liters) water or stock (chicken or beef)
- 1 can (400g/14oz) chopped or pureed tomatoes, with juice
- 3 tbsp tomato paste

Tadwira (Thickener):
- ¼ cup all-purpose flour
- 1 cup water
- 1 large egg, beaten (optional, for extra richness)

For Serving:
Lemon wedges
Dates (traditional side dish)

Instructions
1. Sauté Aromatics: In a large, heavy-bottomed pot or Dutch oven, heat the olive oil/smen over medium heat. Add the chopped onion, celery, garlic (if using), and meat cubes (if using). Sauté for about 5-10 minutes until the vegetables soften and the meat is lightly browned.
2. Add Spices and Tomatoes: Stir in the ginger, cinnamon, turmeric, paprika, cumin, salt, and pepper. Cook for about 1 minute until the spices are fragrant. Add the canned tomatoes and tomato paste, stirring well.
3. Simmer Legumes: Pour in the water or stock. Add the drained chickpeas and lentils. Bring to a boil, then reduce the heat to a simmer. Cover and cook gently for approximately 1 hour, or until the chickpeas and lentils are starting to soften. Add water during cooking if the level drops too much.
4. Prepare the Tadwira: In a separate small bowl, whisk together the flour and 1 cup of cold water until completely smooth, ensuring no lumps. If you are using the optional beaten egg, whisk it into this slurry.
5. Thicken the Soup: Once the legumes are tender, increase the heat to medium-low. Slowly pour the flour-water mixture into the soup while stirring constantly to incorporate it evenly and prevent lumps. The soup will begin to thicken slightly.
6. Add Noodles/Rice and Finish: Stir in the vermicelli noodles or rice. Cook for another 10-15 minutes, or until the noodles/rice are tender.
7. Season and Serve: Stir in the fresh cilantro and parsley leaves. Taste and adjust seasoning with more salt, pepper, or a squeeze of lemon juice if desired.
8. Serve the hot Harira in bowls, garnished with extra fresh cilantro and a lemon wedge on the side. It is traditionally served with dates and bread.
"""
        },
        {
          "name": "Zaalouk",
          "desc": "Traditional Moroccan eggplant and tomato salad/dip.",
          "image": "assets/Morocco/ZaaloukMA.png",
          "fullRecipe": """
Authentic Moroccan Zaalouk
Zaalouk is a classic Moroccan dish made from cooked eggplants and tomatoes seasoned with a fragrant blend of spices and herbs. It's typically served as a warm or cold side dish or dip with crusty bread.

Yields: 4 servings | Prep time: 20 mins | Cook time: 40-50 mins

Ingredients
- 2 large eggplants (aubergines)
- 4 medium ripe tomatoes, peeled and chopped
- 4 tbsp olive oil, plus more for drizzling
- 4-6 cloves garlic, minced
- 2 tsp ground paprika
- 2 tsp ground cumin
- 1 tsp salt (or to taste)
- 1/2 tsp black pepper (or to taste)
- 1/4 cup fresh cilantro, chopped
- 1/4 cup fresh parsley, chopped
- Juice of 1/2 lemon (optional)
- Pinch of harissa or cayenne powder (optional, for spice)

Instructions
1. Roast or Boil Eggplant: You can roast the eggplants for a smoky flavor or boil them.
- Roast Method: Cut eggplants in half lengthwise, slash the flesh, drizzle with oil, and roast at 200°C (400°F) until very tender (about 30–40 minutes). Scoop out the flesh and lightly mash.
- Boil Method: Peel and cube the eggplants, then boil in salted water for 25–30 minutes until soft. Drain well, pressing out excess water with a fork.
2. Cook Tomato Base: In a large pan or skillet, heat 2 tbsp of olive oil over medium heat. Add the minced garlic and cook for 1 minute until fragrant. Add the chopped tomatoes, salt, paprika, cumin, and pepper. Cook over a gentle heat for about 15 minutes, or until the tomatoes have broken down into a thick sauce.
3. Combine and Mash: Stir in the cooked eggplant flesh, most of the fresh cilantro and parsley, and the optional harissa or lemon juice. Use a fork or potato masher to mash the mixture until you achieve your desired consistency (chunky or smooth).
4. Simmer and Finish: Continue to simmer the mixture on low heat for 5–10 minutes, stirring frequently, to allow the flavors to blend and any excess liquid to reduce.
5. Serve: Remove from heat and taste, adjusting seasoning if necessary. Serve warm, cold, or at room temperature, garnished with the remaining fresh herbs and a final drizzle of olive oil.

Serving Suggestion:
Zaalouk is traditionally served in a communal dish and eaten by scooping it up with pieces of Moroccan bread (khobz).
"""
        },
      ];
    } else if (countryName == "France") {
      return [
        {
          "name": "French Onion Soup",
          "desc": "Rich beef broth with caramelized onions and melted cheese.",
          "image": "assets/France/OnionSoupFR.png",
          "fullRecipe": """
Classic French Onion Soup Recipe (Serves 4)

Ingredients
- 4 large yellow onions (about 3 lbs/1.4kg), thinly sliced
- 3 tbsp unsalted butter
- 1 tbsp olive oil
- 1 tsp salt (plus more to taste)
- 1/2 tsp black pepper (to taste)
- 1 tsp granulated sugar (optional, helps caramelization)
- 2 cloves garlic, minced
- 2 tbsp all-purpose flour
- 1/2 cup dry white wine or dry sherry (e.g., Sauvignon Blanc)
- 8 cups beef broth (or stock)
- 2 bay leaves
- 4 sprigs fresh thyme (or 1 tsp dried)
- 1 large baguette, sliced into 1/2-inch thick rounds
- 1 1/2 cups grated Gruyère cheese (about 6oz), plus extra for sprinkling

Instructions
1. Caramelize Onions: In a large, heavy-bottomed pot or Dutch oven, melt the butter and olive oil over medium heat. Add the sliced onions and a pinch of salt and the sugar (if using). Cook, stirring occasionally, for 45-60 minutes until the onions are deeply golden brown, soft, and caramelized. If the onions start to burn, deglaze the pot with a tablespoon of water and scrape the bottom.
2. Add Aromatics and Flour: Stir in the minced garlic and cook for 1 minute until fragrant. Sprinkle the flour over the onions and stir constantly for 2 minutes to cook off the raw flour taste.
3. Deglaze with Wine: Pour in the white wine or sherry to deglaze the pot, scraping up all the flavorful browned bits (fond) from the bottom. Let the wine reduce for about 2-3 minutes until almost evaporated.
4. Simmer the Soup: Add the beef broth, bay leaves, and thyme sprigs to the pot. Bring the mixture to a gentle simmer. Reduce the heat to low, cover, and simmer for 20-30 minutes to allow the flavors to meld. Taste and adjust seasoning with salt and pepper.
5. Prepare Topping: While the soup simmers, preheat your oven broiler. Arrange the baguette slices on a baking sheet and toast until golden brown and crisp, about 8-10 minutes in a 400°F (200°C) oven.
6. Assemble and Broil: Discard the bay leaves and thyme stems from the soup. Ladle the hot soup into individual oven-safe bowls (crocks). Float one or two slices of toasted bread on top of each bowl and cover generously with grated Gruyère cheese.
7. Serve: Place the bowls on a baking sheet and broil for 2-5 minutes, watching closely, until the cheese is melted, bubbly, and spotted with golden brown. Carefully remove from the oven and serve immediately.
"""
        },
        {
          "name": "Croque Monsieur",
          "desc": "Classic French ham and cheese sandwich with béchamel.",
          "image": "assets/France/CroqueMFR.png",
          "fullRecipe": """
Classic Croque Monsieur Recipe (Serves 2)

Ingredients
For the Béchamel Sauce:
- 2 tbsp (28g) unsalted butter
- 2 tbsp (16g) all-purpose flour
- 1 cup (240ml) whole milk, warmed
- Pinch of fresh nutmeg
- Pinch of salt and fresh black pepper

For the Sandwich:
- 4 slices thick white bread (Pain de Mie or Brioche works best)
- 1 tbsp Dijon mustard
- 4-6 slices quality baked ham
- 1 1/2 cups grated Gruyère cheese, divided (reserve some for the topping)
- Softened butter, for spreading on the bread

Instructions
1. Make the Béchamel Sauce: In a small saucepan over medium heat, melt the 2 tbsp of butter. Whisk in the flour and cook for about 1 minute, stirring constantly, to create a roux. Gradually pour in the warm milk, whisking continuously until the sauce thickens and becomes smooth, about 3-5 minutes. Remove from heat and stir in the nutmeg, salt, and pepper.
2. Preheat Oven/Broiler: Preheat your oven to 400°F (200°C) or prepare your broiler on high.
3. Assemble the Sandwiches:
- Butter one side of all four slices of bread.
- On the unbuttered side, spread a thin layer of Dijon mustard.
- On two of the slices, layer the ham and about half of the grated Gruyère cheese.
- Top with the remaining slices of bread, buttered side up.
4. Cook the Sandwiches:
- Place the assembled sandwiches on a parchment-lined baking sheet.
- Generously spread the prepared béchamel sauce over the top of each sandwich, ensuring it covers the edges.
- Sprinkle the remaining Gruyère cheese over the top of the sauce.
5. Bake and Broil: Bake in the preheated oven for about 10-15 minutes, or until the cheese has melted and the bread is golden. For a bubbly, golden-brown top, finish by broiling for 2-3 minutes, watching carefully to avoid burning.
6. Serve: Let cool slightly before slicing in half. Serve immediately, often alongside a small green salad.

To make a Croque Madame, simply place a fried or poached egg on top of the finished Croque Monsieur just before serving.
"""
        },
        {
          "name": "Quiche Lorraine",
          "desc": "Savory tart with bacon, onions, and cheese.",
          "image": "assets/France/QuicheLorraineFR.png",
          "fullRecipe": """
Classic Quiche Lorraine Recipe
Yields: 6-8 servings
Prep time: 20 minutes (plus time for pastry chilling)
Cook time: Approx. 1 hour 15 minutes

Ingredients
For the Pastry (or use a 9-inch store-bought crust)
- 1 ½ cups all-purpose flour
- ½ tsp salt
- ½ cup cold unsalted butter, cubed
- 2–4 tbsp ice-cold water

For the Filling
- 6 slices thick-cut bacon, diced (or 7 oz lardons)
- 1 small onion or 2 shallots, finely chopped (optional)
- 4 large eggs
- 1 cup heavy cream
- ½ cup whole milk (or use a total of 1.5 cups of half-and-half)
- 1 ½ cups shredded Gruyère or Swiss cheese
- ¼ tsp salt
- ¼ tsp black pepper
- Pinch of ground nutmeg

Instructions
1. Prepare the Crust: Combine flour, salt, cold butter until coarse meal. Add ice water until dough forms. Chill 1 hour. Roll out, fit into 9-inch pie dish, trim, prick bottom.
2. Blind Bake the Crust: Preheat oven to 375°F (190°C). Line with parchment/weights. Bake 10-15 mins. Remove weights, bake 5 more mins. Cool slightly.
3. Cook the Bacon and Onions: Cook bacon until crispy. Remove. Sauté onion in fat until soft.
4. Prepare the Custard: Whisk eggs, heavy cream, milk, salt, pepper, nutmeg.
5. Assemble the Quiche: Sprinkle bacon and onions on crust. Top with cheese. Pour custard over filling.
6. Bake: Bake at 375°F (190°C) for 35–40 minutes until set and golden.
7. Cool and Serve: Cool 10-15 mins before slicing.
"""
        },
      ];
    } else if (countryName == "Japan") {
      return [
        {
          "name": "Miso Soup",
          "desc": "Traditional Japanese soup with dashi and miso paste.",
          "image": "assets/Japan/MisoSoupJP.png",
          "fullRecipe": """
Authentic Japanese Miso Soup
Authentic Japanese miso soup consists of a savory broth base called dashi, fermented miso paste, and various garnishes. The most critical rule in its preparation is to never boil the soup after adding the miso, as excessive heat destroys its delicate flavor and beneficial enzymes.

Ingredients
The following quantities typically serve 2–4 people.
- Dashi (Stock): 4 cups of water combined with 1 piece of dried kombu (kelp) and 1 cup of bonito flakes (katsuobushi).
Shortcut: Use 1–2 teaspoons of instant dashi granules.
- Miso Paste: 3–4 tablespoons of white (milder) or red (stronger) miso.
- Tofu: 3–7 oz of silken or soft tofu, cut into ½-inch cubes.
- Seaweed: 1 tablespoon of dried wakame.
- Garnish: 1–2 green onions (scallions), thinly sliced.

Instructions
1. Prepare the Dashi:
- Place water and kombu in a pot. Heat slowly to just below a boil, then remove the kombu to avoid bitterness.
- Add bonito flakes, bring to a brief boil, then turn off the heat and let steep for 2–10 minutes. Strain the liquid.
- If using instant dashi: Simply dissolve granules in boiling water.
2. Hydrate the Seaweed: Soak the dried wakame in a small bowl of water for 3–5 minutes. Drain before using.
3. Add Garnish Ingredients: Return the strained dashi to a simmer. Add the tofu cubes and rehydrated wakame. Cook for 1–2 minutes until just heated through.
4. Incorporate the Miso: Turn the heat to low or off. Place the miso paste in a small fine-mesh strainer or ladle partially submerged in the broth. Use chopsticks or a spoon to stir the paste until it completely dissolves into the soup.
5. Serve: Ladle into bowls and top with fresh green onions. Serve immediately.

Variations & Substitutes
- Vegan Option: Use only kombu or dried shiitake mushrooms to make the dashi, and ensure the miso paste does not contain fish extracts.
- Common Add-ins: You can customize your soup with sliced mushrooms, spinach, daikon radish, or potatoes.
- Miso Substitute: If miso is unavailable, a mix of soy sauce and tahini can provide a similar (though not identical) umami and salty profile.
"""
        },
        {
          "name": "Grilled Chicken Yakitori",
          "desc": "Negima Style grilled chicken and green onion skewers.",
          "image": "assets/Japan/YakitoriJP.png",
          "fullRecipe": """
Grilled Chicken Yakitori (Negima Style)
Yields: 4 servings | Prep time: 20 mins | Cook time: 15 mins

Ingredients
The Chicken & Vegetables:
- 1.5 lbs Boneless Chicken Thighs, cut into 1-inch cubes.
- 2 bunches Green Onions (Scallions), cut into 1-inch white and light green pieces.
- 10–12 Bamboo Skewers, soaked in water for at least 30 minutes to prevent burning.
The Glaze (Savory-Sweet Base):
- 1/2 cup Soy Sauce.
- 1/2 cup Water.
- 1/3 cup Brown Sugar or Honey (adds the characteristic stickiness).
- 2 tbsp Rice Vinegar (provides the necessary acidity and brightness).
- 1 tsp Ginger, freshly grated.
- 1 clove Garlic, minced.

Instructions
1. Prepare the Sauce: In a small saucepan, combine the soy sauce, water, brown sugar, rice vinegar, ginger, and garlic. Bring to a gentle boil over medium heat, then reduce to a simmer. Cook for 10–15 minutes until the liquid reduces by about half and becomes thick enough to coat a spoon. Set aside to cool.
2. Assemble the Skewers: Thread the chicken and green onion pieces onto the soaked skewers, alternating between one piece of chicken and one piece of onion.
3. Grill the Chicken:
- Preheat a grill pan, outdoor grill, or broiler to medium-high heat.
- Lightly grease the grates with vegetable oil.
- Place the skewers on the grill and cook for 3–4 minutes on the first side until lightly charred.
4. Baste and Glaze: Once the chicken is mostly cooked through, use a brush to generously apply the thickened sauce. Flip the skewers and grill for another 2–3 minutes, basting again, until the sauce is bubbly and caramelized into a dark, shiny glaze.
5. Final Touch: For an extra layer of flavor, give the skewers one final brush of sauce right before serving. Sprinkle with toasted sesame seeds or a pinch of red pepper flakes if desired.

Cooking Tips
- Uniformity: Cut the chicken pieces to a consistent size (roughly 1 inch) to ensure they all finish cooking at the same time.
- Richness: If you want a more complex flavor without using rice wine, you can add a tablespoon of Apple Juice or White Grape Juice to the sauce mixture during simmering for a fruiter sweetness.
- Avoid Overcooking: Chicken thighs are preferred over breasts because they stay juicy and tender even under high heat.
"""
        },
      ];
    }
    return [];
  }
}
