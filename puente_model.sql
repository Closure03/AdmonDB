PGDMP  +                	    |            postgres    16.4    16.4 	    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                usr_trabajo    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   usr_trabajo    false    4877                        2615    33219    puente    SCHEMA        CREATE SCHEMA puente;
    DROP SCHEMA puente;
                clase    false            �            1259    33220    alumnos    TABLE     u   CREATE TABLE puente.alumnos (
    cedula integer NOT NULL,
    apellidos character(30),
    nombres character(50)
);
    DROP TABLE puente.alumnos;
       puente         heap    clase    false    7                      0    33220    alumnos 
   TABLE DATA           =   COPY puente.alumnos (cedula, apellidos, nombres) FROM stdin;
    puente          clase    false    223   �       v           2606    33224    alumnos alumnos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY puente.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (cedula);
 >   ALTER TABLE ONLY puente.alumnos DROP CONSTRAINT alumnos_pkey;
       puente            clase    false    223                  x������ � �     