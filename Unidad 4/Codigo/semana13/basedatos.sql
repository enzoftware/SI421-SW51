PGDMP         4    	            v         
   practica02    10.3    10.3 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393 
   practica02    DATABASE     �   CREATE DATABASE practica02 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE practica02;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16396    alumnos    TABLE     �   CREATE TABLE public.alumnos (
    id integer NOT NULL,
    nombres character varying(75),
    apellidos character varying(75),
    genero character(1),
    codigo character varying(10)
);
    DROP TABLE public.alumnos;
       public         postgres    false    3            �            1259    16394    alumnos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alumnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.alumnos_id_seq;
       public       postgres    false    3    197                       0    0    alumnos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.alumnos_id_seq OWNED BY public.alumnos.id;
            public       postgres    false    196            �            1259    16420    curso_alumno    TABLE     �   CREATE TABLE public.curso_alumno (
    id integer NOT NULL,
    alumno_id integer,
    curso_id integer,
    sede_id integer,
    nota integer,
    tipoprueba character varying(50)
);
     DROP TABLE public.curso_alumno;
       public         postgres    false    3            �            1259    16418    curso_alumno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.curso_alumno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.curso_alumno_id_seq;
       public       postgres    false    203    3                       0    0    curso_alumno_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.curso_alumno_id_seq OWNED BY public.curso_alumno.id;
            public       postgres    false    202            �            1259    16412    cursos    TABLE     {   CREATE TABLE public.cursos (
    id integer NOT NULL,
    nombre character varying(75),
    codigo character varying(5)
);
    DROP TABLE public.cursos;
       public         postgres    false    3            �            1259    16410    cursos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cursos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cursos_id_seq;
       public       postgres    false    3    201                       0    0    cursos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cursos_id_seq OWNED BY public.cursos.id;
            public       postgres    false    200            �            1259    16404    sedes    TABLE     Y   CREATE TABLE public.sedes (
    id integer NOT NULL,
    nombre character varying(75)
);
    DROP TABLE public.sedes;
       public         postgres    false    3            �            1259    16402    sedes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sedes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sedes_id_seq;
       public       postgres    false    3    199                       0    0    sedes_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sedes_id_seq OWNED BY public.sedes.id;
            public       postgres    false    198            �
           2604    16399 
   alumnos id    DEFAULT     h   ALTER TABLE ONLY public.alumnos ALTER COLUMN id SET DEFAULT nextval('public.alumnos_id_seq'::regclass);
 9   ALTER TABLE public.alumnos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    16423    curso_alumno id    DEFAULT     r   ALTER TABLE ONLY public.curso_alumno ALTER COLUMN id SET DEFAULT nextval('public.curso_alumno_id_seq'::regclass);
 >   ALTER TABLE public.curso_alumno ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    16415 	   cursos id    DEFAULT     f   ALTER TABLE ONLY public.cursos ALTER COLUMN id SET DEFAULT nextval('public.cursos_id_seq'::regclass);
 8   ALTER TABLE public.cursos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    16407    sedes id    DEFAULT     d   ALTER TABLE ONLY public.sedes ALTER COLUMN id SET DEFAULT nextval('public.sedes_id_seq'::regclass);
 7   ALTER TABLE public.sedes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            	          0    16396    alumnos 
   TABLE DATA               I   COPY public.alumnos (id, nombres, apellidos, genero, codigo) FROM stdin;
    public       postgres    false    197   '                 0    16420    curso_alumno 
   TABLE DATA               Z   COPY public.curso_alumno (id, alumno_id, curso_id, sede_id, nota, tipoprueba) FROM stdin;
    public       postgres    false    203   ['                 0    16412    cursos 
   TABLE DATA               4   COPY public.cursos (id, nombre, codigo) FROM stdin;
    public       postgres    false    201   �'                 0    16404    sedes 
   TABLE DATA               +   COPY public.sedes (id, nombre) FROM stdin;
    public       postgres    false    199   �'                  0    0    alumnos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.alumnos_id_seq', 2, true);
            public       postgres    false    196                       0    0    curso_alumno_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.curso_alumno_id_seq', 2, true);
            public       postgres    false    202                       0    0    cursos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cursos_id_seq', 4, true);
            public       postgres    false    200                       0    0    sedes_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sedes_id_seq', 4, true);
            public       postgres    false    198            �
           2606    16401    alumnos alumnos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public         postgres    false    197            �
           2606    16425    curso_alumno curso_alumno_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.curso_alumno
    ADD CONSTRAINT curso_alumno_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.curso_alumno DROP CONSTRAINT curso_alumno_pkey;
       public         postgres    false    203            �
           2606    16417    cursos cursos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public         postgres    false    201            �
           2606    16409    sedes sedes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sedes
    ADD CONSTRAINT sedes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sedes DROP CONSTRAINT sedes_pkey;
       public         postgres    false    199            �
           2606    16426    curso_alumno fk_alumno    FK CONSTRAINT     y   ALTER TABLE ONLY public.curso_alumno
    ADD CONSTRAINT fk_alumno FOREIGN KEY (alumno_id) REFERENCES public.alumnos(id);
 @   ALTER TABLE ONLY public.curso_alumno DROP CONSTRAINT fk_alumno;
       public       postgres    false    203    197    2693            �
           2606    16431    curso_alumno fk_curso    FK CONSTRAINT     v   ALTER TABLE ONLY public.curso_alumno
    ADD CONSTRAINT fk_curso FOREIGN KEY (curso_id) REFERENCES public.cursos(id);
 ?   ALTER TABLE ONLY public.curso_alumno DROP CONSTRAINT fk_curso;
       public       postgres    false    203    201    2697            �
           2606    16436    curso_alumno fk_sede    FK CONSTRAINT     s   ALTER TABLE ONLY public.curso_alumno
    ADD CONSTRAINT fk_sede FOREIGN KEY (sede_id) REFERENCES public.sedes(id);
 >   ALTER TABLE ONLY public.curso_alumno DROP CONSTRAINT fk_sede;
       public       postgres    false    2695    203    199            	   =   x�3��*M��H-J��4�4426153��4�2�$��*�98,-��LM���b���� ��>         *   x�3�4�4�4�42�(JL.�LNT00�2
�!�p� �
�         Q   x�3�t��75�2��QN-*K-�Xrs:�d&'&g��+��&�Tp�p�&e��d�s�z�r��qqq �x         9   x�3����+I-*�L��2�N�S�,�L)��2����I�2�f����p��qqq ��*     