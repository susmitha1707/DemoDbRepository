-- Table: public.Consent_Category

-- DROP TABLE IF EXISTS public."Consent_Category";

CREATE TABLE IF NOT EXISTS public."Consent_Category"
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default",
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "Consent_Category_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Consent_Category"
    OWNER to postgres;