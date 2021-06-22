CREATE TABLE public.history(
	id_history BIGSERIAL NOT NULL CONSTRAINT public_history_pkey PRIMARY KEY,
	id_user BIGINT NOT NULL CONSTRAINT public_history_user_fkey REFERENCES public.user(id_user) MATCH SIMPLE ON UPDATE CASCADE ON DELETE RESTRICT,
	history CHARACTER VARYING(40) NOT NULL,
	date_time TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	ip CIDR NOT NULL,
	tab_name NAME NOT NULL,
	json_data JSONB NOT NULL
) with(
oids=false
);
