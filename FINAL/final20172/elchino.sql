PGDMP         	                v            finalOS    10.4    10.4 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393    finalOS    DATABASE     �   CREATE DATABASE "finalOS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE "finalOS";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16455    empresa    TABLE     �   CREATE TABLE public.empresa (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    rubro_id integer NOT NULL,
    direccion character varying(100),
    tipo_empresa character varying(50) NOT NULL
);
    DROP TABLE public.empresa;
       public         postgres    false    3            �            1259    16453    empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.empresa_id_seq;
       public       postgres    false    201    3                       0    0    empresa_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.empresa_id_seq OWNED BY public.empresa.id;
            public       postgres    false    200            �            1259    16461    empresa_software    TABLE     Z   CREATE TABLE public.empresa_software (
    empresa_id integer,
    software_id integer
);
 $   DROP TABLE public.empresa_software;
       public         postgres    false    3            �            1259    16439    rubro    TABLE     b   CREATE TABLE public.rubro (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.rubro;
       public         postgres    false    3            �            1259    16437    rubro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rubro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rubro_id_seq;
       public       postgres    false    3    197                       0    0    rubro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rubro_id_seq OWNED BY public.rubro.id;
            public       postgres    false    196            �            1259    16447    software    TABLE     e   CREATE TABLE public.software (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.software;
       public         postgres    false    3            �            1259    16445    software_id_seq    SEQUENCE     �   CREATE SEQUENCE public.software_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.software_id_seq;
       public       postgres    false    199    3                       0    0    software_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.software_id_seq OWNED BY public.software.id;
            public       postgres    false    198            �
           2604    16458 
   empresa id    DEFAULT     h   ALTER TABLE ONLY public.empresa ALTER COLUMN id SET DEFAULT nextval('public.empresa_id_seq'::regclass);
 9   ALTER TABLE public.empresa ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            ~
           2604    16442    rubro id    DEFAULT     d   ALTER TABLE ONLY public.rubro ALTER COLUMN id SET DEFAULT nextval('public.rubro_id_seq'::regclass);
 7   ALTER TABLE public.rubro ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            
           2604    16450    software id    DEFAULT     j   ALTER TABLE ONLY public.software ALTER COLUMN id SET DEFAULT nextval('public.software_id_seq'::regclass);
 :   ALTER TABLE public.software ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199                      0    16455    empresa 
   TABLE DATA               P   COPY public.empresa (id, nombre, rubro_id, direccion, tipo_empresa) FROM stdin;
    public       postgres    false    201   k!       	          0    16461    empresa_software 
   TABLE DATA               C   COPY public.empresa_software (empresa_id, software_id) FROM stdin;
    public       postgres    false    202   �!                 0    16439    rubro 
   TABLE DATA               +   COPY public.rubro (id, nombre) FROM stdin;
    public       postgres    false    197   �!                 0    16447    software 
   TABLE DATA               .   COPY public.software (id, nombre) FROM stdin;
    public       postgres    false    199   )"                  0    0    empresa_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.empresa_id_seq', 1, false);
            public       postgres    false    200                       0    0    rubro_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rubro_id_seq', 1, false);
            public       postgres    false    196                       0    0    software_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.software_id_seq', 1, false);
            public       postgres    false    198            �
           2606    16460    empresa empresa_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.empresa DROP CONSTRAINT empresa_pkey;
       public         postgres    false    201            �
           2606    16444    rubro rubro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rubro
    ADD CONSTRAINT rubro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rubro DROP CONSTRAINT rubro_pkey;
       public         postgres    false    197            �
           2606    16452    software software_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.software
    ADD CONSTRAINT software_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.software DROP CONSTRAINT software_pkey;
       public         postgres    false    199            �
           2606    16464    empresa_software fk_empresa    FK CONSTRAINT        ALTER TABLE ONLY public.empresa_software
    ADD CONSTRAINT fk_empresa FOREIGN KEY (empresa_id) REFERENCES public.empresa(id);
 E   ALTER TABLE ONLY public.empresa_software DROP CONSTRAINT fk_empresa;
       public       postgres    false    2694    201    202            �
           2606    16474    empresa fk_rubro    FK CONSTRAINT     p   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT fk_rubro FOREIGN KEY (rubro_id) REFERENCES public.rubro(id);
 :   ALTER TABLE ONLY public.empresa DROP CONSTRAINT fk_rubro;
       public       postgres    false    201    2690    197            �
           2606    16469    empresa_software fk_software    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_software
    ADD CONSTRAINT fk_software FOREIGN KEY (software_id) REFERENCES public.software(id);
 F   ALTER TABLE ONLY public.empresa_software DROP CONSTRAINT fk_software;
       public       postgres    false    2692    202    199               P   x�3��,.M�Q.)M���4�)U�J,ɏ��(�,KLI�2���+I����R�tqu�4�����(M��LN����� �#�      	      x������ � �         1   x�3�tM)MNL����2�IM����O�L�2�t�M�L�+I����� -            x������ � �     