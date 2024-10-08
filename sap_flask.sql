PGDMP      $                |            sap_flask_db    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16588    sap_flask_db    DATABASE     �   CREATE DATABASE sap_flask_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE sap_flask_db;
                postgres    false            �            1259    16589    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    postgres    false            �            1259    16595    persona    TABLE     �   CREATE TABLE public.persona (
    id integer NOT NULL,
    nombre character varying(250),
    apellido character varying(250),
    email character varying(250)
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    16594    persona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persona_id_seq;
       public          postgres    false    217            �           0    0    persona_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;
          public          postgres    false    216                       2604    16598 
   persona id    DEFAULT     h   ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);
 9   ALTER TABLE public.persona ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �          0    16589    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          postgres    false    215   �       �          0    16595    persona 
   TABLE DATA           >   COPY public.persona (id, nombre, apellido, email) FROM stdin;
    public          postgres    false    217          �           0    0    persona_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.persona_id_seq', 3, true);
          public          postgres    false    216                        2606    16593 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            postgres    false    215            "           2606    16602    persona persona_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    217            �      x��L1L101�02�4������ '��      �   T   x�3�tL/-.9�6�3(1/5��(1�������!=713G/9?�ˈ�73�45�$3/=5/3�(?�ա21#?�L/��+F��� ��     