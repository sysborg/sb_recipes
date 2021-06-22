CREATE TABLE public.measurement_unit(
	id_measurement_unit BIGSERIAL NOT NULL CONSTRAINT public_measurement_unit_pkey PRIMARY KEY,
	measurement_unit CHARACTER VARYING(30) NOT NULL
) with(
oids=false
);
