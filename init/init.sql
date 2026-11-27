CREATE SCHEMA IF NOT EXISTS stg;

CREATE TABLE IF NOT EXISTS stg.arxiv_papers (
    arxiv_id         text PRIMARY KEY,
    version          integer NOT NULL CHECK (version > 0),
    title            text NOT NULL,
    abstract         text NOT NULL,
    authors          text[] NOT NULL,
    primary_category text NOT NULL,
    categories       text[] NOT NULL,
    published_at     timestamptz NOT NULL,
    updated_at       timestamptz NOT NULL,
    article_url      text NOT NULL
);
