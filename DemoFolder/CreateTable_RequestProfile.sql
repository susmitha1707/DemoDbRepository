-- Table: public.Request_Profile

-- DROP TABLE IF EXISTS public."Request_Profile";

CREATE TABLE IF NOT EXISTS public."Request_Profile"
(
    id integer NOT NULL,
    request_type integer,
    workfront_request_nb character varying COLLATE pg_catalog."default",
    planview_request_nb character varying COLLATE pg_catalog."default",
    status_id integer,
    requestor_description character varying COLLATE pg_catalog."default",
    requestor_id character varying COLLATE pg_catalog."default",
    requestor_organization character varying COLLATE pg_catalog."default",
    tag_owner character varying COLLATE pg_catalog."default",
    tag_owners_manager character varying COLLATE pg_catalog."default",
    requested_tags character varying COLLATE pg_catalog."default",
    requested_new_tag_name character varying COLLATE pg_catalog."default",
    requested_destinations character varying COLLATE pg_catalog."default",
    requested_domain character varying COLLATE pg_catalog."default",
    requested_new_domain character varying COLLATE pg_catalog."default",
    site_id integer,
    contract_nb character varying COLLATE pg_catalog."default",
    contract_id integer,
    contract_owner character varying COLLATE pg_catalog."default",
    contract_effective_date timestamp with time zone,
    contract_termination_date timestamp with time zone,
    consent_category character varying COLLATE pg_catalog."default",
    consent_category_id integer,
    data_classification character varying COLLATE pg_catalog."default",
    data_classification_id integer,
    campaign_end timestamp with time zone,
    channel character varying COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    submitted_at timestamp with time zone,
    closed_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "Request_Profile_pkey" PRIMARY KEY (id),
    CONSTRAINT "Request_Profile_request_type_fkey" FOREIGN KEY (request_type)
        REFERENCES public."Request_Type" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT contract_id_fk FOREIGN KEY (contract_id)
        REFERENCES public."Contract" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT contract_nb_fk FOREIGN KEY (contract_nb)
        REFERENCES public."Contract" (contract_nb) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT site_id_fk FOREIGN KEY (site_id)
        REFERENCES public."Site" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Request_Profile"
    OWNER to postgres;