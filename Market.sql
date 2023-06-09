PGDMP         8                {            Market    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    18067    Market    DATABASE     |   CREATE DATABASE "Market" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Market";
                postgres    false            �            1259    18069    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    18068    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    18076    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    18075    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    18083    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    18082    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    18090    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    18089    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    18099    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    18109    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    18108    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    18098    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    18072    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    18079    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    18086 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    18093 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    18102 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    18112    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    18069    category 
   TABLE DATA                 public          postgres    false    215   x9       *          0    18076    image 
   TABLE DATA                 public          postgres    false    217   :       ,          0    18083    orders 
   TABLE DATA                 public          postgres    false    219   r?       .          0    18090    person 
   TABLE DATA                 public          postgres    false    221   �?       0          0    18099    product 
   TABLE DATA                 public          postgres    false    223   �@       2          0    18109    product_cart 
   TABLE DATA                 public          postgres    false    225   �W       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 45, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 3, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 1, false);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 9, true);
          public          postgres    false    222            �           2606    18074    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    18081    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    18088    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    18097    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    18114    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    18107    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    18116 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    18122 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    18132 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    18127 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    18117 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    18142 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    18137 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0����x��uMk.OҌ01�b�Ŧ�.l���b����b녽v\�uaf�̜wa�Qۀ$�..  VG      *   Z  x���=��5�����%�֫��xl���"
	��?��">"���x���\m��^���3����Ǐ�w�?�p��w��i<>��>����|���_����7�}��������|{��������?�^�H6*sHQ%h��Ƙ��ɴ)���˗ϯn���W�N�b�zK�&�VB�R�̳&25���/E� �Z�=�@^JP�P�@+'/���֣�Q�7�D�i����z�k]��5���R�"yk[��:�B�������a�1��@T��-���R�W(�<��&��{,�J��3�Ŵ���8͸�6f�#E���J�1��UvmaP�8�YC�b�QfWmNWr��ā�2^]�hx�+��X`eNs5*t%����*Z��P�P5\dx�խ�K�vE�y�N��,iHksK��i�Ѧx5'�{v|3�1��:K�׸L�X`���q��hȕ�s��:�Y3�
+�x���UV�W��s���Yے�D��4%��4�hD��s����ܽg|�gDG[����f�������9r���m5ʁD:���r�Ҋ�ڢ��ܣ��-���<�e����8�jyp�ޟ�s��ۧ��R񰴯�sUħr���m���s��O��kA^\c��wbq��S-2���s���J�,FGP�r(��EZ+j+���:Gn��O�� �@���r��ɱRI�?��?��c���Z��!��i�b
Ei*�`�^:Gn�poQ�R�� �5b�ea�TI���s�Α��Cs��)c~����Bpsgf����t���)N1�9���Z0p��(�V]$�<� �#��5�	Vd06W���I����e�x�ǎ��?����	�헹��f�O�^�=>�2�- ��U��̄�ݼ��RL"u,�~��1���
@��D|�J�PbF��$�}	��
�12n��9�|&
�.lCMrn�+�Q�+@��m �5��^S�5o�P��'M,`��|��{����0�����<��Q� �L}1��OGu&�L{�teB~�=f�3�,�Α�?�;��c���~�؃`s\��QX�Y��s���Y)ǎ�Z���	lw_P�k��']�9Gn�XŠ^h;�c��!6�����B���[�����tp�X�岵�?�3��s�VPAc��9��+Q.q�m�`%�����?o`��m IC���SY�,W�0\$�E���
v���
�}��'޿!��:�s��δr�E��s�6J2����D�C�ZR2gL����A��2P=Fn��\�:~�>X,+�b+K�	ի]�9G�{7Ʀw����.�r�(p,؆r�x�W|Α�@�d��	Sl5�B�u��Et@J����������2U%�زǂ����!_��p_��      ,   
   x���          .     x����n�@�=_14!4PMW�(CA� E�4�H�"�À�ח&Mcҥ���ܗ����B ���fW�T��&%��
��RUR�B�%E:�Y�"�:���^MxE�eM���9y����Yi�4��n�m�96�C�$�Wf������O����a����\J�.9�py�,:���FW�Fgg� ~6�ڼ���Ma����rK5;��\�̃��aO���w��qc�2bl�2�HގB)��25^��'A�Ҥ��NC�{����o���      0      x��\[oWr~7���yVr�����6yz� {�}Y(�+[�D#�g(��)k,yvY^�	�A��ΐ=�&�����ꫪsNwi�@?H"g���Sׯ��ֵw޻z����;�}��?�پ��ѽ��?��]ھ݈n�������[����[��?�پ�a#����-���֝;[�������_o�����ߧoэ�|��'�߾}9�͕�~}���R܈~�j�V���K��(^�V;���͸��/��(�s���,��at)�K��A�_�D뫍V��^)��W���ϖ���<���|��|�gE������S����8���œ��џi�F�$�7�E/O�Z���C<3)?}�[�;E�V������]��ה��%h󴋢ǛI����΢�LU<��i�?D�>=w�sZ}@xL����Oy����A~�]u��=�'c']�4-�пi��|����D"
>J���O.�惏��,\2,��#�(��CF���>�Х��LNzJ�d,M~܀>J�Dt0`A��Z~��;y���V!��V�������R�t�8Pe�x����F���ʋEG�eP�\��;�thE^�v1��g|�TdsA����s>�N��NKOa���~g��n<����D�Q���d����Rb~��?c钏��!p�h��0�B�? v~*[�Q]��ڣ=����CV��35�S�w`��#6z�D���FG�zZRQ h���פ�V|��g5�Pq�_���dy���'}�#%��x�g��X�i~�>2���$�o���2�HlG6B��XW�Hl�N=��ě�5�74�9�Ea�/G@Y��f��^�۫jf*1]�I��-E��0��]6 ��a�]:��6����$���#h��?���!�=��g5�`�SO�.N��vQ'�S�S��	��~9Z"h�V]�cQf�h�;ʱ�@�z(�0Q���zkc��S�%؋�Dܬ�G|b���9��?e}���ڈ��l/���q}x"����W��04�N+�B��	{.g*j�`�?	��;8EH]���$S�H���G�*�H�3����O�X&�o��&�.����3��6���ޤ��7��)=��2����j�A�s^�<���~��7��̒�JȐ��>(w"�����L�W�xL7&��!�p"QAn&�:�O%�}'f1�`^� ��9��[|�)N]t.1�#��FD���qd,V���T#� �Izt��_b3�r��q�<��1)X�U�� �3��,�L�wa1�"��R���f&�$扭M�����$8���p�i�8�X�X�A1���%@��L�6��A�c�~'�[���>�2��7/�l�5�zc�T������ �.�(�W_�q?O�s��3�,��o\�IQw���7;+���Z�"���f��Zm�9ԝcY�	[�	}0]���
��Z�E`���P_�S���G�Q���.�:����z�02�M=8�rz���\��,��/y�0m�%;��=ֲ��L��7���"K�+�g��ظyʉ�Q�]�B�%Zu��p�`�TpW�gZ�0HF��58�k��S�S��Ă�9�X��y*uR#T|�D���+pl~^�2�b������ R49��b�!�c-�YAA�K�?p���z��8A�iʘ��s���Dh�����Z�t��^6_��3�#���L��r$�b�.C����`���X)\)�BG�	��l�!��!�<���z���,E�d+�>�ǒ����"A��K.8�ZoW��9Z�
�}0�v�?]��Z��nsU��t8�p1�穀�b�m���B���7�S��M.]������1*,��ś�/1ߗ,��j�KR`m���d_�z�V�W!�X��Y� �ŀ�0��v0�U��$p���x��"F��]�n�"�D�G߲���L��ñ�Eΰ�:�k-�}%}K��א��M���00ԎT[�dmԬ�H�opcɔ%�������$�*�V$��Q(��*Z}^�!�1`�H��2ËL��ޅ򜢆�"��$�.����{��8�@i��5��k�}�Y�g�+`ԣq������z���
�p��9c��u���%(l�ħ��4Rx`�VI&��0�L�%��k�W�ɢ��Q!#W>6����������j����r�Z���E�7nm.¶V[?_��Ã;A��E���Gy���� �J�i���M* 6��/B�q�lpe6�n��
�B8㈤������u9��[	7;��P��Q�3�������OV�f0�Y	� ���S�zP��\|BρG:�H@����Qˎ*�q-����F�ͱ��!�%4��8A��ǆ���!H�&R���$	OB��+�J��~M(@�!�v_�j�����j�K鱠sj�oxknx���S�$R��%���C3�d#o% �8،4$W1(q�e�̤������S���,��@j�`�X�w��mD�����g�1c�L�3���
���#o�e�3��!��R����Ե]���S�[�m+��)@p��PӀq���X`\��x�J��E&�8a�.I���S��M� ��]Hj3I��֕ƽY�y�Z�蹸굈�@ �a��7����\����r�+3�z�b�!M��ßO�n�v��n.����x��F��a
��"_^W���;�1��s\�EW{���2{暮���m�l�e��ZX����T$�J�p(8�_S	f\-")��BEpn�*{��.�#^b�L6�ZBb� ]���}n��tV1�X�>�м3ٯ�K��5C���+�;��v|y�\�����*2��ީ�l�"�W ��\*��P;��=mb �*
�~,m=�ϖ�L{c�@ik6�噶1x�R �"����=���[�,��P��̧��u����Y/�%�B��
iUՋ��̡�JR���)�?��|�ͅR��4L���#��CLڭv��✢+3 Ϋ'A��N���dS���C�IC5�ϜX8|�څ/0��ZZ�&lCTcI?ֽ�C&� mED��r�"Z�R�a%Ǯ��Ds��Z���y�y�oHk��?Q������K	���/l�z���F3�U���R3>/��~��Z����N{e9^�ךk��o�9w�?5\���πi�%��%��}m�
��LC|C#]��fc_�!�[(����a�}p�����~�D��|��=ePz���}����)�+Meާ�T��n��y��B�V�� ���A*�D*�zj�%?���H5ZR"8��o���uk��AErGAȻ�uJ��Z�#]��[~�Mԉ�S� ��s� ������>�MT@�}�py��5�"�>��P�ot��Ke��z�p4B��Z��q��T��J��.G��'2��;4w��O�e��Z�C�p��*�ⅿ̒�֕�*�[ #D�Ã��OQ,k���>�)f@�k)����S�|�`Jo9Dŕx1��Q5��o�5��D-����E��u���el���G�܏B�w�k���𭒑t����T��,���d�Ơ�ў�ۭe�+��d3a@|
 ͓}����sB�E���&ْ ���&{�_崏�vq��򬍗��N��^_��U'��f����$�������+�~���{��_+��Jpy5Lp���m������֕�޻���qk��wګ�k�F�Bg��3RL�	0��]��|�Erb���C 
��j��y�ֽ`��B���r`�����0�7ӥ��	'� �'���M��C���Bֱ������=)'z�0]����P�D������q�J�@�guee�TG3�\Z�̡<�D@C,nu�Ż��S�#�A_͍d��1�=Ě%���9��Y�>)�at��=LHa-&� QA����P�%�+t���y����"��!%Ǔ��)�� �$⢗���C��G��7N;)�#�����1C��K}�?��� d�g,1V�+1��Q��8�=ǽ��Z3��@���t^c\Ƒ   ��E�u}��&�a�Գ��I#*kU��\�$��K�T3 ��������@�>����B[��sց�N/��� �Y�q+�f}s��K�˜�L�9d4�:��nl����'�W[�*;m�
�����z�Y�ח7֚�k���G���6�J.��t�h�j庒GL@��1��M�a�@nd�y��N�z�d���}��T�ހ-1�����.���%����$i�2�]0V�8i��h搽ɰ�MR�:�v��_u��#=E��1@�R��1��R�9>ώa|wW��i�u�mIP��7d<~LӶ�n��>���w�?hD�1c]�}�����[f�����N���h���wf�GԞ{2�eڝ(�#]���V*s�ޞ����c�ۜ{�ǥf�эqdʵ� Wo\}�<l��4�tj�(&�E��p��~ uJ�=}�A9�蒌�ěM�q�U�W��=�H�h ��kܧ��5�蚈��ό*�d���a?Jji?e�5�f�,�7���{+Z*�XS�h�~$�Nj��<�ª��4�dQ�id�J#	��N�m�(�t{j��0�H�e*�&�Z�c�ȶИ�*���o��G���xuqck�O����CP������q�c�-A�Y��a��QVm ��)�r7�=t��ald(w��f.�������v�!��Xd
2�B?�'�Еf����eo�i��`��o�e�m�D8�0h(�6� �\&�y��1(�N�y�(�Y*��E� c.���-�L�#��60���Ҏ�f��0)+��J;Ȳ��D�-�ˊ~q�`���:����c:=8��C\���Dǭ��?�y'�12�����ۓ���i�Zg8����a��?ѷ�2m��4��*�95ECC���1��EŘ_2�j�i*j�S�f��`�i�$F��dR�l�ݹQ�C�懜ϛmh�k۫ؒ�����{[lݏ*��|k</c�VW~r��Q��������fK�ꋒ�妞I��������m�k&3+Z��4a��2����%�w��Ox�έxM_��w3���K!s?�n�j�(9�N0v�e5'�ˉ��n34为R����V��g�+O��ub���}�:Uj5�����f�jo."�n�޾}�0w�����mV�n�ӌ;+��Vk}cmv�����qQ���x4��z��ٙ��y�R.EZ�G�G��c[����4av�# EϪ��N'n�Ћ�p�6EiVIeA��)!��[e��Fd�%��>!������>�y�� ����N��'��KJ�/�y���8��'����u��M0�$���+FB�lʿB"�95��dS�wt]�0���b�G=M�6��謉��Sq�����=��t [[�\��M��m
J^�Q���&�(.�in/�"d��bL�̩gd�`�=�]�W�"x�mO%�\˦#��7�H={�gൃ6��D:�잕<i��t���f�*����ڈ�F�,_HPßh�?b8Y D��w����Rݲ{�
r���1B�=	�1�RAq�o��k	�>s�e�}���=_�~�\����"���;������^0�T�J���nsyǽk��qLֹ����oȀ��#� ��H��J8P'8��^�:a�:�VT_k�!����ڕ^���R��Jk��v�tlyX�䧅&7R���-}�ٖzl,jbO�5��/r8�-Dnm�X��e����W����C��X_��#�-%b���HR}}�=��ǓxF&Ցg{7��ʀhe���
�MT�cRSyf5��C�#9U@���ݺ��s���'��7��?���      2   
   x���         