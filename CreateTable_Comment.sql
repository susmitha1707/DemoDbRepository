-- Table: public.Comment

-- DROP TABLE IF EXISTS public."Comment";

CREATE TABLE IF NOT EXISTS public."Comment"
(
    id integer NOT NULL,
    tag_id integer,
    body text COLLATE pg_catalog."default",
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "Comment_pkey" PRIMARY KEY (id),
    CONSTRAINT tag_id_fk FOREIGN KEY (tag_id)
        REFERENCES public."Tag" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Comment"
    OWNER to postgres;