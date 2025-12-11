class SweetDishesData {
  static List<Map<String, String>> getDishes(String countryName) {
    if (countryName == "France") {
      return [
        {
          "name": "Crème Brûlée",
          "desc": "Classic vanilla custard with caramelized sugar crust.",
          "image": "assets/France/CremeBruleeFR.png",
          "fullRecipe": """
Classic Vanilla Crème Brûlée Recipe
Yields: 4 servings
Prep time: 15 minutes
Cook time: 35–50 minutes
Chill time: At least 4 hours
Total time: ~5 hours

Ingredients
- 2 cups (450ml) heavy whipping cream
- 1 vanilla bean (split lengthwise, seeds scraped) or 1 teaspoon pure vanilla extract
- 4 large egg yolks
- ¼ cup (50g) granulated sugar (for the custard)
- 4 tablespoons granulated sugar or turbinado sugar (for the topping)
- Pinch of salt
- Boiling water (for the water bath)

Equipment
- 4 (6-ounce) ramekins
- Large baking dish (roasting pan)
- Fine-mesh sieve
- Kitchen blowtorch (recommended) or oven broiler

Instructions
1. Preheat Oven: Preheat your oven to 325°F (160°C). Place the 4 ramekins in a large baking dish.
2. Infuse Cream: In a medium saucepan, heat the heavy cream with the vanilla seeds and pod (or vanilla extract) and a pinch of salt over medium heat until it just begins to simmer. Do not let it boil. Remove from heat, cover, and let infuse for 15 minutes.
3. Whisk Yolks and Sugar: In a large bowl, whisk the egg yolks and ¼ cup sugar until pale, thick, and well-blended.
4. Temper the Eggs: Slowly pour about ½ cup of hot cream into the yolk mixture while whisking constantly. Then, whisk in the remaining cream.
5. Strain and Pour: Strain the mixture through a fine-mesh sieve. Divide evenly among the ramekins.
6. Bake in Water Bath: Place the baking dish in the oven. Pour boiling water into the dish to come halfway up the sides of the ramekins. Bake for 35–45 minutes until set but still jiggly in the center.
7. Chill: Remove from water bath, cool to room temp, then cover and refrigerate for at least 2 hours (ideally overnight).
8. Caramelize Sugar: Just before serving, blot condensation from tops. Sprinkle 1 tbsp sugar on each.
   - Using a Torch: Melt moving flame continuously until deep golden-brown.
   - Using a Broiler: Broil on high for 1–2 minutes, watching constantly.
9. Serve: Allow crust to harden for a few minutes before serving.
"""
        },
        {
          "name": "Crêpes",
          "desc": "Thin, delicate French pancakes.",
          "image": "assets/France/CrepesFR.png",
          "fullRecipe": """
Classic Crêpes Recipe
Yields: Approx. 12 crepes

Ingredients
- 1 cup all-purpose flour
- 2 large eggs
- 1 cup milk, preferably whole milk
- ½ cup water
- 3 tablespoons unsalted butter, melted (plus extra for pan)
- 1 tablespoon granulated sugar (optional)
- ¼ teaspoon salt
- 1 teaspoon vanilla extract (optional)

Instructions
1. Prepare the Batter: Blend or whisk flour, eggs, milk, water, melted butter, salt, (sugar, vanilla) until smooth and thin.
2. Rest the Batter: Cover and refrigerate for 30–60 minutes.
3. Heat the Pan: Heat an 8 or 10-inch nonstick skillet over medium heat.
4. Grease the Pan: Lightly brush with butter.
5. Cook the Crêpes: Pour ¼ cup batter, swirl to coat bottom thinly.
6. Flip and Finish: Cook 45-90 seconds until edges curl and top is dry. Flip and cook 15-30 seconds.
7. Stack and Repeat: Stack finished crêpes on a plate.

Serving Suggestions
Sweet: Lemon & Sugar, Nutella & Banana, Whipped Cream & Berries.
Savory: Ham and Gruyère, Spinach and Goat Cheese.
"""
        },
        {
          "name": "Almond Financiers",
          "desc": "Small French almond cakes with brown butter.",
          "image": "assets/France/FInanciersAmFR.png",
          "fullRecipe": """
Classic Almond Financiers Recipe
Yields: Approx. 12 financiers

Ingredients
- 100 g egg whites (about 3–4 medium eggs)
- 60 g almond flour/meal
- 40 g all-purpose flour
- 130 g powdered sugar (icing sugar)
- 100 g unsalted butter
- 1 pinch of salt
- Optional: 1 tsp vanilla or bitter almond extract
- Optional: sliced almonds for topping

Instructions
1. Make the Brown Butter (Beurre Noisette): Melt butter in saucepan over medium heat. Cook until milk solids turn brown and it smells nutty (5-8 mins). Remove from heat and cool.
2. Mix Dry Ingredients: Sift powdered sugar, almond flour, flour, and salt together. Whisk.
3. Incorporate Egg Whites: Add lightly beaten egg whites to dry mix. Mix until smooth.
4. Add Cooled Butter: Stir in lukewarm brown butter and vanilla. Mix until absorbed.
5. Rest: Refrigerate batter for 30-60 minutes.
6. Preheat Oven: 180°C (350°F). Grease molds if needed.
7. Fill and Bake: Fill molds ¾ full. Top with sliced almonds. Bake 15–20 minutes until golden.
8. Unmold and Cool: Cool in molds for 5-10 mins, then transfer to wire rack.
"""
        },
      ];
    }
    return [];
  }
}
