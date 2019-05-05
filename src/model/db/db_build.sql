

BEGIN;

DROP TABLE IF EXISTS users, vote, recipe;

CREATE TABLE users (
    id SERIAL,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(200) PRIMARY KEY,
    passwd VARCHAR(100) NOT NULL,
    logged_in BOOLEAN DEFAULT false
);

CREATE TABLE recipe (
    id SERIAL UNIQUE,
    recipe_name TEXT PRIMARY KEY,
    recipe_method TEXT
);

CREATE TABLE vote (
    user_email VARCHAR(200) REFERENCES users (email),
    recipe_vote TEXT REFERENCES recipe (recipe_name)
);





-- into the users table
insert into users (id, username, email, passwd, logged_in) values (1, 'thetest', 'test0@test.com', 'test', false);
insert into users (id, username, email, passwd, logged_in) values (2, 'thetest2', 'test2@test.com', 'test', false);
insert into users (id, username, email, passwd, logged_in) values (3, 'kedon2', 'sjoyson2@netscape.com', 'ssW7e8tNS', false);
insert into users (id, username, email, passwd, logged_in) values (4, 'cboniface3', 'bsiderfin3@ovh.net', '4iUwreW1dn', false);
insert into users (id, username, email, passwd, logged_in) values (5, 'apedrol4', 'klynds4@typepad.com', 'H7HE7TTAf', false);


insert into recipe (id, recipe_name, recipe_method) values (1, 'chocolate and strawberry cupcakes', 
'ingredients
For the Cupcakes:
200g butter
200g plain chocolate (under 70% cocoa solids)
175g light brown sugar
2 eggs
1 teaspoon vanilla extract
250g self-raising flour
For the Frosting:
110g cup butter softened
110g cream cheese softened
35g freeze dried strawberries
300g icing sugar
1 teaspoon vanilla
1-3 teaspoons milk

Instructions
For the Cupcakes:
Heat oven to 160/140fan/gas3. Line a 12-hole muffin tin with cases.
Gently melt butter, chocolate, sugar and 100ml of water together in a large saucepan, stirring occasionally.
Then set aside to cool while you weight the other ingredients.
Stir the eggs and vanilla into the chocolate mixture.
Put the flour into a large mixing bowl and then stir in chocolate mixture until it is smooth.
Spoon into cases until just over three-quarters full, then set aside for 5 minutes.
After which, put on a low shelf in the oven and bake for 20-22 minutes.
For the Frosting:
Place freeze dried berries in the blender and puree until a fine powder. 
Blend together butter, cream cheese, and strawberry powder  until smooth. 
Mix in the powdered sugar a little at a time. 
Add vanilla and then the milk 1 teaspoon at a time until desired thickness.
To Assemble:
Once the cupcakes have cooled, pipe on the frosting.
Serve within 2 hours or store in the fridge. Allow to come to room temperate for serving.');

insert into recipe (id, recipe_name, recipe_method) values (2, 'vanilla cupcakes', 
'For the cupcakes:
110g softened butter
100g golden caster sugar
2 large eggs
1 tsp vanilla extract
110g self-raising flour

For the buttercream:
150g softened butter
275g icing sugar
1 tsp vanilla extract
3 tbsp milk
pink food colour (or a colour of your choice)

Heat oven to 180C/160C fan/gas 4 and fill a 12 cupcake tray with cases.

Using an electric whisk beat 110g softened butter and 100g golden caster sugar together until pale and fluffy then whisk in 2 large eggs, one at a time, scraping down the sides of the bowl after each addition.

Add 1 tsp vanilla extract, 110g self-raising flour and a pinch of salt, whisk until just combined then spoon the mixture into the cupcake cases.

Bake for 15 mins until golden brown and a skewer inserted into the middle of each cake comes out clean. Leave to cool completely on a wire rack.

To make the buttercream, whisk 150g softened butter until super soft then add 275g icing sugar, 1 tsp vanilla extract and a pinch of salt.

Whisk together until smooth (start off slowly to avoid an icing sugar cloud) then beat in 3 tbsp milk.

If wanting to colour, stir in the food colouring now. Spoon or pipe onto the cooled cupcakes.'
);

-- into the vote table
insert into vote (user_email, recipe_vote) values ('test0@test.com', 'chocolate and strawberry cupcakes');
insert into vote (user_email, recipe_vote) values ('test2@test.com', 'chocolate and strawberry cupcakes');


COMMIT;
