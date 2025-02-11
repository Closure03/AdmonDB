PGDMP                  	    |            postgres    16.4    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                usr_trabajo    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   usr_trabajo    false    4893            	            2615    33241    lacteos    SCHEMA        CREATE SCHEMA lacteos;
    DROP SCHEMA lacteos;
                usr_trabajo    false                       0    0    SCHEMA lacteos    ACL     i   GRANT USAGE ON SCHEMA lacteos TO usuario1;
GRANT CREATE ON SCHEMA lacteos TO usuario1 WITH GRANT OPTION;
                   usr_trabajo    false    9            �            1259    33242 	   categoria    TABLE     c   CREATE TABLE lacteos.categoria (
    codigo integer NOT NULL,
    nombre character(30) NOT NULL
);
    DROP TABLE lacteos.categoria;
       lacteos         heap    usr_trabajo    false    9                        0    0    TABLE categoria    ACL        GRANT SELECT,INSERT,UPDATE ON TABLE lacteos.categoria TO usuario2;
GRANT SELECT,UPDATE ON TABLE lacteos.categoria TO consulta;
          lacteos          usr_trabajo    false    226            �            1259    33247    producto    TABLE     }   CREATE TABLE lacteos.producto (
    codigo integer NOT NULL,
    descripcion character(100),
    codigo_categoria integer
);
    DROP TABLE lacteos.producto;
       lacteos         heap    usuario1    false    9            �            1259    33266    productos_proveedor    TABLE     �   CREATE TABLE lacteos.productos_proveedor (
    consecutivo integer NOT NULL,
    codigo_producto integer,
    cedula_proveedor integer
);
 (   DROP TABLE lacteos.productos_proveedor;
       lacteos         heap    usuario1    false    9            �            1259    33256    proveedores    TABLE     �   CREATE TABLE lacteos.proveedores (
    cedula integer NOT NULL,
    nombre character(30),
    apellidos character(30),
    genero character(1),
    fecha_nto date
);
     DROP TABLE lacteos.proveedores;
       lacteos         heap    usuario1    false    9            �            1259    33298    Productos_ofrecidos    VIEW     �  CREATE VIEW lacteos."Productos_ofrecidos" AS
 SELECT p.cedula,
    p.nombre,
    pr.descripcion AS producto,
    c.nombre AS categoria
   FROM (((lacteos.proveedores p
     JOIN lacteos.productos_proveedor pp ON ((p.cedula = pp.cedula_proveedor)))
     JOIN lacteos.producto pr ON ((pp.codigo_producto = pr.codigo)))
     JOIN lacteos.categoria c ON ((pr.codigo_categoria = c.codigo)));
 )   DROP VIEW lacteos."Productos_ofrecidos";
       lacteos          postgres    false    226    226    227    227    227    228    228    229    229    9                      0    33242 	   categoria 
   TABLE DATA           4   COPY lacteos.categoria (codigo, nombre) FROM stdin;
    lacteos          usr_trabajo    false    226   �                 0    33247    producto 
   TABLE DATA           J   COPY lacteos.producto (codigo, descripcion, codigo_categoria) FROM stdin;
    lacteos          usuario1    false    227   �                 0    33266    productos_proveedor 
   TABLE DATA           ^   COPY lacteos.productos_proveedor (consecutivo, codigo_producto, cedula_proveedor) FROM stdin;
    lacteos          usuario1    false    229                    0    33256    proveedores 
   TABLE DATA           T   COPY lacteos.proveedores (cedula, nombre, apellidos, genero, fecha_nto) FROM stdin;
    lacteos          usuario1    false    228   S       z           2606    33246    categoria codigo_l 
   CONSTRAINT     U   ALTER TABLE ONLY lacteos.categoria
    ADD CONSTRAINT codigo_l PRIMARY KEY (codigo);
 =   ALTER TABLE ONLY lacteos.categoria DROP CONSTRAINT codigo_l;
       lacteos            usr_trabajo    false    226            |           2606    33287    producto producto_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY lacteos.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (codigo);
 A   ALTER TABLE ONLY lacteos.producto DROP CONSTRAINT producto_pkey;
       lacteos            usuario1    false    227            �           2606    33270 ,   productos_proveedor productos_proveedor_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY lacteos.productos_proveedor
    ADD CONSTRAINT productos_proveedor_pkey PRIMARY KEY (consecutivo);
 W   ALTER TABLE ONLY lacteos.productos_proveedor DROP CONSTRAINT productos_proveedor_pkey;
       lacteos            usuario1    false    229            ~           2606    33260    proveedores proveedores_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY lacteos.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (cedula);
 G   ALTER TABLE ONLY lacteos.proveedores DROP CONSTRAINT proveedores_pkey;
       lacteos            usuario1    false    228            �           2606    33261    producto codigo_l    FK CONSTRAINT     �   ALTER TABLE ONLY lacteos.producto
    ADD CONSTRAINT codigo_l FOREIGN KEY (codigo_categoria) REFERENCES lacteos.categoria(codigo) NOT VALID;
 <   ALTER TABLE ONLY lacteos.producto DROP CONSTRAINT codigo_l;
       lacteos          usuario1    false    227    226    4730            �           2606    33293     productos_proveedor productos_fk    FK CONSTRAINT     �   ALTER TABLE ONLY lacteos.productos_proveedor
    ADD CONSTRAINT productos_fk FOREIGN KEY (codigo_producto) REFERENCES lacteos.producto(codigo) NOT VALID;
 K   ALTER TABLE ONLY lacteos.productos_proveedor DROP CONSTRAINT productos_fk;
       lacteos          usuario1    false    229    227    4732            �           2606    33288 "   productos_proveedor proveedores_fk    FK CONSTRAINT     �   ALTER TABLE ONLY lacteos.productos_proveedor
    ADD CONSTRAINT proveedores_fk FOREIGN KEY (cedula_proveedor) REFERENCES lacteos.proveedores(cedula) NOT VALID;
 M   ALTER TABLE ONLY lacteos.productos_proveedor DROP CONSTRAINT proveedores_fk;
       lacteos          usuario1    false    4734    228    229               /   x�3�,,M-�/V���8+��K�J2p)0�,�/.)J�eW� 1��         D   x�320��K,I,V�-�4�2Z�]��Is����83im�!�S������
�E4�hS� -�<�         +   x�3�44�433�21��͹�9� �D�(a��qqq ��         D   x�333��M,�LT�8s�p�*p�qZZ�� �)���9!�ҋ�3��gj�kh�kd�����  O�     