CREATE TABLE public.recipe(
	id_recipe BIGSERIAL NOT NULL CONSTRAINT public_recipe_pkey PRIMARY KEY,
	id_gallery BIGINT NOT NULL CONSTRAINT public_recipe_gallery_fkey REFERENCES gallery(id_gallery) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	preparation_mode TEXT NOT NULL,
	approved BOOLEAN NOT NULL DEFAULT FALSE
) with(
oids=false
);
