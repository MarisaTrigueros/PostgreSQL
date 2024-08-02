-- Table: public.books

-- DROP TABLE IF EXISTS public.books;

CREATE TABLE IF NOT EXISTS public.books
(
    book_id integer NOT NULL DEFAULT nextval('books_book_id_seq'::regclass),
    title character varying(50) COLLATE pg_catalog."default" NOT NULL,
    author character varying(50) COLLATE pg_catalog."default" NOT NULL,
    genre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    publihsed_year integer NOT NULL,
    isbn character varying(32) COLLATE pg_catalog."default" NOT NULL,
    price numeric(10,2) NOT NULL,
    rating numeric(3,1) NOT NULL,
    stock_count integer NOT NULL,
    publisher character varying(300) COLLATE pg_catalog."default" NOT NULL,
    pages integer NOT NULL,
    CONSTRAINT books_pkey PRIMARY KEY (book_id),
    CONSTRAINT books_rating_check CHECK (rating <= 100::numeric),
    CONSTRAINT books_stock_count_check CHECK (stock_count > 0)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.books
    OWNER to postgres;
