CREATE TABLE public.ingredient(
	id_ingredient BIGSERIAL NOT NULL CONSTRAINT public_ingredient_pkey PRIMARY KEY,
	brand CHARACTER VARYING(30) NOT NULL,
	ingredient CHARACTER VARYING(30) NOT NULL
) with(
oids=false
);
