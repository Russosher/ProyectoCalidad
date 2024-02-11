PGDMP      '                |            Proyecto Calidad    15.5    16.1 7    N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Q           1262    16562    Proyecto Calidad    DATABASE     �   CREATE DATABASE "Proyecto Calidad" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
 "   DROP DATABASE "Proyecto Calidad";
                postgres    false            �            1259    16685 
   areas_desa    TABLE     m   CREATE TABLE public.areas_desa (
    id integer NOT NULL,
    nombre_area character varying(100) NOT NULL
);
    DROP TABLE public.areas_desa;
       public         heap    postgres    false            �            1259    16684    areas_desa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.areas_desa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.areas_desa_id_seq;
       public          postgres    false    226            R           0    0    areas_desa_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.areas_desa_id_seq OWNED BY public.areas_desa.id;
          public          postgres    false    225            �            1259    16630    certificaciones    TABLE     �  CREATE TABLE public.certificaciones (
    id_certificaciones integer NOT NULL,
    nombre_certificacion character varying(100) NOT NULL,
    id_requisitorias integer,
    id_usuario integer,
    id_estado integer,
    id_prioridad integer,
    id_numero_cct integer,
    observaciones character varying(100) NOT NULL,
    id_sistema integer,
    id_desarrollador integer,
    id_fecha_ingreso integer
);
 #   DROP TABLE public.certificaciones;
       public         heap    postgres    false            �            1259    16588    control_de_cambio    TABLE     �   CREATE TABLE public.control_de_cambio (
    id_numero_cct integer NOT NULL,
    descripcion_cct character varying(100) NOT NULL
);
 %   DROP TABLE public.control_de_cambio;
       public         heap    postgres    false            �            1259    16578    desarrollador    TABLE     +  CREATE TABLE public.desarrollador (
    id_desarrollador integer NOT NULL,
    nombre_desarrollador character varying(100) NOT NULL,
    apellido_desarrollador character varying(100) NOT NULL,
    area_desarrollador character varying(255),
    cargo character varying(100),
    id_estado integer
);
 !   DROP TABLE public.desarrollador;
       public         heap    postgres    false            �            1259    16678    desarrollador_id_seq    SEQUENCE     }   CREATE SEQUENCE public.desarrollador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.desarrollador_id_seq;
       public          postgres    false            �            1259    16573    estado    TABLE     w   CREATE TABLE public.estado (
    id_estado integer NOT NULL,
    descripcion_estado character varying(100) NOT NULL
);
    DROP TABLE public.estado;
       public         heap    postgres    false            �            1259    16610 	   historico    TABLE     �   CREATE TABLE public.historico (
    id_fecha_ingreso integer NOT NULL,
    id_fecha_certif integer,
    id_estado integer,
    id_usuario integer,
    id_requisitorias integer
);
    DROP TABLE public.historico;
       public         heap    postgres    false            �            1259    16583 	   prioridad    TABLE     �   CREATE TABLE public.prioridad (
    id_prioridad integer NOT NULL,
    descripcion_prioridad character varying(100) NOT NULL
);
    DROP TABLE public.prioridad;
       public         heap    postgres    false            �            1259    16568    requisitorias    TABLE     �   CREATE TABLE public.requisitorias (
    id_requisitorias integer NOT NULL,
    nombre_requisitorias character varying(100) NOT NULL
);
 !   DROP TABLE public.requisitorias;
       public         heap    postgres    false            �            1259    16563    rol    TABLE     n   CREATE TABLE public.rol (
    id_rol integer NOT NULL,
    descripcion_rol character varying(100) NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    16593    sistema    TABLE     u   CREATE TABLE public.sistema (
    id_sistema integer NOT NULL,
    nombre_sistema character varying(100) NOT NULL
);
    DROP TABLE public.sistema;
       public         heap    postgres    false            �            1259    16598    usuario    TABLE     n  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(100) NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    "contraseña" character varying(100) NOT NULL,
    estatus character varying(100) NOT NULL,
    id_rol integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �           2604    16688    areas_desa id    DEFAULT     n   ALTER TABLE ONLY public.areas_desa ALTER COLUMN id SET DEFAULT nextval('public.areas_desa_id_seq'::regclass);
 <   ALTER TABLE public.areas_desa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            K          0    16685 
   areas_desa 
   TABLE DATA           5   COPY public.areas_desa (id, nombre_area) FROM stdin;
    public          postgres    false    226   F       H          0    16630    certificaciones 
   TABLE DATA           �   COPY public.certificaciones (id_certificaciones, nombre_certificacion, id_requisitorias, id_usuario, id_estado, id_prioridad, id_numero_cct, observaciones, id_sistema, id_desarrollador, id_fecha_ingreso) FROM stdin;
    public          postgres    false    223   �F       D          0    16588    control_de_cambio 
   TABLE DATA           K   COPY public.control_de_cambio (id_numero_cct, descripcion_cct) FROM stdin;
    public          postgres    false    219   �F       B          0    16578    desarrollador 
   TABLE DATA           �   COPY public.desarrollador (id_desarrollador, nombre_desarrollador, apellido_desarrollador, area_desarrollador, cargo, id_estado) FROM stdin;
    public          postgres    false    217   �F       A          0    16573    estado 
   TABLE DATA           ?   COPY public.estado (id_estado, descripcion_estado) FROM stdin;
    public          postgres    false    216   4G       G          0    16610 	   historico 
   TABLE DATA           o   COPY public.historico (id_fecha_ingreso, id_fecha_certif, id_estado, id_usuario, id_requisitorias) FROM stdin;
    public          postgres    false    222   _G       C          0    16583 	   prioridad 
   TABLE DATA           H   COPY public.prioridad (id_prioridad, descripcion_prioridad) FROM stdin;
    public          postgres    false    218   |G       @          0    16568    requisitorias 
   TABLE DATA           O   COPY public.requisitorias (id_requisitorias, nombre_requisitorias) FROM stdin;
    public          postgres    false    215   �G       ?          0    16563    rol 
   TABLE DATA           6   COPY public.rol (id_rol, descripcion_rol) FROM stdin;
    public          postgres    false    214   �G       E          0    16593    sistema 
   TABLE DATA           =   COPY public.sistema (id_sistema, nombre_sistema) FROM stdin;
    public          postgres    false    220   �G       F          0    16598    usuario 
   TABLE DATA           v   COPY public.usuario (id_usuario, nombre_usuario, nombre, apellido, email, "contraseña", estatus, id_rol) FROM stdin;
    public          postgres    false    221   �G       S           0    0    areas_desa_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.areas_desa_id_seq', 7, true);
          public          postgres    false    225            T           0    0    desarrollador_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.desarrollador_id_seq', 1, false);
          public          postgres    false    224            �           2606    16690    areas_desa areas_desa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.areas_desa
    ADD CONSTRAINT areas_desa_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.areas_desa DROP CONSTRAINT areas_desa_pkey;
       public            postgres    false    226            �           2606    16634 $   certificaciones certificaciones_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_pkey PRIMARY KEY (id_certificaciones);
 N   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_pkey;
       public            postgres    false    223            �           2606    16592 (   control_de_cambio control_de_cambio_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.control_de_cambio
    ADD CONSTRAINT control_de_cambio_pkey PRIMARY KEY (id_numero_cct);
 R   ALTER TABLE ONLY public.control_de_cambio DROP CONSTRAINT control_de_cambio_pkey;
       public            postgres    false    219            �           2606    16582     desarrollador desarrollador_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.desarrollador
    ADD CONSTRAINT desarrollador_pkey PRIMARY KEY (id_desarrollador);
 J   ALTER TABLE ONLY public.desarrollador DROP CONSTRAINT desarrollador_pkey;
       public            postgres    false    217            �           2606    16577    estado estado_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            postgres    false    216            �           2606    16614    historico historico_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_pkey PRIMARY KEY (id_fecha_ingreso);
 B   ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_pkey;
       public            postgres    false    222            �           2606    16587    prioridad prioridad_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.prioridad
    ADD CONSTRAINT prioridad_pkey PRIMARY KEY (id_prioridad);
 B   ALTER TABLE ONLY public.prioridad DROP CONSTRAINT prioridad_pkey;
       public            postgres    false    218            �           2606    16572     requisitorias requisitorias_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.requisitorias
    ADD CONSTRAINT requisitorias_pkey PRIMARY KEY (id_requisitorias);
 J   ALTER TABLE ONLY public.requisitorias DROP CONSTRAINT requisitorias_pkey;
       public            postgres    false    215            �           2606    16567    rol rol_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    214            �           2606    16597    sistema sistema_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (id_sistema);
 >   ALTER TABLE ONLY public.sistema DROP CONSTRAINT sistema_pkey;
       public            postgres    false    220            �           2606    16604    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    221            �           2606    16665 5   certificaciones certificaciones_id_desarrollador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_id_desarrollador_fkey FOREIGN KEY (id_desarrollador) REFERENCES public.desarrollador(id_desarrollador);
 _   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_id_desarrollador_fkey;
       public          postgres    false    223    217    3222            �           2606    16645 .   certificaciones certificaciones_id_estado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);
 X   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_id_estado_fkey;
       public          postgres    false    223    216    3220            �           2606    16670 5   certificaciones certificaciones_id_fecha_ingreso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_id_fecha_ingreso_fkey FOREIGN KEY (id_fecha_ingreso) REFERENCES public.historico(id_fecha_ingreso);
 _   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_id_fecha_ingreso_fkey;
       public          postgres    false    3232    223    222            �           2606    16655 2   certificaciones certificaciones_id_numero_cct_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_id_numero_cct_fkey FOREIGN KEY (id_numero_cct) REFERENCES public.control_de_cambio(id_numero_cct);
 \   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_id_numero_cct_fkey;
       public          postgres    false    3226    219    223            �           2606    16650 1   certificaciones certificaciones_id_prioridad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_id_prioridad_fkey FOREIGN KEY (id_prioridad) REFERENCES public.prioridad(id_prioridad);
 [   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_id_prioridad_fkey;
       public          postgres    false    3224    218    223            �           2606    16635 5   certificaciones certificaciones_id_requisitorias_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_id_requisitorias_fkey FOREIGN KEY (id_requisitorias) REFERENCES public.requisitorias(id_requisitorias);
 _   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_id_requisitorias_fkey;
       public          postgres    false    215    223    3218            �           2606    16660 /   certificaciones certificaciones_id_sistema_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_id_sistema_fkey FOREIGN KEY (id_sistema) REFERENCES public.sistema(id_sistema);
 Y   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_id_sistema_fkey;
       public          postgres    false    223    220    3228            �           2606    16640 /   certificaciones certificaciones_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificaciones
    ADD CONSTRAINT certificaciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 Y   ALTER TABLE ONLY public.certificaciones DROP CONSTRAINT certificaciones_id_usuario_fkey;
       public          postgres    false    223    3230    221            �           2606    16615 "   historico historico_id_estado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);
 L   ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_id_estado_fkey;
       public          postgres    false    222    3220    216            �           2606    16625 )   historico historico_id_requisitorias_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_id_requisitorias_fkey FOREIGN KEY (id_requisitorias) REFERENCES public.requisitorias(id_requisitorias);
 S   ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_id_requisitorias_fkey;
       public          postgres    false    215    222    3218            �           2606    16620 #   historico historico_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.historico
    ADD CONSTRAINT historico_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 M   ALTER TABLE ONLY public.historico DROP CONSTRAINT historico_id_usuario_fkey;
       public          postgres    false    3230    222    221            �           2606    16605    usuario usuario_id_rol_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol);
 E   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_id_rol_fkey;
       public          postgres    false    214    221    3216            K   �   x�M��
1���S���'g� \ac��a!��&>���p/f��n����;cД���M����w���99H�bU�ʵ�b�BH<�;��dnz���X�_��4�#�6���=�(������W	ȴs�0j�<����Vf���n"���@l      H      x������ � �      D      x������ � �      B   6   x�3����M*J5�t,H���L�7�� .C��!\�!i�4�K!$c���� �I�      A      x�3�tt���2���2c���� I�U      G      x������ � �      C      x������ � �      @      x������ � �      ?      x������ � �      E      x������ � �      F      x������ � �     