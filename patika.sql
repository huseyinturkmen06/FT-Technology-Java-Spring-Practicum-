PGDMP         7                z            patikaa    11.16    11.16                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    20545    patikaa    DATABASE     �   CREATE DATABASE patikaa WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE patikaa;
             postgres    false            �            1259    20615    kullanıcı    TABLE     �   CREATE TABLE public."kullanıcı" (
    kullanici_id integer NOT NULL,
    email character varying(50),
    "adı" character varying(50),
    "soyadı" character varying(50),
    telefon character varying(15)
);
 !   DROP TABLE public."kullanıcı";
       public         postgres    false            �            1259    20620    urun    TABLE     �   CREATE TABLE public.urun (
    urun_id integer NOT NULL,
    fiyat integer,
    "adı" character varying(255),
    son_kullanma_tarihi date
);
    DROP TABLE public.urun;
       public         postgres    false            �            1259    20628 
   urun_yorum    TABLE     �   CREATE TABLE public.urun_yorum (
    yorum_id integer NOT NULL,
    yorum_tarihi date,
    urun_id integer,
    yarum_yazisi character varying(500),
    kullanici_id integer
);
    DROP TABLE public.urun_yorum;
       public         postgres    false                      0    20615    kullanıcı 
   TABLE DATA               X   COPY public."kullanıcı" (kullanici_id, email, "adı", "soyadı", telefon) FROM stdin;
    public       postgres    false    196   �                 0    20620    urun 
   TABLE DATA               K   COPY public.urun (urun_id, fiyat, "adı", son_kullanma_tarihi) FROM stdin;
    public       postgres    false    197   �                 0    20628 
   urun_yorum 
   TABLE DATA               a   COPY public.urun_yorum (yorum_id, yorum_tarihi, urun_id, yarum_yazisi, kullanici_id) FROM stdin;
    public       postgres    false    198   j       �
           2606    20619    kullanıcı kullanıcı_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."kullanıcı"
    ADD CONSTRAINT "kullanıcı_pkey" PRIMARY KEY (kullanici_id);
 J   ALTER TABLE ONLY public."kullanıcı" DROP CONSTRAINT "kullanıcı_pkey";
       public         postgres    false    196            �
           2606    20627    urun urun_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.urun
    ADD CONSTRAINT urun_pkey PRIMARY KEY (urun_id);
 8   ALTER TABLE ONLY public.urun DROP CONSTRAINT urun_pkey;
       public         postgres    false    197            �
           2606    20632    urun_yorum urun_yorum_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.urun_yorum
    ADD CONSTRAINT urun_yorum_pkey PRIMARY KEY (yorum_id);
 D   ALTER TABLE ONLY public.urun_yorum DROP CONSTRAINT urun_yorum_pkey;
       public         postgres    false    198            �
           2606    20667 &   urun_yorum fk2h6xxdpc6rf3crbm5ds9hbbn1    FK CONSTRAINT     �   ALTER TABLE ONLY public.urun_yorum
    ADD CONSTRAINT fk2h6xxdpc6rf3crbm5ds9hbbn1 FOREIGN KEY (kullanici_id) REFERENCES public."kullanıcı"(kullanici_id);
 P   ALTER TABLE ONLY public.urun_yorum DROP CONSTRAINT fk2h6xxdpc6rf3crbm5ds9hbbn1;
       public       postgres    false    2694    198    196            �
           2606    20633 &   urun_yorum fkfmhldq7amer6irqfa7p49d4le    FK CONSTRAINT     �   ALTER TABLE ONLY public.urun_yorum
    ADD CONSTRAINT fkfmhldq7amer6irqfa7p49d4le FOREIGN KEY (urun_id) REFERENCES public.urun(urun_id);
 P   ALTER TABLE ONLY public.urun_yorum DROP CONSTRAINT fkfmhldq7amer6irqfa7p49d4le;
       public       postgres    false    197    198    2696               I   x�3�L��LsH�M���K���tr�KSR9��8L�M��83J�S+3�y���N�L)3����� ��         h   x�3�44��-��420��50�52�2�e'�
���3�2�A��9��@A#S��H0�(���3Əˌӈ�,����TϜ�Ќ371/=��L�� ��b���� �eG         �   x�U�M
�0F�3����@�S�n�*��E=��^�)H��{ߏ�L�����QM����w��y�����*X*�L��ʉ���������\I����Q��T��5�W�UK��_	��QƱE��74f     