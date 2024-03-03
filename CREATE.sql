-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION pg_database_owner;
-- public.albums определение

-- Drop table

-- DROP TABLE public.albums;

CREATE TABLE public.albums (
	album_id int4 NOT NULL,
	album_name varchar(80) NULL,
	album_duration time NULL,
        album_year int4 NULL,
	CONSTRAINT albums_pkey PRIMARY KEY (album_id)
);


-- public.generes определение

-- Drop table

-- DROP TABLE public.generes;

CREATE TABLE public.generes (
	generes_id int4 NOT NULL,
	generes_name varchar(80) NOT NULL,
	CONSTRAINT generes_generes_name_key UNIQUE (generes_name),
	CONSTRAINT generes_pkey PRIMARY KEY (generes_id)
);


-- public.mix_tape определение

-- Drop table

-- DROP TABLE public.mix_tape;

CREATE TABLE public.mix_tape (
	mix_tape_id int4 NOT NULL,
	mix_tape_name varchar(80) NULL,
	mix_tape_year int4 NULL,
	CONSTRAINT mix_tape_pkey PRIMARY KEY (mix_tape_id)
);


-- public.singers_name определение

-- Drop table

-- DROP TABLE public.singers_name;

CREATE TABLE public.singers_name (
	singers_id int4 NOT NULL,
	singers_name varchar(80) NOT NULL,
	CONSTRAINT singers_name_pkey PRIMARY KEY (singers_id),
	CONSTRAINT singers_name_singers_name_key UNIQUE (singers_name)
);


-- public.albums_singers определение

-- Drop table

-- DROP TABLE public.albums_singers;

CREATE TABLE public.albums_singers (
	al_id int4 NOT NULL,
	sig_id int4 NOT NULL,
	CONSTRAINT gk PRIMARY KEY (al_id, sig_id),
	CONSTRAINT albums_singers_al_id_fkey FOREIGN KEY (al_id) REFERENCES public.albums(album_id),
	CONSTRAINT albums_singers_sig_id_fkey FOREIGN KEY (sig_id) REFERENCES public.singers_name(singers_id)
);


-- public.singers_generes определение

-- Drop table

-- DROP TABLE public.singers_generes;

CREATE TABLE public.singers_generes (
	sin_id int4 NOT NULL,
	gen_id int4 NOT NULL,
	CONSTRAINT pk PRIMARY KEY (sin_id, gen_id),
	CONSTRAINT singers_generes_gen_id_fkey FOREIGN KEY (gen_id) REFERENCES public.generes(generes_id),
	CONSTRAINT singers_generes_sin_id_fkey FOREIGN KEY (sin_id) REFERENCES public.singers_name(singers_id)
);


-- public.songs_albums определение

-- Drop table

-- DROP TABLE public.songs_albums;

CREATE TABLE public.songs_albums (
	songs_id int4 NOT NULL,
	als_id int4 NULL,
	song_name varchar(80) NULL,
	song_duration time NULL,
	CONSTRAINT songs_albums_pkey PRIMARY KEY (songs_id),
	CONSTRAINT songs_albums_als_id_fkey FOREIGN KEY (als_id) REFERENCES public.albums(album_id)
);


-- public.mix_tape_songs определение

-- Drop table

-- DROP TABLE public.mix_tape_songs;

CREATE TABLE public.mix_tape_songs (
	mt_id int4 NOT NULL,
	s_id int4 NOT NULL,
	CONSTRAINT sk PRIMARY KEY (mt_id, s_id),
	CONSTRAINT mix_tape_songs_mt_id_fkey FOREIGN KEY (mt_id) REFERENCES public.mix_tape(mix_tape_id),
	CONSTRAINT mix_tape_songs_s_id_fkey FOREIGN KEY (s_id) REFERENCES public.songs_albums(songs_id)
);


