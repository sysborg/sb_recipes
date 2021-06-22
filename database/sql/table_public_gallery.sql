CREATE TABLE public.gallery(
	id_gallery BIGSERIAL NOT NULL CONSTRAINT public_gallery_pkey PRIMARY KEY,
	gallery_date TIMESTAMPTZ NOT NULL
) WITH(
oids=false
);
