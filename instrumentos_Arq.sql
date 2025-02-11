PGDMP                  	    |            postgres    16.4    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                usr_trabajo    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   usr_trabajo    false    4892                        2615    33173    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                usr_trabajo    false                       0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   usr_trabajo    false    6            �            1255    33194     descript_instrumento_fn(integer)    FUNCTION     �   CREATE FUNCTION public.descript_instrumento_fn(codigo_instru integer) RETURNS character
    LANGUAGE plpgsql
    AS $$declare 
des character(100);
begin
select nombre into des
from instrumentos 
where codigo=codigo_instru;

return des;
end;$$;
 E   DROP FUNCTION public.descript_instrumento_fn(codigo_instru integer);
       public          postgres    false    6            �            1259    33179    curso    TABLE     r   CREATE TABLE public.curso (
    id numeric NOT NULL,
    descripcion character(50),
    id_instrumento integer
);
    DROP TABLE public.curso;
       public         heap    postgres    false    6            �            1259    33174    instrumentos    TABLE     \   CREATE TABLE public.instrumentos (
    codigo integer NOT NULL,
    nombre character(40)
);
     DROP TABLE public.instrumentos;
       public         heap    postgres    false    6            �            1259    33200 	   matricula    TABLE     �   CREATE TABLE public.matricula (
    consecutivo integer NOT NULL,
    fecha_inicia date,
    fecha_fin date,
    cedula_persona integer,
    id_curso integer
);
    DROP TABLE public.matricula;
       public         heap    postgres    false    6            �            1259    33195    persona    TABLE     �   CREATE TABLE public.persona (
    cedula integer NOT NULL,
    apenom character(60),
    genero character(1),
    fecha_nto date
);
    DROP TABLE public.persona;
       public         heap    postgres    false    6                      0    33179    curso 
   TABLE DATA           @   COPY public.curso (id, descripcion, id_instrumento) FROM stdin;
    public          postgres    false    220   �                 0    33174    instrumentos 
   TABLE DATA           6   COPY public.instrumentos (codigo, nombre) FROM stdin;
    public          postgres    false    219   "                 0    33200 	   matricula 
   TABLE DATA           c   COPY public.matricula (consecutivo, fecha_inicia, fecha_fin, cedula_persona, id_curso) FROM stdin;
    public          postgres    false    222   q                 0    33195    persona 
   TABLE DATA           D   COPY public.persona (cedula, apenom, genero, fecha_nto) FROM stdin;
    public          postgres    false    221   �       {           2606    33185    curso curso_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.curso DROP CONSTRAINT curso_pkey;
       public            postgres    false    220            y           2606    33178    instrumentos instrumentos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.instrumentos
    ADD CONSTRAINT instrumentos_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.instrumentos DROP CONSTRAINT instrumentos_pkey;
       public            postgres    false    219                       2606    33204    matricula matyricula_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matyricula_pkey PRIMARY KEY (consecutivo);
 C   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matyricula_pkey;
       public            postgres    false    222            }           2606    33199    persona persona_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (cedula);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    221            �           2606    33205    matricula curso_matricula_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT curso_matricula_fk FOREIGN KEY (id_curso) REFERENCES public.curso(id);
 F   ALTER TABLE ONLY public.matricula DROP CONSTRAINT curso_matricula_fk;
       public          postgres    false    220    4731    222            �           2606    33186    curso instrumento_curso_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT instrumento_curso_fk FOREIGN KEY (id_instrumento) REFERENCES public.instrumentos(codigo);
 D   ALTER TABLE ONLY public.curso DROP CONSTRAINT instrumento_curso_fk;
       public          postgres    false    219    4729    220            �           2606    33210    matricula perso_matricula_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT perso_matricula_fk FOREIGN KEY (cedula_persona) REFERENCES public.persona(cedula);
 F   ALTER TABLE ONLY public.matricula DROP CONSTRAINT perso_matricula_fk;
       public          postgres    false    221    4733    222               �   x�340�t.-*�WHIUp/�,I,*JTp:��839_'�4�240B��L��Wp,K̫JL��O������)�$����D�< #75%�nNc�N�ΰ����k�
�(��K�, ��$�C�	W� ��:�         ?   x�3�t/�,I,*JT  ��82��	�)5�tJ,I-:����
\&�a��9���an� TZ�         U   x�]��	�0D�u^/ʛO����0A�����Ioyn�'���\[?
��Py�V-��K��@J�@
/�������������+         �   x��α�0@��n
/p�wg'v��@BDb �!�h؈"#x1$��Ǣ�w}��3es��ry��� �%�=���N�aH�N����
�6�l dQu6�\o�٥r�͗@�XH-:�*��L�>��C��؜Jl�B�/�I?#     