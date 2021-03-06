PGDMP         	                v            semana14    10.4    10.4 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16384    semana14    DATABASE     �   CREATE DATABASE semana14 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE semana14;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12278    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16385    clientes    TABLE     �   CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombres character varying(75),
    apellidos character varying(75),
    genero integer
);
    DROP TABLE public.clientes;
       public         postgres    false    3            �            1259    16388    clientes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public       postgres    false    196    3            �           0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
            public       postgres    false    197            �            1259    16390    cuentas    TABLE     �   CREATE TABLE public.cuentas (
    id integer NOT NULL,
    numero character varying(20),
    saldo numeric(20,2),
    cliente_id integer
);
    DROP TABLE public.cuentas;
       public         postgres    false    3            �            1259    16393    cuentas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cuentas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cuentas_id_seq;
       public       postgres    false    198    3            �           0    0    cuentas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cuentas_id_seq OWNED BY public.cuentas.id;
            public       postgres    false    199            �            1259    16395    movimientos    TABLE     �   CREATE TABLE public.movimientos (
    id integer NOT NULL,
    tipo integer,
    cantidad numeric(20,2),
    cuenta_id integer,
    sede_id integer
);
    DROP TABLE public.movimientos;
       public         postgres    false    3            �            1259    16398    movimientos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movimientos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.movimientos_id_seq;
       public       postgres    false    200    3            �           0    0    movimientos_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.movimientos_id_seq OWNED BY public.movimientos.id;
            public       postgres    false    201            �            1259    16400    sedes    TABLE     U   CREATE TABLE public.sedes (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.sedes;
       public         postgres    false    3            �            1259    16406    sedes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sedes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sedes_id_seq;
       public       postgres    false    3    202            �           0    0    sedes_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sedes_id_seq OWNED BY public.sedes.id;
            public       postgres    false    203            �           2604    16408    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            �           2604    16409 
   cuentas id    DEFAULT     h   ALTER TABLE ONLY public.cuentas ALTER COLUMN id SET DEFAULT nextval('public.cuentas_id_seq'::regclass);
 9   ALTER TABLE public.cuentas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �           2604    16410    movimientos id    DEFAULT     p   ALTER TABLE ONLY public.movimientos ALTER COLUMN id SET DEFAULT nextval('public.movimientos_id_seq'::regclass);
 =   ALTER TABLE public.movimientos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            �           2604    16411    sedes id    DEFAULT     d   ALTER TABLE ONLY public.sedes ALTER COLUMN id SET DEFAULT nextval('public.sedes_id_seq'::regclass);
 7   ALTER TABLE public.sedes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            �          0    16385    clientes 
   TABLE DATA               B   COPY public.clientes (id, nombres, apellidos, genero) FROM stdin;
    public       postgres    false    196   �&       �          0    16390    cuentas 
   TABLE DATA               @   COPY public.cuentas (id, numero, saldo, cliente_id) FROM stdin;
    public       postgres    false    198   �&       �          0    16395    movimientos 
   TABLE DATA               M   COPY public.movimientos (id, tipo, cantidad, cuenta_id, sede_id) FROM stdin;
    public       postgres    false    200   1'       �          0    16400    sedes 
   TABLE DATA               +   COPY public.sedes (id, nombre) FROM stdin;
    public       postgres    false    202   c'       �           0    0    clientes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clientes_id_seq', 2, true);
            public       postgres    false    197            �           0    0    cuentas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cuentas_id_seq', 2, true);
            public       postgres    false    199            �           0    0    movimientos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.movimientos_id_seq', 7, true);
            public       postgres    false    201            �           0    0    sedes_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sedes_id_seq', 4, true);
            public       postgres    false    203                        2606    16413    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public         postgres    false    196                       2606    16415    cuentas cuentas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cuentas
    ADD CONSTRAINT cuentas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cuentas DROP CONSTRAINT cuentas_pkey;
       public         postgres    false    198                       2606    16417    movimientos movimientos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.movimientos
    ADD CONSTRAINT movimientos_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.movimientos DROP CONSTRAINT movimientos_pkey;
       public         postgres    false    200                       2606    16419    sedes sedes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sedes
    ADD CONSTRAINT sedes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sedes DROP CONSTRAINT sedes_pkey;
       public         postgres    false    202                       2606    16420    cuentas fk_cliente    FK CONSTRAINT     w   ALTER TABLE ONLY public.cuentas
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES public.clientes(id);
 <   ALTER TABLE ONLY public.cuentas DROP CONSTRAINT fk_cliente;
       public       postgres    false    198    196    2048                       2606    16425    movimientos fk_cuenta    FK CONSTRAINT     x   ALTER TABLE ONLY public.movimientos
    ADD CONSTRAINT fk_cuenta FOREIGN KEY (cuenta_id) REFERENCES public.cuentas(id);
 ?   ALTER TABLE ONLY public.movimientos DROP CONSTRAINT fk_cuenta;
       public       postgres    false    198    200    2050            	           2606    16430    movimientos fk_sede    FK CONSTRAINT     r   ALTER TABLE ONLY public.movimientos
    ADD CONSTRAINT fk_sede FOREIGN KEY (sede_id) REFERENCES public.sedes(id);
 =   ALTER TABLE ONLY public.movimientos DROP CONSTRAINT fk_sede;
       public       postgres    false    2054    200    202            �   (   x�3��*M��H-J��4�2s���ʢDN�=... �J
�      �   9   x����0�7ޅ�vJTv��s徧P�4O��$�+��0<sR��)9�n
��C�
2      �   "   x�3�4�450�30�4�4�2s!<C�=... U��      �   8   x�3����+I-*�L��2�N�S�,�L)��2s|3�KSs�L8�2sr�b���� ��*     