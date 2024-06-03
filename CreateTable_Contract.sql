-- Table: public.Contract

-- DROP TABLE IF EXISTS public."Contract";

CREATE TABLE IF NOT EXISTS public."Contract"
(
    id integer NOT NULL,
    contract_nb character varying COLLATE pg_catalog."default",
    contract_owner character varying COLLATE pg_catalog."default",
    erp_vendor_id character varying COLLATE pg_catalog."default",
    erp_vendor_nm character varying COLLATE pg_catalog."default",
    effective_date timestamp with time zone,
    expiration_date timestamp with time zone,
    contract_status_id integer,
    hierarchy_type character varying COLLATE pg_catalog."default",
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "Contract_pkey" PRIMARY KEY (id),
    CONSTRAINT "Contract_contract_nb_key" UNIQUE (contract_nb),
    CONSTRAINT contract_status_id_fk FOREIGN KEY (contract_status_id)
        REFERENCES public."Contract_Status" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Contract"
    OWNER to postgres;