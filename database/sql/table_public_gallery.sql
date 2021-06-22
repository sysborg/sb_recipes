CREATE TABLE public.gallery(
	id_gallery BIGSERIAL NOT NULL CONSTRAINT public_gallery_pkey PRIMARY KEY,
	gallery_date TIMESTAMPTZ NOT NULL DEFAULT NOW()
) WITH(
oids=false
);
