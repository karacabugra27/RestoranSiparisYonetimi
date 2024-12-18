PGDMP      7                |            restorandbdb    15.8    16.4 W    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            i           1262    16597    restorandbdb    DATABASE     �   CREATE DATABASE restorandbdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE restorandbdb;
                postgres    false            �            1259    16695    garson    TABLE     �   CREATE TABLE public.garson (
    garson_id integer NOT NULL,
    ad character varying(30) NOT NULL,
    soyad character varying(30) NOT NULL
);
    DROP TABLE public.garson;
       public         heap    postgres    false            �            1259    16694    garson_garson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.garson_garson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.garson_garson_id_seq;
       public          postgres    false    217            j           0    0    garson_garson_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.garson_garson_id_seq OWNED BY public.garson.garson_id;
          public          postgres    false    216            �            1259    16709    kasiyer    TABLE     �   CREATE TABLE public.kasiyer (
    kasiyer_id integer NOT NULL,
    ad character varying(30) NOT NULL,
    soyad character varying(30) NOT NULL
);
    DROP TABLE public.kasiyer;
       public         heap    postgres    false            �            1259    16708    kasiyer_kasiyer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kasiyer_kasiyer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.kasiyer_kasiyer_id_seq;
       public          postgres    false    221            k           0    0    kasiyer_kasiyer_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.kasiyer_kasiyer_id_seq OWNED BY public.kasiyer.kasiyer_id;
          public          postgres    false    220            �            1259    16702    kategori    TABLE     s   CREATE TABLE public.kategori (
    kategori_id integer NOT NULL,
    kategoriadi character varying(20) NOT NULL
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            �            1259    16701    kategori_kategori_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_kategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.kategori_kategori_id_seq;
       public          postgres    false    219            l           0    0    kategori_kategori_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.kategori_kategori_id_seq OWNED BY public.kategori.kategori_id;
          public          postgres    false    218            �            1259    16723    masa    TABLE     ;   CREATE TABLE public.masa (
    masa_id integer NOT NULL
);
    DROP TABLE public.masa;
       public         heap    postgres    false            �            1259    16722    masa_masa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.masa_masa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.masa_masa_id_seq;
       public          postgres    false    225            m           0    0    masa_masa_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.masa_masa_id_seq OWNED BY public.masa.masa_id;
          public          postgres    false    224            �            1259    16716    musteri    TABLE     �   CREATE TABLE public.musteri (
    musteri_id integer NOT NULL,
    ad character varying(30) NOT NULL,
    soyad character varying(30) NOT NULL,
    telefon character varying(10)
);
    DROP TABLE public.musteri;
       public         heap    postgres    false            �            1259    16715    musteri_musteri_id_seq    SEQUENCE     �   CREATE SEQUENCE public.musteri_musteri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.musteri_musteri_id_seq;
       public          postgres    false    223            n           0    0    musteri_musteri_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.musteri_musteri_id_seq OWNED BY public.musteri.musteri_id;
          public          postgres    false    222            �            1259    16688    mutfakpersoneli    TABLE     �   CREATE TABLE public.mutfakpersoneli (
    mutfakp_id integer NOT NULL,
    ad character varying(30) NOT NULL,
    soyad character varying(30) NOT NULL
);
 #   DROP TABLE public.mutfakpersoneli;
       public         heap    postgres    false            �            1259    16687    mutfakpersoneli_mutfakp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mutfakpersoneli_mutfakp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.mutfakpersoneli_mutfakp_id_seq;
       public          postgres    false    215            o           0    0    mutfakpersoneli_mutfakp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.mutfakpersoneli_mutfakp_id_seq OWNED BY public.mutfakpersoneli.mutfakp_id;
          public          postgres    false    214            �            1259    16782    odeme    TABLE     �   CREATE TABLE public.odeme (
    odeme_id integer NOT NULL,
    kasiyer_id integer,
    siparisid integer,
    tarih timestamp without time zone NOT NULL,
    odemeturu character varying(15),
    tutar numeric(8,2) NOT NULL
);
    DROP TABLE public.odeme;
       public         heap    postgres    false            �            1259    16781    odeme_odeme_id_seq    SEQUENCE     �   CREATE SEQUENCE public.odeme_odeme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.odeme_odeme_id_seq;
       public          postgres    false    233            p           0    0    odeme_odeme_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.odeme_odeme_id_seq OWNED BY public.odeme.odeme_id;
          public          postgres    false    232            �            1259    16754    siparis    TABLE       CREATE TABLE public.siparis (
    siparis_id integer NOT NULL,
    masa_id integer,
    musteriid integer,
    mutfak_id integer,
    garson_id integer,
    durum character varying(25) DEFAULT 'Hazirlaniyor'::character varying,
    toplamfiyat numeric(10,2)
);
    DROP TABLE public.siparis;
       public         heap    postgres    false            �            1259    16753    siparis_siparis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.siparis_siparis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.siparis_siparis_id_seq;
       public          postgres    false    231            q           0    0    siparis_siparis_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.siparis_siparis_id_seq OWNED BY public.siparis.siparis_id;
          public          postgres    false    230            �            1259    16798    siparis_urun    TABLE     d   CREATE TABLE public.siparis_urun (
    siparis_id integer NOT NULL,
    urun_id integer NOT NULL
);
     DROP TABLE public.siparis_urun;
       public         heap    postgres    false            �            1259    16742    stok    TABLE     �   CREATE TABLE public.stok (
    stok_id integer NOT NULL,
    urun_id integer,
    stokdurum integer NOT NULL,
    guncellemetarih timestamp without time zone NOT NULL
);
    DROP TABLE public.stok;
       public         heap    postgres    false            �            1259    16741    stok_stok_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stok_stok_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.stok_stok_id_seq;
       public          postgres    false    229            r           0    0    stok_stok_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.stok_stok_id_seq OWNED BY public.stok.stok_id;
          public          postgres    false    228            �            1259    16730    urunler    TABLE     �   CREATE TABLE public.urunler (
    urun_id integer NOT NULL,
    kategori_id integer,
    ad character varying(30) NOT NULL,
    stokdurum integer NOT NULL,
    fiyat numeric(6,2) NOT NULL
);
    DROP TABLE public.urunler;
       public         heap    postgres    false            �            1259    16729    urunler_urun_id_seq    SEQUENCE     �   CREATE SEQUENCE public.urunler_urun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.urunler_urun_id_seq;
       public          postgres    false    227            s           0    0    urunler_urun_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.urunler_urun_id_seq OWNED BY public.urunler.urun_id;
          public          postgres    false    226            �           2604    16698    garson garson_id    DEFAULT     t   ALTER TABLE ONLY public.garson ALTER COLUMN garson_id SET DEFAULT nextval('public.garson_garson_id_seq'::regclass);
 ?   ALTER TABLE public.garson ALTER COLUMN garson_id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16712    kasiyer kasiyer_id    DEFAULT     x   ALTER TABLE ONLY public.kasiyer ALTER COLUMN kasiyer_id SET DEFAULT nextval('public.kasiyer_kasiyer_id_seq'::regclass);
 A   ALTER TABLE public.kasiyer ALTER COLUMN kasiyer_id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16705    kategori kategori_id    DEFAULT     |   ALTER TABLE ONLY public.kategori ALTER COLUMN kategori_id SET DEFAULT nextval('public.kategori_kategori_id_seq'::regclass);
 C   ALTER TABLE public.kategori ALTER COLUMN kategori_id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16726    masa masa_id    DEFAULT     l   ALTER TABLE ONLY public.masa ALTER COLUMN masa_id SET DEFAULT nextval('public.masa_masa_id_seq'::regclass);
 ;   ALTER TABLE public.masa ALTER COLUMN masa_id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16719    musteri musteri_id    DEFAULT     x   ALTER TABLE ONLY public.musteri ALTER COLUMN musteri_id SET DEFAULT nextval('public.musteri_musteri_id_seq'::regclass);
 A   ALTER TABLE public.musteri ALTER COLUMN musteri_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16691    mutfakpersoneli mutfakp_id    DEFAULT     �   ALTER TABLE ONLY public.mutfakpersoneli ALTER COLUMN mutfakp_id SET DEFAULT nextval('public.mutfakpersoneli_mutfakp_id_seq'::regclass);
 I   ALTER TABLE public.mutfakpersoneli ALTER COLUMN mutfakp_id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16785    odeme odeme_id    DEFAULT     p   ALTER TABLE ONLY public.odeme ALTER COLUMN odeme_id SET DEFAULT nextval('public.odeme_odeme_id_seq'::regclass);
 =   ALTER TABLE public.odeme ALTER COLUMN odeme_id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    16757    siparis siparis_id    DEFAULT     x   ALTER TABLE ONLY public.siparis ALTER COLUMN siparis_id SET DEFAULT nextval('public.siparis_siparis_id_seq'::regclass);
 A   ALTER TABLE public.siparis ALTER COLUMN siparis_id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16745    stok stok_id    DEFAULT     l   ALTER TABLE ONLY public.stok ALTER COLUMN stok_id SET DEFAULT nextval('public.stok_stok_id_seq'::regclass);
 ;   ALTER TABLE public.stok ALTER COLUMN stok_id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16733    urunler urun_id    DEFAULT     r   ALTER TABLE ONLY public.urunler ALTER COLUMN urun_id SET DEFAULT nextval('public.urunler_urun_id_seq'::regclass);
 >   ALTER TABLE public.urunler ALTER COLUMN urun_id DROP DEFAULT;
       public          postgres    false    226    227    227            R          0    16695    garson 
   TABLE DATA           6   COPY public.garson (garson_id, ad, soyad) FROM stdin;
    public          postgres    false    217   -c       V          0    16709    kasiyer 
   TABLE DATA           8   COPY public.kasiyer (kasiyer_id, ad, soyad) FROM stdin;
    public          postgres    false    221   Jc       T          0    16702    kategori 
   TABLE DATA           <   COPY public.kategori (kategori_id, kategoriadi) FROM stdin;
    public          postgres    false    219   gc       Z          0    16723    masa 
   TABLE DATA           '   COPY public.masa (masa_id) FROM stdin;
    public          postgres    false    225   �c       X          0    16716    musteri 
   TABLE DATA           A   COPY public.musteri (musteri_id, ad, soyad, telefon) FROM stdin;
    public          postgres    false    223   �c       P          0    16688    mutfakpersoneli 
   TABLE DATA           @   COPY public.mutfakpersoneli (mutfakp_id, ad, soyad) FROM stdin;
    public          postgres    false    215   �c       b          0    16782    odeme 
   TABLE DATA           Y   COPY public.odeme (odeme_id, kasiyer_id, siparisid, tarih, odemeturu, tutar) FROM stdin;
    public          postgres    false    233   �c       `          0    16754    siparis 
   TABLE DATA           k   COPY public.siparis (siparis_id, masa_id, musteriid, mutfak_id, garson_id, durum, toplamfiyat) FROM stdin;
    public          postgres    false    231   �c       c          0    16798    siparis_urun 
   TABLE DATA           ;   COPY public.siparis_urun (siparis_id, urun_id) FROM stdin;
    public          postgres    false    234   d       ^          0    16742    stok 
   TABLE DATA           L   COPY public.stok (stok_id, urun_id, stokdurum, guncellemetarih) FROM stdin;
    public          postgres    false    229   2d       \          0    16730    urunler 
   TABLE DATA           M   COPY public.urunler (urun_id, kategori_id, ad, stokdurum, fiyat) FROM stdin;
    public          postgres    false    227   Od       t           0    0    garson_garson_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.garson_garson_id_seq', 1, false);
          public          postgres    false    216            u           0    0    kasiyer_kasiyer_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.kasiyer_kasiyer_id_seq', 1, false);
          public          postgres    false    220            v           0    0    kategori_kategori_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.kategori_kategori_id_seq', 1, false);
          public          postgres    false    218            w           0    0    masa_masa_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.masa_masa_id_seq', 1, false);
          public          postgres    false    224            x           0    0    musteri_musteri_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.musteri_musteri_id_seq', 1, false);
          public          postgres    false    222            y           0    0    mutfakpersoneli_mutfakp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.mutfakpersoneli_mutfakp_id_seq', 1, false);
          public          postgres    false    214            z           0    0    odeme_odeme_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.odeme_odeme_id_seq', 1, false);
          public          postgres    false    232            {           0    0    siparis_siparis_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.siparis_siparis_id_seq', 1, false);
          public          postgres    false    230            |           0    0    stok_stok_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.stok_stok_id_seq', 1, false);
          public          postgres    false    228            }           0    0    urunler_urun_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.urunler_urun_id_seq', 1, false);
          public          postgres    false    226            �           2606    16700    garson garson_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.garson
    ADD CONSTRAINT garson_pkey PRIMARY KEY (garson_id);
 <   ALTER TABLE ONLY public.garson DROP CONSTRAINT garson_pkey;
       public            postgres    false    217            �           2606    16714    kasiyer kasiyer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.kasiyer
    ADD CONSTRAINT kasiyer_pkey PRIMARY KEY (kasiyer_id);
 >   ALTER TABLE ONLY public.kasiyer DROP CONSTRAINT kasiyer_pkey;
       public            postgres    false    221            �           2606    16707    kategori kategori_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (kategori_id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    219            �           2606    16728    masa masa_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.masa
    ADD CONSTRAINT masa_pkey PRIMARY KEY (masa_id);
 8   ALTER TABLE ONLY public.masa DROP CONSTRAINT masa_pkey;
       public            postgres    false    225            �           2606    16721    musteri musteri_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_pkey PRIMARY KEY (musteri_id);
 >   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_pkey;
       public            postgres    false    223            �           2606    16693 $   mutfakpersoneli mutfakpersoneli_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mutfakpersoneli
    ADD CONSTRAINT mutfakpersoneli_pkey PRIMARY KEY (mutfakp_id);
 N   ALTER TABLE ONLY public.mutfakpersoneli DROP CONSTRAINT mutfakpersoneli_pkey;
       public            postgres    false    215            �           2606    16787    odeme odeme_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.odeme
    ADD CONSTRAINT odeme_pkey PRIMARY KEY (odeme_id);
 :   ALTER TABLE ONLY public.odeme DROP CONSTRAINT odeme_pkey;
       public            postgres    false    233            �           2606    16760    siparis siparis_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_pkey PRIMARY KEY (siparis_id);
 >   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_pkey;
       public            postgres    false    231            �           2606    16802    siparis_urun siparis_urun_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.siparis_urun
    ADD CONSTRAINT siparis_urun_pkey PRIMARY KEY (siparis_id, urun_id);
 H   ALTER TABLE ONLY public.siparis_urun DROP CONSTRAINT siparis_urun_pkey;
       public            postgres    false    234    234            �           2606    16747    stok stok_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.stok
    ADD CONSTRAINT stok_pkey PRIMARY KEY (stok_id);
 8   ALTER TABLE ONLY public.stok DROP CONSTRAINT stok_pkey;
       public            postgres    false    229            �           2606    16735    urunler urunler_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.urunler
    ADD CONSTRAINT urunler_pkey PRIMARY KEY (urun_id);
 >   ALTER TABLE ONLY public.urunler DROP CONSTRAINT urunler_pkey;
       public            postgres    false    227            �           2606    16788    odeme odeme_kasiyer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.odeme
    ADD CONSTRAINT odeme_kasiyer_id_fkey FOREIGN KEY (kasiyer_id) REFERENCES public.kasiyer(kasiyer_id);
 E   ALTER TABLE ONLY public.odeme DROP CONSTRAINT odeme_kasiyer_id_fkey;
       public          postgres    false    221    3240    233            �           2606    16793    odeme odeme_siparisid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.odeme
    ADD CONSTRAINT odeme_siparisid_fkey FOREIGN KEY (siparisid) REFERENCES public.siparis(siparis_id);
 D   ALTER TABLE ONLY public.odeme DROP CONSTRAINT odeme_siparisid_fkey;
       public          postgres    false    3250    233    231            �           2606    16776    siparis siparis_garson_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_garson_id_fkey FOREIGN KEY (garson_id) REFERENCES public.garson(garson_id);
 H   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_garson_id_fkey;
       public          postgres    false    3236    217    231            �           2606    16761    siparis siparis_masa_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_masa_id_fkey FOREIGN KEY (masa_id) REFERENCES public.masa(masa_id);
 F   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_masa_id_fkey;
       public          postgres    false    225    3244    231            �           2606    16766    siparis siparis_musteriid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_musteriid_fkey FOREIGN KEY (musteriid) REFERENCES public.musteri(musteri_id);
 H   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_musteriid_fkey;
       public          postgres    false    3242    231    223            �           2606    16771    siparis siparis_mutfak_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_mutfak_id_fkey FOREIGN KEY (mutfak_id) REFERENCES public.mutfakpersoneli(mutfakp_id);
 H   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_mutfak_id_fkey;
       public          postgres    false    215    231    3234            �           2606    16803 )   siparis_urun siparis_urun_siparis_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis_urun
    ADD CONSTRAINT siparis_urun_siparis_id_fkey FOREIGN KEY (siparis_id) REFERENCES public.siparis(siparis_id);
 S   ALTER TABLE ONLY public.siparis_urun DROP CONSTRAINT siparis_urun_siparis_id_fkey;
       public          postgres    false    234    231    3250            �           2606    16808 &   siparis_urun siparis_urun_urun_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.siparis_urun
    ADD CONSTRAINT siparis_urun_urun_id_fkey FOREIGN KEY (urun_id) REFERENCES public.urunler(urun_id);
 P   ALTER TABLE ONLY public.siparis_urun DROP CONSTRAINT siparis_urun_urun_id_fkey;
       public          postgres    false    234    227    3246            �           2606    16748    stok stok_urun_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.stok
    ADD CONSTRAINT stok_urun_id_fkey FOREIGN KEY (urun_id) REFERENCES public.urunler(urun_id);
 @   ALTER TABLE ONLY public.stok DROP CONSTRAINT stok_urun_id_fkey;
       public          postgres    false    3246    227    229            �           2606    16736     urunler urunler_kategori_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.urunler
    ADD CONSTRAINT urunler_kategori_id_fkey FOREIGN KEY (kategori_id) REFERENCES public.kategori(kategori_id);
 J   ALTER TABLE ONLY public.urunler DROP CONSTRAINT urunler_kategori_id_fkey;
       public          postgres    false    227    3238    219            R      x������ � �      V      x������ � �      T      x������ � �      Z      x������ � �      X      x������ � �      P      x������ � �      b      x������ � �      `      x������ � �      c      x������ � �      ^      x������ � �      \      x������ � �     