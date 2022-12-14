toc.dat                                                                                             0000600 0004000 0002000 00000041676 14332333262 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       6    5            
    z            transporte2 %   12.12 (Ubuntu 12.12-0ubuntu0.20.04.1) #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) >    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         B           1262    16942    transporte2    DATABASE     `   CREATE DATABASE transporte2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_GT.UTF-8';
    DROP DATABASE transporte2;
                postgres    false                     3079    17084    dblink 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;
    DROP EXTENSION dblink;
                   false         C           0    0    EXTENSION dblink    COMMENT     _   COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';
                        false    3                     3079    17176    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false         D           0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    2         ?            1255    17073    importante()    FUNCTION     6  CREATE FUNCTION public.importante() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE 
rec record;
contador integer := 0;
BEGIN
	FOR rec IN SELECT * FROM pasajero LOOP 
		contador := contador + 1;
	END LOOP;
		INSERT INTO conteo_pasajeros (total, tiempo)
		VALUES (contador, now());
		RETURN NEW;
END
$$;
 #   DROP FUNCTION public.importante();
       public          postgres    false         ?            1259    17063    conteo_pasajeros    TABLE     x   CREATE TABLE public.conteo_pasajeros (
    total integer,
    tiempo time without time zone,
    id integer NOT NULL
);
 $   DROP TABLE public.conteo_pasajeros;
       public         heap    postgres    false         ?            1259    17061    conteo_pasajeros_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.conteo_pasajeros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.conteo_pasajeros_id_seq;
       public          postgres    false    217         E           0    0    conteo_pasajeros_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.conteo_pasajeros_id_seq OWNED BY public.conteo_pasajeros.id;
          public          postgres    false    216         ?            1259    17029    viaje    TABLE     ?   CREATE TABLE public.viaje (
    id integer NOT NULL,
    id_pasajero integer,
    id_trayecto integer,
    inicio time without time zone,
    fin time without time zone
);
    DROP TABLE public.viaje;
       public         heap    postgres    false         F           0    0    TABLE viaje    ACL     F   GRANT SELECT,INSERT,UPDATE ON TABLE public.viaje TO usuario_consulta;
          public          postgres    false    213         ?            1259    17051    despues_noche_mview    MATERIALIZED VIEW     ?   CREATE MATERIALIZED VIEW public.despues_noche_mview AS
 SELECT viaje.id,
    viaje.id_pasajero,
    viaje.id_trayecto,
    viaje.inicio,
    viaje.fin
   FROM public.viaje
  WHERE (viaje.inicio > '22:00:00'::time without time zone)
  WITH NO DATA;
 3   DROP MATERIALIZED VIEW public.despues_noche_mview;
       public         heap    postgres    false    213    213    213    213    213         ?            1259    16985    estacion    TABLE     ?   CREATE TABLE public.estacion (
    id integer NOT NULL,
    nombre character varying(50),
    direccion character varying(75)
);
    DROP TABLE public.estacion;
       public         heap    postgres    false         ?            1259    16983    estacion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.estacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.estacion_id_seq;
       public          postgres    false    207         G           0    0    estacion_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.estacion_id_seq OWNED BY public.estacion.id;
          public          postgres    false    206         ?            1259    16961    pasajero    TABLE     ?   CREATE TABLE public.pasajero (
    id integer NOT NULL,
    nombre character varying(50),
    direccion_residencia character varying(100),
    fecha_nacimiento date
);
    DROP TABLE public.pasajero;
       public         heap    postgres    false         H           0    0    TABLE pasajero    ACL     I   GRANT SELECT,INSERT,UPDATE ON TABLE public.pasajero TO usuario_consulta;
          public          postgres    false    205         ?            1259    16959    pasajero_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pasajero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pasajero_id_seq;
       public          postgres    false    205         I           0    0    pasajero_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pasajero_id_seq OWNED BY public.pasajero.id;
          public          postgres    false    204         ?            1259    17047 
   rango_view    VIEW     ?  CREATE VIEW public.rango_view AS
 SELECT pasajero.id,
    pasajero.nombre,
    pasajero.direccion_residencia,
    pasajero.fecha_nacimiento,
        CASE
            WHEN (pasajero.fecha_nacimiento > '2015-01-01'::date) THEN 'Mayor'::text
            ELSE 'Ni??o'::text
        END AS tipo
   FROM public.pasajero
  ORDER BY
        CASE
            WHEN (pasajero.fecha_nacimiento > '2015-01-01'::date) THEN 'Mayor'::text
            ELSE 'Ni??o'::text
        END;
    DROP VIEW public.rango_view;
       public          postgres    false    205    205    205    205         ?            1259    17001    trayecto    TABLE     ?   CREATE TABLE public.trayecto (
    id integer NOT NULL,
    id_tren integer,
    id_estacion integer,
    nombre character varying(30)
);
    DROP TABLE public.trayecto;
       public         heap    postgres    false         J           0    0    TABLE trayecto    ACL     I   GRANT SELECT,INSERT,UPDATE ON TABLE public.trayecto TO usuario_consulta;
          public          postgres    false    211         ?            1259    16999    trayecto_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.trayecto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.trayecto_id_seq;
       public          postgres    false    211         K           0    0    trayecto_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.trayecto_id_seq OWNED BY public.trayecto.id;
          public          postgres    false    210         ?            1259    16993    tren    TABLE     o   CREATE TABLE public.tren (
    id integer NOT NULL,
    modelo character varying(30),
    capacidad integer
);
    DROP TABLE public.tren;
       public         heap    postgres    false         ?            1259    16991    tren_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tren_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tren_id_seq;
       public          postgres    false    209         L           0    0    tren_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tren_id_seq OWNED BY public.tren.id;
          public          postgres    false    208         ?            1259    17027    viaje_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viaje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.viaje_id_seq;
       public          postgres    false    213         M           0    0    viaje_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.viaje_id_seq OWNED BY public.viaje.id;
          public          postgres    false    212         ?           2604    17187    conteo_pasajeros id    DEFAULT     z   ALTER TABLE ONLY public.conteo_pasajeros ALTER COLUMN id SET DEFAULT nextval('public.conteo_pasajeros_id_seq'::regclass);
 B   ALTER TABLE public.conteo_pasajeros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217         ?           2604    17188    estacion id    DEFAULT     j   ALTER TABLE ONLY public.estacion ALTER COLUMN id SET DEFAULT nextval('public.estacion_id_seq'::regclass);
 :   ALTER TABLE public.estacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207         ?           2604    17189    pasajero id    DEFAULT     j   ALTER TABLE ONLY public.pasajero ALTER COLUMN id SET DEFAULT nextval('public.pasajero_id_seq'::regclass);
 :   ALTER TABLE public.pasajero ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205         ?           2604    17190    trayecto id    DEFAULT     j   ALTER TABLE ONLY public.trayecto ALTER COLUMN id SET DEFAULT nextval('public.trayecto_id_seq'::regclass);
 :   ALTER TABLE public.trayecto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211         ?           2604    17191    tren id    DEFAULT     b   ALTER TABLE ONLY public.tren ALTER COLUMN id SET DEFAULT nextval('public.tren_id_seq'::regclass);
 6   ALTER TABLE public.tren ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209         ?           2604    17192    viaje id    DEFAULT     d   ALTER TABLE ONLY public.viaje ALTER COLUMN id SET DEFAULT nextval('public.viaje_id_seq'::regclass);
 7   ALTER TABLE public.viaje ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213         <          0    17063    conteo_pasajeros 
   TABLE DATA           =   COPY public.conteo_pasajeros (total, tiempo, id) FROM stdin;
    public          postgres    false    217       3132.dat 3          0    16985    estacion 
   TABLE DATA           9   COPY public.estacion (id, nombre, direccion) FROM stdin;
    public          postgres    false    207       3123.dat 1          0    16961    pasajero 
   TABLE DATA           V   COPY public.pasajero (id, nombre, direccion_residencia, fecha_nacimiento) FROM stdin;
    public          postgres    false    205       3121.dat 7          0    17001    trayecto 
   TABLE DATA           D   COPY public.trayecto (id, id_tren, id_estacion, nombre) FROM stdin;
    public          postgres    false    211       3127.dat 5          0    16993    tren 
   TABLE DATA           5   COPY public.tren (id, modelo, capacidad) FROM stdin;
    public          postgres    false    209       3125.dat 9          0    17029    viaje 
   TABLE DATA           J   COPY public.viaje (id, id_pasajero, id_trayecto, inicio, fin) FROM stdin;
    public          postgres    false    213       3129.dat N           0    0    conteo_pasajeros_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.conteo_pasajeros_id_seq', 7, true);
          public          postgres    false    216         O           0    0    estacion_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.estacion_id_seq', 105, true);
          public          postgres    false    206         P           0    0    pasajero_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pasajero_id_seq', 105, true);
          public          postgres    false    204         Q           0    0    trayecto_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.trayecto_id_seq', 100, true);
          public          postgres    false    210         R           0    0    tren_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tren_id_seq', 106, true);
          public          postgres    false    208         S           0    0    viaje_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.viaje_id_seq', 118, true);
          public          postgres    false    212         ?           2606    17068 &   conteo_pasajeros conteo_pasajeros_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.conteo_pasajeros
    ADD CONSTRAINT conteo_pasajeros_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.conteo_pasajeros DROP CONSTRAINT conteo_pasajeros_pkey;
       public            postgres    false    217         ?           2606    16990    estacion estacion_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.estacion
    ADD CONSTRAINT estacion_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.estacion DROP CONSTRAINT estacion_pkey;
       public            postgres    false    207         ?           2606    16966    pasajero pasajero_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pasajero DROP CONSTRAINT pasajero_pkey;
       public            postgres    false    205         ?           2606    17006    trayecto trayecto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.trayecto DROP CONSTRAINT trayecto_pkey;
       public            postgres    false    211         ?           2606    16998    tren tren_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tren
    ADD CONSTRAINT tren_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tren DROP CONSTRAINT tren_pkey;
       public            postgres    false    209         ?           2606    17034    viaje viaje_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.viaje DROP CONSTRAINT viaje_pkey;
       public            postgres    false    213         ?           2620    17074    pasajero mi_trigger    TRIGGER     m   CREATE TRIGGER mi_trigger AFTER INSERT ON public.pasajero FOR EACH ROW EXECUTE FUNCTION public.importante();
 ,   DROP TRIGGER mi_trigger ON public.pasajero;
       public          postgres    false    229    205         ?           2606    17007    trayecto trayecto_estacion_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_estacion_fkey FOREIGN KEY (id_estacion) REFERENCES public.estacion(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.trayecto DROP CONSTRAINT trayecto_estacion_fkey;
       public          postgres    false    207    211    2978         ?           2606    17022    trayecto trayecto_tren_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_tren_fkey FOREIGN KEY (id_tren) REFERENCES public.tren(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public.trayecto DROP CONSTRAINT trayecto_tren_fkey;
       public          postgres    false    211    209    2980         ?           2606    17035    viaje viaje_pasajero_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajero(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public.viaje DROP CONSTRAINT viaje_pasajero_fkey;
       public          postgres    false    205    213    2976         ?           2606    17040    viaje viaje_trayecto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_trayecto_fkey FOREIGN KEY (id_trayecto) REFERENCES public.trayecto(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public.viaje DROP CONSTRAINT viaje_trayecto_fkey;
       public          postgres    false    2982    211    213         :           0    17051    despues_noche_mview    MATERIALIZED VIEW DATA     6   REFRESH MATERIALIZED VIEW public.despues_noche_mview;
          public          postgres    false    215    3134                                                                          3132.dat                                                                                            0000600 0004000 0002000 00000000210 14332333262 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        100	21:11:25.529042	1
100	21:13:21.871031	2
99	21:15:09.847205	3
100	21:39:04.140442	5
101	21:40:37.757059	6
102	21:40:54.909301	7
\.


                                                                                                                                                                                                                                                                                                                                                                                        3123.dat                                                                                            0000600 0004000 0002000 00000007073 14332333262 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Philomena St Angel	75 Manufacturers Park
3	Deane Caudwell	2 Spenser Trail
4	Beverley Janicek	1676 Veith Trail
5	Gregoire Mitro	446 Sherman Junction
6	Gae Moisey	507 Judy Plaza
7	Lauri Lockley	839 Moland Alley
8	Theo Riggert	36 Namekagon Point
9	Dick Doel	17 Donald Center
10	Francois Wyllcocks	538 Miller Parkway
11	Flossie McCullen	13306 Lunder Pass
12	Jan Rosbotham	079 Green Point
13	Forest Boyton	9 Butterfield Plaza
14	Meghann Frend	92 Cottonwood Parkway
15	Pierce Ingleston	2 Golf View Road
16	Pieter Greson	81930 Rutledge Road
17	Mildred Eskrick	74412 Waxwing Way
18	Susan Rouzet	9 Springview Alley
19	Hallsy Sivills	07661 Merchant Way
20	Kin Dunphie	5 Helena Street
21	Bria Cotilard	4 Oxford Park
22	Dolli Basford	196 Laurel Street
23	Loydie Charsley	970 Hoffman Pass
24	Kerwin Bulfoot	974 Mendota Lane
25	Gisele Bigadike	45 Gina Lane
26	Moises Sickamore	598 Bowman Circle
27	Norry Cowgill	75 Melrose Crossing
28	Hedwig Betser	693 Mccormick Hill
29	Iver Dominelli	275 Myrtle Avenue
30	Oralie Scarce	9 Old Gate Plaza
31	Davine Teffrey	9 Almo Street
32	Floria Rantoull	43 Armistice Place
33	Corinna Celes	09874 Lotheville Terrace
34	Ellissa Balcers	366 Kedzie Road
35	Yurik Woolford	31 Artisan Court
36	Merrill Bendle	91 Rowland Junction
37	Kora Holah	6 Eastwood Pass
38	Karmen Rahill	7516 3rd Terrace
39	Barbabra Leborgne	39 Mandrake Alley
40	Alfonse Jakes	78 Fulton Park
41	Berkly Levinge	4 Spaight Point
42	Marieann Damp	5077 Surrey Avenue
43	Gabie Chamberlen	18 Homewood Court
44	Lenna Sarre	95911 Goodland Pass
45	Terra Dows	035 Bonner Hill
46	Lennie Sinton	102 Northland Court
47	Catarina Phelipeaux	64 Sachs Court
48	Clemente Cantu	08 Wayridge Terrace
49	Adelaida Barkess	6 Gulseth Avenue
50	Anet Cokly	5 Monterey Park
51	Ladonna Edgerton	6045 Dorton Place
52	Gearard Steinham	650 Hauk Way
53	Guglielma Blower	32 Raven Place
54	Marv Ovize	2094 Messerschmidt Court
55	Ynes Pavek	92617 Nelson Court
56	Harmonie Brisley	219 Morningstar Pass
57	Yorke Baudinot	4 Rockefeller Alley
58	Beltran Comsty	3 Redwing Drive
59	Selena Sivier	35315 Washington Plaza
60	Loise Valentine	98194 Pleasure Junction
61	Casar Bankhurst	3126 Harper Trail
62	Berti Annandale	903 Mallard Road
63	Zedekiah Galletly	9659 Village Avenue
64	Lefty Learned	46 Emmet Circle
65	Albertina Brient	0470 Duke Parkway
66	Mufi Cecely	6211 Vera Pass
67	Udall Mattiuzzi	6 Mendota Junction
68	Kata Jerome	33691 Steensland Terrace
69	Caddric Goodbur	8086 Welch Center
70	Elle Madison	52143 Fisk Crossing
71	Prudence Knottley	77184 Upham Place
72	Reynard Leile	1 Kings Parkway
73	Solly Persey	16 Sunfield Court
74	Ashton Greening	0 Mallard Parkway
75	Charline Clyburn	53395 Holy Cross Trail
76	Zeb Hemshall	94 Hermina Place
77	Rana Woolcocks	61369 Manufacturers Parkway
78	Fidelia Ketteridge	0632 Harbort Way
79	Albertine Garside	74041 Sherman Lane
80	Emile Backshill	76166 Corry Parkway
81	Patrice Pulsford	85858 Stang Avenue
82	Candi Pycock	8973 Vernon Hill
83	Micheal Lippitt	6659 Evergreen Road
84	Paule Masseo	0 Ryan Trail
85	Laverne Filchakov	3390 Lien Terrace
86	Jannel Hounson	11730 Oak Plaza
87	Dodie Creak	073 Lyons Crossing
88	Madelena Bembridge	2870 Bunting Way
89	Kyla Atack	8386 Grim Circle
90	Ann Glendenning	616 Hagan Lane
91	Norean Monte	83482 Heffernan Trail
92	Erica MacNeillie	865 Valley Edge Pass
93	Letizia Brimilcombe	150 Blackbird Avenue
94	Grantley Rainforth	96 Oxford Terrace
95	Chelsey Hynde	45 Dakota Lane
96	Jeffie Beebee	9643 Vidon Center
97	Staci Haggar	3 Hudson Avenue
98	Orlando Riepl	9 Parkside Trail
99	Benoit Buttel	2001 Tennyson Way
100	Allissa Keppe	38 Manitowish Point
1	Nombre X	Dire
105	Estacion transac	direccion aleatoria N.1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3121.dat                                                                                            0000600 0004000 0002000 00000011275 14332333262 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Toddy Scarffe	2 Messerschmidt Court	1998-10-13
3	Matt Faich	49592 Oxford Place	1999-02-07
4	Gillian Woodhams	7330 Bunting Point	2002-11-02
5	Helen-elizabeth Moulding	73913 Calypso Drive	1999-03-03
6	Abagail Clyma	186 Golden Leaf Trail	2005-03-21
7	Gardy Gurry	45403 Cambridge Way	1999-09-21
8	Kate Cholton	25861 Katie Place	2005-02-23
9	Siouxie Crosio	65 Pankratz Hill	1996-07-16
11	Cristen Dumbreck	00158 Elgar Plaza	1998-05-20
12	Siobhan Willarton	056 Randy Center	1997-01-02
13	Bertrand Fendt	25 Novick Hill	2002-04-02
14	Ynes Denver	65 Atwood Street	2001-09-29
15	Donny Dudin	16 Spohn Parkway	1999-01-12
16	Corri Shorey	14729 Orin Street	2005-06-29
17	Gibbie Vears	16 Hoepker Alley	2000-05-29
18	Jacintha Raeburn	97 Sloan Circle	2004-05-02
19	Lidia Dockreay	396 Jackson Center	2000-05-30
20	Cairistiona Hurlestone	86364 Eastlawn Junction	1996-01-17
21	Carter Pask	52654 Sunbrook Lane	2004-12-14
22	Ruthy Adacot	5 Crowley Hill	2005-10-26
23	Iolanthe Lerwell	4117 Lyons Way	2003-09-04
24	Linn Huccaby	775 Elka Hill	2005-07-25
25	Andee Tredget	294 Columbus Way	1998-09-14
26	Liliane Coot	8256 Kim Court	2005-06-12
27	Willey Caney	055 Scott Point	1998-03-24
28	Bria Lemonby	77 Westridge Center	2001-07-28
29	Susi Dedney	711 Rigney Trail	2004-03-14
30	Rebe Steljes	80571 Duke Point	2002-06-06
31	York Antowski	08509 Manley Park	2002-07-23
32	Robby Ridesdale	9 Algoma Place	1999-02-07
33	Beckie Amiable	30722 Arapahoe Junction	2000-03-02
34	Darwin Lewcock	408 Forest Lane	2001-09-29
35	Conway Colleck	99 Bartelt Center	2002-08-20
36	Audrie Jentet	510 Clyde Gallagher Drive	1996-06-04
37	Rickie Brandom	02 Sugar Plaza	1999-12-24
38	Carry Dally	652 Eliot Terrace	2003-04-17
39	Angele Worsall	2 Eliot Trail	2000-05-01
40	Jeramey Khan	3 Rockefeller Pass	1997-05-05
41	Evangeline Budnik	8488 Haas Hill	1997-06-02
42	Helena Bachshell	919 Tomscot Center	1998-04-12
43	Grissel Wonham	3 Roxbury Place	1996-10-22
44	Yardley Moralas	11 Calypso Lane	2002-05-20
45	Jeanette Trippitt	289 Everett Alley	2004-02-25
46	Dalli Hadingham	54264 Hauk Terrace	2003-06-29
47	Roselin Milward	30942 Hagan Drive	1999-02-04
48	Liv Hazeldean	96596 Becker Point	1996-05-14
49	Graeme Speedy	43 8th Plaza	1999-03-11
50	Christoffer Labeuil	799 Hovde Drive	1999-09-12
51	Griffin Buckle	7 Darwin Avenue	2001-01-05
52	Thorpe Delf	07284 1st Circle	2005-10-06
53	Lolita Caslane	32064 Birchwood Drive	1999-05-24
54	Antonin Elt	386 Fair Oaks Way	1997-11-13
55	Ilyse Gathercole	539 Crescent Oaks Crossing	2003-06-18
56	Lanette Klimko	06 Ryan Way	2004-12-13
57	Bartholemy Grzes	103 Cody Lane	1998-10-24
58	Georgie Durston	355 Tennessee Place	1998-08-09
59	Minor Marrow	5 Lien Circle	1999-09-25
60	Myrwyn Hedgecock	89 Russell Center	1997-12-17
61	Maddy Bayns	3 Reindahl Junction	2002-05-28
62	Guillermo Sweed	628 Raven Trail	2003-08-08
63	Baily Maeer	6372 Ruskin Point	2001-08-03
64	Rhodie Mauger	48 Delladonna Center	2002-05-06
65	Simon Salterne	8610 Schmedeman Street	2004-11-07
66	Aura Vanacci	46 Atwood Place	2005-08-24
67	Gladi Kahn	74 Saint Paul Trail	1996-09-28
68	Jozef Krolak	60435 Swallow Alley	1999-10-13
69	Byram Bielfeld	4 Maryland Circle	1998-09-05
70	Griswold Boxill	6 Oak Park	2002-11-26
71	Cam McClory	50416 Alpine Street	2000-04-29
72	Thomasine Weatherhogg	820 Briar Crest Lane	1997-11-28
73	Moll Jerdon	45626 Burning Wood Road	2005-07-08
74	Willey Dabrowski	5029 Green Ridge Alley	2005-01-19
75	Torrie Colthurst	72 Prentice Parkway	2004-09-14
76	Filberte Barrack	62590 Graedel Center	2004-11-10
77	Steward Kliche	35 Warrior Circle	1999-02-03
78	Weber Tarte	77 Hovde Center	2003-03-27
79	Consuela Kleinplatz	20 Lerdahl Plaza	2002-09-03
80	Kara-lynn Forshaw	9 Lawn Avenue	2002-07-21
81	Lorelei Porker	2 Lotheville Park	2005-05-02
82	Rogers Bloan	3649 Mariners Cove Pass	1996-12-17
83	Issiah Rookeby	43362 Texas Circle	2002-03-08
84	Goldie O' Cloney	29 International Terrace	1997-09-18
85	Corbett Dungay	3595 Bartelt Hill	2001-12-20
86	Gayla Newtown	8 Ryan Parkway	2001-12-13
87	Winthrop Brookz	1356 Sugar Lane	2000-10-02
88	Delcine Habercham	6 Pleasure Circle	1998-04-03
89	Fin Knevett	30365 Veith Place	1996-03-08
90	Carson Suttling	76 Park Meadow Alley	2004-02-17
91	Tomasina Tavener	7356 Buhler Plaza	2000-01-25
92	Neill O'Siaghail	27585 Delaware Point	2001-04-09
93	Nissie Aldington	9 Stephen Hill	1996-09-11
94	Hugo Goodhay	0596 Hanover Crossing	1997-02-02
95	Eugine Pirouet	424 Kedzie Hill	1999-07-11
96	Zeke Symcox	257 Village Hill	1996-06-26
97	Clara Malyj	59 Nelson Junction	1997-11-11
98	Marlane Brome	075 Troy Point	1996-08-24
99	Gwenore Ziehms	76 Butterfield Crossing	2004-04-27
100	Tammie Kington	66665 Katie Center	1997-10-09
101	Gabriela Ruecastle	41877 Kinsman Center	1998-07-12
103	nombre trigger	lo que sea	2000-01-01
104	nombre trigger	lo que sea	2000-01-02
105	nombre trigger	lo que sea	2000-01-23
\.


                                                                                                                                                                                                                                                                                                                                   3127.dat                                                                                            0000600 0004000 0002000 00000003301 14332333262 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	16	89	Summer Ridge
2	76	28	Paget
3	30	20	Westerfield
4	17	81	Colorado
5	2	89	Hoffman
6	48	4	Little Fleur
7	53	52	Colorado
8	55	8	Forest Dale
9	84	97	Scott
10	51	96	Morning
11	45	43	Melvin
12	8	1	Petterle
13	57	22	Bowman
14	37	48	Jenna
15	90	26	Luster
16	1	9	Dayton
17	6	70	Claremont
18	36	22	Nova
19	65	100	Dwight
20	8	16	Susan
21	56	79	Gina
22	37	35	Commercial
23	72	64	1st
24	20	81	Memorial
25	9	78	Dwight
26	10	39	Mayfield
27	61	67	Elka
28	21	50	Golden Leaf
29	65	19	Menomonie
30	91	75	School
31	83	80	Ridgeway
32	10	19	Comanche
33	65	5	Thierer
34	7	43	Spaight
35	30	53	Loomis
36	43	1	Barnett
37	70	45	Colorado
38	80	8	Pine View
39	53	7	Westerfield
40	93	80	Commercial
41	1	86	Spaight
42	23	93	Utah
43	63	15	Fieldstone
44	58	86	Sachs
45	53	78	Johnson
46	83	77	Scofield
47	48	92	Lighthouse Bay
48	25	35	Reinke
49	54	9	Fieldstone
50	35	35	Portage
51	49	64	Elmside
52	92	3	Arkansas
53	54	41	Manitowish
54	38	25	Corben
55	45	34	Fuller
56	32	36	Dahle
57	28	91	Warbler
58	50	96	Lien
59	25	21	Eliot
60	67	50	Clemons
61	29	41	Express
62	49	76	Prairieview
63	47	35	Arrowood
64	85	64	Emmet
65	57	82	Dayton
66	50	29	Old Shore
67	95	24	Bartillon
68	90	77	Spohn
69	78	88	Rowland
70	32	2	Namekagon
71	100	9	Tennessee
72	86	79	South
73	64	1	Lindbergh
74	73	11	Leroy
75	75	49	Paget
76	83	46	Colorado
77	37	61	Brickson Park
78	6	71	Coleman
79	80	17	Veith
80	43	62	1st
81	92	1	Meadow Valley
82	39	83	Johnson
83	4	62	Algoma
84	93	37	Waywood
85	44	6	Luster
86	40	62	La Follette
87	18	84	Southridge
88	60	89	Mcguire
89	94	59	Mccormick
90	8	94	Merrick
91	50	34	Carpenter
92	55	77	Lakeland
93	99	70	Hazelcrest
94	7	52	Birchwood
95	25	95	Holy Cross
96	19	46	Kensington
97	13	12	Westport
98	28	41	Claremont
99	53	58	Goodland
100	42	51	Sachtjen
\.


                                                                                                                                                                                                                                                                                                                               3125.dat                                                                                            0000600 0004000 0002000 00000002635 14332333262 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Ram 1500	261
2	Swift	130
3	xA	253
4	Wrangler	118
5	Silhouette	299
6	F250	219
7	4Runner	83
8	J	33
9	S6	245
10	Jetta	29
11	MX-5	200
12	XK Series	128
13	Silhouette	98
14	Cayenne	120
15	Savana 1500	24
16	V50	250
17	Corvette	109
18	Ram 3500	83
19	Ram Van B150	59
20	Corolla	269
21	Montero Sport	177
22	7 Series	23
23	E-Class	264
24	Grand Prix	263
25	Sportage	132
26	Quest	190
27	S-Series	97
28	Sentra	86
29	HHR	216
30	G37	270
31	Sonata	114
32	Escalade EXT	196
33	Avalanche 2500	27
34	Durango	231
35	RX-7	108
36	Taurus X	207
37	S-Class	117
38	DeVille	45
39	Impreza	178
40	Alcyone SVX	282
41	Escalade ESV	245
42	Bonneville	261
43	Liberty	235
44	Insight	98
45	E250	150
46	RX	207
47	Aerio	47
48	Camry	103
49	Spectra	41
50	Outback	208
51	Sky	206
52	Vanagon	247
53	T100	241
54	Silhouette	156
55	Astro	241
56	200	259
57	XLR-V	210
58	Tracer	64
59	Z4	178
60	Riviera	184
61	M	172
62	S60	265
63	S6	255
64	Sierra 3500	230
65	Explorer Sport Trac	195
66	Esprit	124
67	A4	31
68	323	112
69	Express	86
70	430	215
71	M5	280
72	Tacoma	209
73	Ranger	193
74	CC	36
75	Justy	145
76	Samurai	184
77	Celica	92
78	S10 Blazer	234
79	Vision	47
80	Taurus	170
81	Regal	108
82	Sienna	140
83	A7	200
84	LTD	258
85	Venza	136
86	Fifth Ave	222
87	Vandura 3500	278
88	Galant	232
89	S-Class	126
90	Freestar	189
91	SLS-Class	210
92	Riviera	270
93	IS	66
94	Mustang	224
95	Caprice	22
96	Q	273
97	Bonneville	173
98	Optima	100
99	Tahoe	198
100	ZDX	232
105	Modelo transaccion	100
\.


                                                                                                   3129.dat                                                                                            0000600 0004000 0002000 00000005177 14332333262 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        19	66	17	15:04:00	20:35:00
20	76	67	19:22:00	22:13:00
21	52	97	09:18:00	19:07:00
22	14	71	06:45:00	09:54:00
23	88	2	20:49:00	16:33:00
24	43	29	07:23:00	08:33:00
25	61	83	08:59:00	11:03:00
26	69	25	18:51:00	15:10:00
27	89	14	13:09:00	01:06:00
28	42	68	13:55:00	14:44:00
29	25	51	13:01:00	17:35:00
30	80	32	02:39:00	20:32:00
31	55	52	07:02:00	16:06:00
32	44	90	19:34:00	10:29:00
33	67	67	00:54:00	00:12:00
34	42	99	15:29:00	06:04:00
35	77	68	04:31:00	13:19:00
36	2	81	01:13:00	00:09:00
37	39	3	13:08:00	13:15:00
38	50	7	05:04:00	19:15:00
39	27	44	12:56:00	12:22:00
40	36	44	10:05:00	10:21:00
41	96	47	07:39:00	21:22:00
42	50	56	08:16:00	02:11:00
43	66	76	03:17:00	23:25:00
44	32	100	08:30:00	11:04:00
45	13	98	17:48:00	08:21:00
46	71	84	06:57:00	12:00:00
47	99	53	02:56:00	00:57:00
48	18	52	22:26:00	17:13:00
49	39	58	16:58:00	08:04:00
51	85	3	18:35:00	07:39:00
52	38	8	16:18:00	18:06:00
53	25	28	03:26:00	00:26:00
54	100	26	18:55:00	12:13:00
55	38	91	12:24:00	16:15:00
56	3	43	11:02:00	15:16:00
57	97	36	11:16:00	05:56:00
58	22	33	06:15:00	10:34:00
59	38	81	21:26:00	16:42:00
60	28	28	10:21:00	14:49:00
61	23	56	22:15:00	22:40:00
62	39	14	23:48:00	21:37:00
63	86	61	14:59:00	10:03:00
64	9	11	08:49:00	05:20:00
65	49	4	18:12:00	05:10:00
66	58	66	04:31:00	07:10:00
67	32	34	03:02:00	23:56:00
68	17	66	09:56:00	16:26:00
69	16	84	01:43:00	22:55:00
70	88	71	05:35:00	18:53:00
71	19	78	00:38:00	00:51:00
72	60	25	18:18:00	06:55:00
73	100	75	06:35:00	05:33:00
74	4	96	06:54:00	15:36:00
75	52	87	20:54:00	18:43:00
76	71	32	07:51:00	21:16:00
77	39	81	19:20:00	07:42:00
78	56	67	11:23:00	21:21:00
79	21	32	18:57:00	22:42:00
80	91	13	20:56:00	19:49:00
81	79	52	01:14:00	22:12:00
82	56	65	16:54:00	19:10:00
83	84	41	14:23:00	02:12:00
84	50	6	11:15:00	17:36:00
85	40	25	08:59:00	12:43:00
86	38	76	18:00:00	03:54:00
87	67	81	19:35:00	12:20:00
88	97	73	07:32:00	11:40:00
89	84	63	15:16:00	08:03:00
90	53	72	18:39:00	06:05:00
91	63	76	12:08:00	17:33:00
92	48	81	22:42:00	21:28:00
93	93	23	08:00:00	06:51:00
94	64	41	15:55:00	02:34:00
95	60	52	03:29:00	18:20:00
96	43	81	19:27:00	21:36:00
97	74	71	10:14:00	04:11:00
98	30	15	22:12:00	14:25:00
99	74	66	04:54:00	08:08:00
100	54	68	06:31:00	23:50:00
101	53	66	17:37:00	17:00:00
102	77	24	05:54:00	21:42:00
103	96	26	04:04:00	21:34:00
104	76	61	20:30:00	19:29:00
105	31	10	20:43:00	03:26:00
106	83	73	08:07:00	07:39:00
107	75	95	12:15:00	22:33:00
108	7	52	04:14:00	11:37:00
109	19	63	09:26:00	21:12:00
110	58	71	12:12:00	02:42:00
111	28	55	19:07:00	15:31:00
112	14	30	16:10:00	18:33:00
113	58	1	11:33:00	13:57:00
114	87	96	07:46:00	10:48:00
115	99	18	14:32:00	23:12:00
116	84	60	19:18:00	12:10:00
117	23	44	06:35:00	21:56:00
118	38	85	11:44:00	13:45:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000033200 14332333262 0015363 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE transporte2;
--
-- Name: transporte2; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE transporte2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_GT.UTF-8';


ALTER DATABASE transporte2 OWNER TO postgres;

\connect transporte2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: importante(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.importante() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE 
rec record;
contador integer := 0;
BEGIN
	FOR rec IN SELECT * FROM pasajero LOOP 
		contador := contador + 1;
	END LOOP;
		INSERT INTO conteo_pasajeros (total, tiempo)
		VALUES (contador, now());
		RETURN NEW;
END
$$;


ALTER FUNCTION public.importante() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: conteo_pasajeros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conteo_pasajeros (
    total integer,
    tiempo time without time zone,
    id integer NOT NULL
);


ALTER TABLE public.conteo_pasajeros OWNER TO postgres;

--
-- Name: conteo_pasajeros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conteo_pasajeros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conteo_pasajeros_id_seq OWNER TO postgres;

--
-- Name: conteo_pasajeros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conteo_pasajeros_id_seq OWNED BY public.conteo_pasajeros.id;


--
-- Name: viaje; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.viaje (
    id integer NOT NULL,
    id_pasajero integer,
    id_trayecto integer,
    inicio time without time zone,
    fin time without time zone
);


ALTER TABLE public.viaje OWNER TO postgres;

--
-- Name: despues_noche_mview; Type: MATERIALIZED VIEW; Schema: public; Owner: postgres
--

CREATE MATERIALIZED VIEW public.despues_noche_mview AS
 SELECT viaje.id,
    viaje.id_pasajero,
    viaje.id_trayecto,
    viaje.inicio,
    viaje.fin
   FROM public.viaje
  WHERE (viaje.inicio > '22:00:00'::time without time zone)
  WITH NO DATA;


ALTER TABLE public.despues_noche_mview OWNER TO postgres;

--
-- Name: estacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estacion (
    id integer NOT NULL,
    nombre character varying(50),
    direccion character varying(75)
);


ALTER TABLE public.estacion OWNER TO postgres;

--
-- Name: estacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estacion_id_seq OWNER TO postgres;

--
-- Name: estacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estacion_id_seq OWNED BY public.estacion.id;


--
-- Name: pasajero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasajero (
    id integer NOT NULL,
    nombre character varying(50),
    direccion_residencia character varying(100),
    fecha_nacimiento date
);


ALTER TABLE public.pasajero OWNER TO postgres;

--
-- Name: pasajero_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasajero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasajero_id_seq OWNER TO postgres;

--
-- Name: pasajero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasajero_id_seq OWNED BY public.pasajero.id;


--
-- Name: rango_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.rango_view AS
 SELECT pasajero.id,
    pasajero.nombre,
    pasajero.direccion_residencia,
    pasajero.fecha_nacimiento,
        CASE
            WHEN (pasajero.fecha_nacimiento > '2015-01-01'::date) THEN 'Mayor'::text
            ELSE 'Ni??o'::text
        END AS tipo
   FROM public.pasajero
  ORDER BY
        CASE
            WHEN (pasajero.fecha_nacimiento > '2015-01-01'::date) THEN 'Mayor'::text
            ELSE 'Ni??o'::text
        END;


ALTER TABLE public.rango_view OWNER TO postgres;

--
-- Name: trayecto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trayecto (
    id integer NOT NULL,
    id_tren integer,
    id_estacion integer,
    nombre character varying(30)
);


ALTER TABLE public.trayecto OWNER TO postgres;

--
-- Name: trayecto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trayecto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trayecto_id_seq OWNER TO postgres;

--
-- Name: trayecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trayecto_id_seq OWNED BY public.trayecto.id;


--
-- Name: tren; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tren (
    id integer NOT NULL,
    modelo character varying(30),
    capacidad integer
);


ALTER TABLE public.tren OWNER TO postgres;

--
-- Name: tren_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tren_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tren_id_seq OWNER TO postgres;

--
-- Name: tren_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tren_id_seq OWNED BY public.tren.id;


--
-- Name: viaje_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.viaje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.viaje_id_seq OWNER TO postgres;

--
-- Name: viaje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.viaje_id_seq OWNED BY public.viaje.id;


--
-- Name: conteo_pasajeros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conteo_pasajeros ALTER COLUMN id SET DEFAULT nextval('public.conteo_pasajeros_id_seq'::regclass);


--
-- Name: estacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estacion ALTER COLUMN id SET DEFAULT nextval('public.estacion_id_seq'::regclass);


--
-- Name: pasajero id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero ALTER COLUMN id SET DEFAULT nextval('public.pasajero_id_seq'::regclass);


--
-- Name: trayecto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trayecto ALTER COLUMN id SET DEFAULT nextval('public.trayecto_id_seq'::regclass);


--
-- Name: tren id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tren ALTER COLUMN id SET DEFAULT nextval('public.tren_id_seq'::regclass);


--
-- Name: viaje id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viaje ALTER COLUMN id SET DEFAULT nextval('public.viaje_id_seq'::regclass);


--
-- Data for Name: conteo_pasajeros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conteo_pasajeros (total, tiempo, id) FROM stdin;
\.
COPY public.conteo_pasajeros (total, tiempo, id) FROM '$$PATH$$/3132.dat';

--
-- Data for Name: estacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estacion (id, nombre, direccion) FROM stdin;
\.
COPY public.estacion (id, nombre, direccion) FROM '$$PATH$$/3123.dat';

--
-- Data for Name: pasajero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pasajero (id, nombre, direccion_residencia, fecha_nacimiento) FROM stdin;
\.
COPY public.pasajero (id, nombre, direccion_residencia, fecha_nacimiento) FROM '$$PATH$$/3121.dat';

--
-- Data for Name: trayecto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trayecto (id, id_tren, id_estacion, nombre) FROM stdin;
\.
COPY public.trayecto (id, id_tren, id_estacion, nombre) FROM '$$PATH$$/3127.dat';

--
-- Data for Name: tren; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tren (id, modelo, capacidad) FROM stdin;
\.
COPY public.tren (id, modelo, capacidad) FROM '$$PATH$$/3125.dat';

--
-- Data for Name: viaje; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.viaje (id, id_pasajero, id_trayecto, inicio, fin) FROM stdin;
\.
COPY public.viaje (id, id_pasajero, id_trayecto, inicio, fin) FROM '$$PATH$$/3129.dat';

--
-- Name: conteo_pasajeros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conteo_pasajeros_id_seq', 7, true);


--
-- Name: estacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estacion_id_seq', 105, true);


--
-- Name: pasajero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasajero_id_seq', 105, true);


--
-- Name: trayecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trayecto_id_seq', 100, true);


--
-- Name: tren_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tren_id_seq', 106, true);


--
-- Name: viaje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.viaje_id_seq', 118, true);


--
-- Name: conteo_pasajeros conteo_pasajeros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conteo_pasajeros
    ADD CONSTRAINT conteo_pasajeros_pkey PRIMARY KEY (id);


--
-- Name: estacion estacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estacion
    ADD CONSTRAINT estacion_pkey PRIMARY KEY (id);


--
-- Name: pasajero pasajero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_pkey PRIMARY KEY (id);


--
-- Name: trayecto trayecto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_pkey PRIMARY KEY (id);


--
-- Name: tren tren_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tren
    ADD CONSTRAINT tren_pkey PRIMARY KEY (id);


--
-- Name: viaje viaje_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_pkey PRIMARY KEY (id);


--
-- Name: pasajero mi_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER mi_trigger AFTER INSERT ON public.pasajero FOR EACH ROW EXECUTE FUNCTION public.importante();


--
-- Name: trayecto trayecto_estacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_estacion_fkey FOREIGN KEY (id_estacion) REFERENCES public.estacion(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: trayecto trayecto_tren_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_tren_fkey FOREIGN KEY (id_tren) REFERENCES public.tren(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: viaje viaje_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajero(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: viaje viaje_trayecto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_trayecto_fkey FOREIGN KEY (id_trayecto) REFERENCES public.trayecto(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: TABLE viaje; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.viaje TO usuario_consulta;


--
-- Name: TABLE pasajero; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.pasajero TO usuario_consulta;


--
-- Name: TABLE trayecto; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.trayecto TO usuario_consulta;


--
-- Name: despues_noche_mview; Type: MATERIALIZED VIEW DATA; Schema: public; Owner: postgres
--

REFRESH MATERIALIZED VIEW public.despues_noche_mview;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                