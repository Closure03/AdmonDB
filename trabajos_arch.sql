PGDMP                  	    |            postgres    16.4    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                usr_trabajo    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   usr_trabajo    false    4881                        2615    33227    trabajo    SCHEMA        CREATE SCHEMA trabajo;
    DROP SCHEMA trabajo;
                usr_trabajo    false                       0    0    SCHEMA trabajo    ACL     �   REVOKE ALL ON SCHEMA trabajo FROM usr_trabajo;
GRANT USAGE ON SCHEMA trabajo TO usr_trabajo;
GRANT CREATE ON SCHEMA trabajo TO usr_trabajo WITH GRANT OPTION;
                   usr_trabajo    false    8            �            1259    33228    dpto    TABLE     W   CREATE TABLE trabajo.dpto (
    codigo integer NOT NULL,
    nombre character(1000)
);
    DROP TABLE trabajo.dpto;
       trabajo         heap    postgres    false    8            �            1259    33235    mpid    TABLE     r   CREATE TABLE trabajo.mpid (
    codigo_mc integer NOT NULL,
    nombre character(100),
    codigo_dpto integer
);
    DROP TABLE trabajo.mpid;
       trabajo         heap    postgres    false    8            
          0    33228    dpto 
   TABLE DATA           /   COPY trabajo.dpto (codigo, nombre) FROM stdin;
    trabajo          postgres    false    224   �                 0    33235    mpid 
   TABLE DATA           ?   COPY trabajo.mpid (codigo_mc, nombre, codigo_dpto) FROM stdin;
    trabajo          postgres    false    225   �       w           2606    33234    dpto dpto_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY trabajo.dpto
    ADD CONSTRAINT dpto_pkey PRIMARY KEY (codigo);
 9   ALTER TABLE ONLY trabajo.dpto DROP CONSTRAINT dpto_pkey;
       trabajo            postgres    false    224            y           2606    33239    mpid mpid_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY trabajo.mpid
    ADD CONSTRAINT mpid_pkey PRIMARY KEY (codigo_mc);
 9   ALTER TABLE ONLY trabajo.mpid DROP CONSTRAINT mpid_pkey;
       trabajo            postgres    false    225            
      x������ � �            x������ � �     