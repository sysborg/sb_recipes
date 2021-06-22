CREATE TABLE public.recipe_ingredients(
	id_recipe_ingredients BIGSERIAL NOT NULL CONSTRAINT public_recipe_ingredients_pkey PRIMARY KEY,
	id_recipe BIGINT NOT NULL CONSTRAINT public_recipe_fkey REFERENCES public.recipe(id_recipe) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	id_ingredient BIGINT NOT NULL CONSTRAINT public_ingredient_fkey REFERENCES public.ingredient(id_ingredient) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	id_measurement_unit BIGINT NOT NULL CONSTRAINT public_measurement_unit_fkey REFERENCES public.measurement_unit(id_measurement_unit) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	amount NUMERIC NOT NULL
) with(
oids=false
);
