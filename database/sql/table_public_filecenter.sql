CREATE TABLE public.filecenter(
	id_filecenter BIGSERIAL NOT NULL CONSTRAINT public_filecenter_pkey PRIMARY KEY,
	id_gallery BIGINT NOT NULL CONSTRAINT public_filecenter_gallery_fkey REFERENCES public.gallery(id_gallery) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	filename CHARACTER VARYING(30) NOT NULL,
	filesize NUMERIC
) with(
oids=false
);
