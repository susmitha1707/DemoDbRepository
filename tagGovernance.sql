PGDMP                      |            tagGovernance    12.19    16.2 n    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16428    tagGovernance    DATABASE     �   CREATE DATABASE "tagGovernance" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "tagGovernance";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    16696    Comment    TABLE     �   CREATE TABLE public."Comment" (
    id integer NOT NULL,
    tag_id integer,
    body text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public."Comment";
       public         heap    postgres    false    6            �            1259    16557    Consent_Category    TABLE     �   CREATE TABLE public."Consent_Category" (
    id integer NOT NULL,
    name character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 &   DROP TABLE public."Consent_Category";
       public         heap    postgres    false    6            �            1259    16720    Contract    TABLE     �  CREATE TABLE public."Contract" (
    id integer NOT NULL,
    contract_nb character varying,
    contract_owner character varying,
    erp_vendor_id character varying,
    erp_vendor_nm character varying,
    effective_date timestamp with time zone,
    expiration_date timestamp with time zone,
    contract_status_id integer,
    hierarchy_type character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public."Contract";
       public         heap    postgres    false    6            �            1259    16688    Contract_Status    TABLE     �   CREATE TABLE public."Contract_Status" (
    id integer NOT NULL,
    name character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 %   DROP TABLE public."Contract_Status";
       public         heap    postgres    false    6            �            1259    16437    Data_Classification    TABLE     �   CREATE TABLE public."Data_Classification" (
    id integer NOT NULL,
    name character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 )   DROP TABLE public."Data_Classification";
       public         heap    postgres    false    6            �            1259    16649 	   Exception    TABLE     U  CREATE TABLE public."Exception" (
    id integer NOT NULL,
    name character varying,
    description text,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    created_at timestamp with time zone,
    created_by character varying,
    updated_at timestamp with time zone,
    updated_by character varying
);
    DROP TABLE public."Exception";
       public         heap    postgres    false    6            �            1259    16599    PII_Scan_Detail    TABLE       CREATE TABLE public."PII_Scan_Detail" (
    id integer NOT NULL,
    tag_id integer,
    infotrust_tag_id integer,
    infotrust_realtime_site_id character varying,
    infotrust_realtime_site_name character varying,
    tag_name character varying,
    site_id integer,
    page_url character varying,
    pii_category character varying,
    pii_value character varying,
    found_at timestamp with time zone,
    ghosted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 %   DROP TABLE public."PII_Scan_Detail";
       public         heap    postgres    false    6            �            1259    16667    Request_Profile    TABLE     �  CREATE TABLE public."Request_Profile" (
    id integer NOT NULL,
    request_type integer,
    workfront_request_nb character varying,
    planview_request_nb character varying,
    status_id integer,
    requestor_description character varying,
    requestor_id character varying,
    requestor_organization character varying,
    tag_owner character varying,
    tag_owners_manager character varying,
    requested_tags character varying,
    requested_new_tag_name character varying,
    requested_destinations character varying,
    requested_domain character varying,
    requested_new_domain character varying,
    site_id integer,
    contract_nb character varying,
    contract_id integer,
    contract_owner character varying,
    contract_effective_date timestamp with time zone,
    contract_termination_date timestamp with time zone,
    consent_category character varying,
    consent_category_id integer,
    data_classification character varying,
    data_classification_id integer,
    campaign_end timestamp with time zone,
    channel character varying,
    description text,
    submitted_at timestamp with time zone,
    closed_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 %   DROP TABLE public."Request_Profile";
       public         heap    postgres    false    6            �            1259    16675    Request_Type    TABLE     �   CREATE TABLE public."Request_Type" (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 "   DROP TABLE public."Request_Type";
       public         heap    postgres    false    6            �            1259    16508    Roles_Profile    TABLE     �   CREATE TABLE public."Roles_Profile" (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 #   DROP TABLE public."Roles_Profile";
       public         heap    postgres    false    6            �            1259    16570    Scanned_Domain    TABLE     L  CREATE TABLE public."Scanned_Domain" (
    id integer NOT NULL,
    infotrust_governance_site_id integer,
    infotrust_realtime_site_id character varying,
    domain character varying,
    site_id integer,
    ghosted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 $   DROP TABLE public."Scanned_Domain";
       public         heap    postgres    false    6            �            1259    16586    Site    TABLE     �   CREATE TABLE public."Site" (
    id integer NOT NULL,
    domain character varying,
    infotrust_site_id integer,
    non_nw_domain boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    is_in_scan_list boolean
);
    DROP TABLE public."Site";
       public         heap    postgres    false    6            �            1259    16498    TMS_List    TABLE     �   CREATE TABLE public."TMS_List" (
    id integer NOT NULL,
    contract_id integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public."TMS_List";
       public         heap    postgres    false    6            �            1259    16704    Tag    TABLE     �  CREATE TABLE public."Tag" (
    id integer NOT NULL,
    infotrust_governance_site_id integer,
    infotrust_realtime_site_id character varying,
    name character varying,
    status_id integer,
    vendor character varying,
    consent_category_id integer,
    category character varying,
    sub_category character varying,
    data_classification_id integer,
    contract_id integer,
    last_seen_date timestamp with time zone,
    expiration_date timestamp with time zone,
    suspended_at timestamp with time zone,
    decommisioned_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public."Tag";
       public         heap    postgres    false    6            �            1259    16470    Tag_Destinations    TABLE     �   CREATE TABLE public."Tag_Destinations" (
    id integer NOT NULL,
    source_tag_id integer,
    destination_tag_id integer,
    is_approved boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 &   DROP TABLE public."Tag_Destinations";
       public         heap    postgres    false    6            �            1259    16662    Tag_Request_Profile    TABLE     t   CREATE TABLE public."Tag_Request_Profile" (
    request_profile_id integer NOT NULL,
    tag_id integer NOT NULL
);
 )   DROP TABLE public."Tag_Request_Profile";
       public         heap    postgres    false    6            �            1259    16503 	   Tag_Roles    TABLE     �   CREATE TABLE public."Tag_Roles" (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public."Tag_Roles";
       public         heap    postgres    false    6            �            1259    16513    Tag_Scan_Detail    TABLE        CREATE TABLE public."Tag_Scan_Detail" (
    id integer NOT NULL,
    tag_id integer,
    infotrust_tag_id integer,
    infotrust_governance_site_id integer,
    infotrust_realtime_site_id character varying,
    name character varying,
    vendor character varying,
    category character varying,
    sub_category character varying,
    site_id integer,
    domain character varying,
    quick_initiators character varying,
    loaded_by_piggybacking boolean,
    allowing_piggybacking boolean,
    piggyback_list character varying,
    tag_hierarchy character varying,
    tag_id_hierarchy character varying,
    has_pii_violation boolean,
    share_link character varying,
    ghosted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 %   DROP TABLE public."Tag_Scan_Detail";
       public         heap    postgres    false    6            �            1259    16657    Tag_Site    TABLE     �   CREATE TABLE public."Tag_Site" (
    site_id integer NOT NULL,
    tag_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public."Tag_Site";
       public         heap    postgres    false    6            �            1259    16429 
   Tag_Status    TABLE     �   CREATE TABLE public."Tag_Status" (
    id integer NOT NULL,
    name character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
     DROP TABLE public."Tag_Status";
       public         heap    postgres    false    6            �            1259    16624 	   Violation    TABLE     @  CREATE TABLE public."Violation" (
    id integer NOT NULL,
    tag_id integer,
    violation_type_id integer,
    resolution_date timestamp with time zone,
    resolution_description text,
    last_detected_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public."Violation";
       public         heap    postgres    false    6            �            1259    16641    Violation_Status    TABLE     �   CREATE TABLE public."Violation_Status" (
    id integer NOT NULL,
    name character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 &   DROP TABLE public."Violation_Status";
       public         heap    postgres    false    6            �            1259    16633    Violation_Type    TABLE     �   CREATE TABLE public."Violation_Type" (
    id integer NOT NULL,
    name character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 $   DROP TABLE public."Violation_Type";
       public         heap    postgres    false    6            �          0    16696    Comment 
   TABLE DATA           M   COPY public."Comment" (id, tag_id, body, created_at, updated_at) FROM stdin;
    public          postgres    false    222   R�       �          0    16557    Consent_Category 
   TABLE DATA           N   COPY public."Consent_Category" (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    209   o�       �          0    16720    Contract 
   TABLE DATA           �   COPY public."Contract" (id, contract_nb, contract_owner, erp_vendor_id, erp_vendor_nm, effective_date, expiration_date, contract_status_id, hierarchy_type, created_at, updated_at) FROM stdin;
    public          postgres    false    224   ��       �          0    16688    Contract_Status 
   TABLE DATA           M   COPY public."Contract_Status" (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    221   ��       �          0    16437    Data_Classification 
   TABLE DATA           Q   COPY public."Data_Classification" (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    203   Ơ       �          0    16649 	   Exception 
   TABLE DATA           �   COPY public."Exception" (id, name, description, start_date, end_date, created_at, created_by, updated_at, updated_by) FROM stdin;
    public          postgres    false    216   �       �          0    16599    PII_Scan_Detail 
   TABLE DATA           �   COPY public."PII_Scan_Detail" (id, tag_id, infotrust_tag_id, infotrust_realtime_site_id, infotrust_realtime_site_name, tag_name, site_id, page_url, pii_category, pii_value, found_at, ghosted_at, created_at, updated_at) FROM stdin;
    public          postgres    false    212    �       �          0    16667    Request_Profile 
   TABLE DATA           G  COPY public."Request_Profile" (id, request_type, workfront_request_nb, planview_request_nb, status_id, requestor_description, requestor_id, requestor_organization, tag_owner, tag_owners_manager, requested_tags, requested_new_tag_name, requested_destinations, requested_domain, requested_new_domain, site_id, contract_nb, contract_id, contract_owner, contract_effective_date, contract_termination_date, consent_category, consent_category_id, data_classification, data_classification_id, campaign_end, channel, description, submitted_at, closed_at, created_at, updated_at) FROM stdin;
    public          postgres    false    219   �       �          0    16675    Request_Type 
   TABLE DATA           D   COPY public."Request_Type" (id, created_at, updated_at) FROM stdin;
    public          postgres    false    220   :�       �          0    16508    Roles_Profile 
   TABLE DATA           E   COPY public."Roles_Profile" (id, created_at, updated_at) FROM stdin;
    public          postgres    false    207   W�       �          0    16570    Scanned_Domain 
   TABLE DATA           �   COPY public."Scanned_Domain" (id, infotrust_governance_site_id, infotrust_realtime_site_id, domain, site_id, ghosted_at, created_at, updated_at) FROM stdin;
    public          postgres    false    210   t�       �          0    16586    Site 
   TABLE DATA           w   COPY public."Site" (id, domain, infotrust_site_id, non_nw_domain, created_at, updated_at, is_in_scan_list) FROM stdin;
    public          postgres    false    211   ��       �          0    16498    TMS_List 
   TABLE DATA           M   COPY public."TMS_List" (id, contract_id, created_at, updated_at) FROM stdin;
    public          postgres    false    205   ��       �          0    16704    Tag 
   TABLE DATA           !  COPY public."Tag" (id, infotrust_governance_site_id, infotrust_realtime_site_id, name, status_id, vendor, consent_category_id, category, sub_category, data_classification_id, contract_id, last_seen_date, expiration_date, suspended_at, decommisioned_at, created_at, updated_at) FROM stdin;
    public          postgres    false    223   ˡ       �          0    16470    Tag_Destinations 
   TABLE DATA           x   COPY public."Tag_Destinations" (id, source_tag_id, destination_tag_id, is_approved, created_at, updated_at) FROM stdin;
    public          postgres    false    204   �       �          0    16662    Tag_Request_Profile 
   TABLE DATA           K   COPY public."Tag_Request_Profile" (request_profile_id, tag_id) FROM stdin;
    public          postgres    false    218   �       �          0    16503 	   Tag_Roles 
   TABLE DATA           A   COPY public."Tag_Roles" (id, created_at, updated_at) FROM stdin;
    public          postgres    false    206   "�       �          0    16513    Tag_Scan_Detail 
   TABLE DATA           o  COPY public."Tag_Scan_Detail" (id, tag_id, infotrust_tag_id, infotrust_governance_site_id, infotrust_realtime_site_id, name, vendor, category, sub_category, site_id, domain, quick_initiators, loaded_by_piggybacking, allowing_piggybacking, piggyback_list, tag_hierarchy, tag_id_hierarchy, has_pii_violation, share_link, ghosted_at, created_at, updated_at) FROM stdin;
    public          postgres    false    208   ?�       �          0    16657    Tag_Site 
   TABLE DATA           M   COPY public."Tag_Site" (site_id, tag_id, created_at, updated_at) FROM stdin;
    public          postgres    false    217   \�       �          0    16429 
   Tag_Status 
   TABLE DATA           H   COPY public."Tag_Status" (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    202   y�       �          0    16624 	   Violation 
   TABLE DATA           �   COPY public."Violation" (id, tag_id, violation_type_id, resolution_date, resolution_description, last_detected_at, created_at, updated_at) FROM stdin;
    public          postgres    false    213   ��       �          0    16641    Violation_Status 
   TABLE DATA           N   COPY public."Violation_Status" (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    215   ��       �          0    16633    Violation_Type 
   TABLE DATA           L   COPY public."Violation_Type" (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    214   Т                  2606    16703    Comment Comment_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT "Comment_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Comment" DROP CONSTRAINT "Comment_pkey";
       public            postgres    false    222            �
           2606    16564 &   Consent_Category Consent_Category_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Consent_Category"
    ADD CONSTRAINT "Consent_Category_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Consent_Category" DROP CONSTRAINT "Consent_Category_pkey";
       public            postgres    false    209                       2606    16695 $   Contract_Status Contract_Status_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Contract_Status"
    ADD CONSTRAINT "Contract_Status_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Contract_Status" DROP CONSTRAINT "Contract_Status_pkey";
       public            postgres    false    221                       2606    16729 !   Contract Contract_contract_nb_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."Contract"
    ADD CONSTRAINT "Contract_contract_nb_key" UNIQUE (contract_nb);
 O   ALTER TABLE ONLY public."Contract" DROP CONSTRAINT "Contract_contract_nb_key";
       public            postgres    false    224                       2606    16727    Contract Contract_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Contract"
    ADD CONSTRAINT "Contract_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Contract" DROP CONSTRAINT "Contract_pkey";
       public            postgres    false    224            �
           2606    16444 ,   Data_Classification Data_Classification_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Data_Classification"
    ADD CONSTRAINT "Data_Classification_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Data_Classification" DROP CONSTRAINT "Data_Classification_pkey";
       public            postgres    false    203                       2606    16656    Exception Exception_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Exception"
    ADD CONSTRAINT "Exception_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Exception" DROP CONSTRAINT "Exception_pkey";
       public            postgres    false    216            �
           2606    16606 $   PII_Scan_Detail PII_Scan_Detail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."PII_Scan_Detail"
    ADD CONSTRAINT "PII_Scan_Detail_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."PII_Scan_Detail" DROP CONSTRAINT "PII_Scan_Detail_pkey";
       public            postgres    false    212            
           2606    16674 $   Request_Profile Request_Profile_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Request_Profile"
    ADD CONSTRAINT "Request_Profile_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Request_Profile" DROP CONSTRAINT "Request_Profile_pkey";
       public            postgres    false    219                       2606    16679    Request_Type Request_Type_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Request_Type"
    ADD CONSTRAINT "Request_Type_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Request_Type" DROP CONSTRAINT "Request_Type_pkey";
       public            postgres    false    220            �
           2606    16512     Roles_Profile Roles_Profile_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Roles_Profile"
    ADD CONSTRAINT "Roles_Profile_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Roles_Profile" DROP CONSTRAINT "Roles_Profile_pkey";
       public            postgres    false    207            �
           2606    16577 "   Scanned_Domain Scanned_Domain_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Scanned_Domain"
    ADD CONSTRAINT "Scanned_Domain_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Scanned_Domain" DROP CONSTRAINT "Scanned_Domain_pkey";
       public            postgres    false    210            �
           2606    16719    Site Site_domain_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Site_domain_key" UNIQUE (domain);
 B   ALTER TABLE ONLY public."Site" DROP CONSTRAINT "Site_domain_key";
       public            postgres    false    211            �
           2606    16623    Site Site_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Site"
    ADD CONSTRAINT "Site_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Site" DROP CONSTRAINT "Site_pkey";
       public            postgres    false    211            �
           2606    16502    TMS_List TMS_List_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."TMS_List"
    ADD CONSTRAINT "TMS_List_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."TMS_List" DROP CONSTRAINT "TMS_List_pkey";
       public            postgres    false    205            �
           2606    16474 &   Tag_Destinations Tag_Destinations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Tag_Destinations"
    ADD CONSTRAINT "Tag_Destinations_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Tag_Destinations" DROP CONSTRAINT "Tag_Destinations_pkey";
       public            postgres    false    204                       2606    16884 ,   Tag_Request_Profile Tag_Request_Profile_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Request_Profile"
    ADD CONSTRAINT "Tag_Request_Profile_pkey" PRIMARY KEY (request_profile_id, tag_id);
 Z   ALTER TABLE ONLY public."Tag_Request_Profile" DROP CONSTRAINT "Tag_Request_Profile_pkey";
       public            postgres    false    218    218            �
           2606    16507    Tag_Roles Tag_Roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Tag_Roles"
    ADD CONSTRAINT "Tag_Roles_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Tag_Roles" DROP CONSTRAINT "Tag_Roles_pkey";
       public            postgres    false    206            �
           2606    16520 $   Tag_Scan_Detail Tag_Scan_Detail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Tag_Scan_Detail"
    ADD CONSTRAINT "Tag_Scan_Detail_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Tag_Scan_Detail" DROP CONSTRAINT "Tag_Scan_Detail_pkey";
       public            postgres    false    208                       2606    16882    Tag_Site Tag_Site_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Tag_Site"
    ADD CONSTRAINT "Tag_Site_pkey" PRIMARY KEY (site_id, tag_id);
 D   ALTER TABLE ONLY public."Tag_Site" DROP CONSTRAINT "Tag_Site_pkey";
       public            postgres    false    217    217            �
           2606    16436    Tag_Status Tag_Status_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Tag_Status"
    ADD CONSTRAINT "Tag_Status_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Tag_Status" DROP CONSTRAINT "Tag_Status_pkey";
       public            postgres    false    202                       2606    16713 (   Tag Tag_infotrust_governance_site_id_key 
   CONSTRAINT        ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_infotrust_governance_site_id_key" UNIQUE (infotrust_governance_site_id);
 V   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT "Tag_infotrust_governance_site_id_key";
       public            postgres    false    223                       2606    16715 &   Tag Tag_infotrust_realtime_site_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_infotrust_realtime_site_id_key" UNIQUE (infotrust_realtime_site_id);
 T   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT "Tag_infotrust_realtime_site_id_key";
       public            postgres    false    223                       2606    16717    Tag Tag_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_name_key" UNIQUE (name);
 >   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT "Tag_name_key";
       public            postgres    false    223                       2606    16711    Tag Tag_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT "Tag_pkey";
       public            postgres    false    223                       2606    16648 &   Violation_Status Violation_Status_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Violation_Status"
    ADD CONSTRAINT "Violation_Status_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Violation_Status" DROP CONSTRAINT "Violation_Status_pkey";
       public            postgres    false    215                        2606    16640 "   Violation_Type Violation_Type_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Violation_Type"
    ADD CONSTRAINT "Violation_Type_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Violation_Type" DROP CONSTRAINT "Violation_Type_pkey";
       public            postgres    false    214            �
           2606    16631    Violation Violation_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Violation_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "Violation_pkey";
       public            postgres    false    213            1           2606    16831 1   Request_Profile Request_Profile_request_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Request_Profile"
    ADD CONSTRAINT "Request_Profile_request_type_fkey" FOREIGN KEY (request_type) REFERENCES public."Request_Type"(id) NOT VALID;
 _   ALTER TABLE ONLY public."Request_Profile" DROP CONSTRAINT "Request_Profile_request_type_fkey";
       public          postgres    false    2828    219    220            -           2606    16890    Tag_Site Tag_Site_site_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Site"
    ADD CONSTRAINT "Tag_Site_site_id_fkey" FOREIGN KEY (site_id) REFERENCES public."Site"(id) NOT VALID;
 L   ALTER TABLE ONLY public."Tag_Site" DROP CONSTRAINT "Tag_Site_site_id_fkey";
       public          postgres    false    217    211    2810            .           2606    16795    Tag_Site Tag_Site_tag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Site"
    ADD CONSTRAINT "Tag_Site_tag_id_fkey" FOREIGN KEY (tag_id) REFERENCES public."Tag"(id) NOT VALID;
 K   ALTER TABLE ONLY public."Tag_Site" DROP CONSTRAINT "Tag_Site_tag_id_fkey";
       public          postgres    false    217    223    2840            6           2606    16750    Tag consent_category_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT consent_category_id_fk FOREIGN KEY (consent_category_id) REFERENCES public."Consent_Category"(id) NOT VALID;
 F   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT consent_category_id_fk;
       public          postgres    false    223    209    2804            7           2606    16806    Tag contract_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT contract_id_fk FOREIGN KEY (contract_id) REFERENCES public."Contract"(id) NOT VALID;
 >   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT contract_id_fk;
       public          postgres    false    224    2844    223            2           2606    16821    Request_Profile contract_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Request_Profile"
    ADD CONSTRAINT contract_id_fk FOREIGN KEY (contract_id) REFERENCES public."Contract"(id) NOT VALID;
 J   ALTER TABLE ONLY public."Request_Profile" DROP CONSTRAINT contract_id_fk;
       public          postgres    false    2844    219    224            3           2606    16826    Request_Profile contract_nb_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Request_Profile"
    ADD CONSTRAINT contract_nb_fk FOREIGN KEY (contract_nb) REFERENCES public."Contract"(contract_nb) NOT VALID;
 J   ALTER TABLE ONLY public."Request_Profile" DROP CONSTRAINT contract_nb_fk;
       public          postgres    false    219    224    2842            :           2606    16816    Contract contract_status_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contract"
    ADD CONSTRAINT contract_status_id_fk FOREIGN KEY (contract_status_id) REFERENCES public."Contract_Status"(id) NOT VALID;
 J   ALTER TABLE ONLY public."Contract" DROP CONSTRAINT contract_status_id_fk;
       public          postgres    false    2830    224    221            8           2606    16735    Tag data_classification_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT data_classification_id_fk FOREIGN KEY (data_classification_id) REFERENCES public."Data_Classification"(id) NOT VALID;
 I   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT data_classification_id_fk;
       public          postgres    false    223    203    2792                       2606    16745 #   Tag_Destinations destination_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Destinations"
    ADD CONSTRAINT destination_tag_id FOREIGN KEY (destination_tag_id) REFERENCES public."Tag"(id) NOT VALID;
 O   ALTER TABLE ONLY public."Tag_Destinations" DROP CONSTRAINT destination_tag_id;
       public          postgres    false    204    223    2840            %           2606    16846    Scanned_Domain domain_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Scanned_Domain"
    ADD CONSTRAINT domain_fk FOREIGN KEY (domain) REFERENCES public."Site"(domain) NOT VALID;
 D   ALTER TABLE ONLY public."Scanned_Domain" DROP CONSTRAINT domain_fk;
       public          postgres    false    211    210    2808                       2606    16861    Tag_Scan_Detail domain_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Scan_Detail"
    ADD CONSTRAINT domain_fk FOREIGN KEY (domain) REFERENCES public."Site"(domain) NOT VALID;
 E   ALTER TABLE ONLY public."Tag_Scan_Detail" DROP CONSTRAINT domain_fk;
       public          postgres    false    2808    208    211                        2606    16760 /   Tag_Scan_Detail infotrust_governance_site_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Scan_Detail"
    ADD CONSTRAINT infotrust_governance_site_id_fk FOREIGN KEY (infotrust_governance_site_id) REFERENCES public."Tag"(infotrust_governance_site_id) NOT VALID;
 [   ALTER TABLE ONLY public."Tag_Scan_Detail" DROP CONSTRAINT infotrust_governance_site_id_fk;
       public          postgres    false    208    223    2834            !           2606    16765 -   Tag_Scan_Detail infotrust_realtime_site_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Scan_Detail"
    ADD CONSTRAINT infotrust_realtime_site_id_fk FOREIGN KEY (infotrust_realtime_site_id) REFERENCES public."Tag"(infotrust_realtime_site_id) NOT VALID;
 Y   ALTER TABLE ONLY public."Tag_Scan_Detail" DROP CONSTRAINT infotrust_realtime_site_id_fk;
       public          postgres    false    223    2836    208            '           2606    16785 -   PII_Scan_Detail infotrust_realtime_site_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PII_Scan_Detail"
    ADD CONSTRAINT infotrust_realtime_site_id_fk FOREIGN KEY (infotrust_realtime_site_id) REFERENCES public."Tag"(infotrust_realtime_site_id) NOT VALID;
 Y   ALTER TABLE ONLY public."PII_Scan_Detail" DROP CONSTRAINT infotrust_realtime_site_id_fk;
       public          postgres    false    223    2836    212            "           2606    16871 #   Tag_Scan_Detail infotrust_tag_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Scan_Detail"
    ADD CONSTRAINT infotrust_tag_id_fk FOREIGN KEY (infotrust_tag_id) REFERENCES public."Tag"(id) NOT VALID;
 O   ALTER TABLE ONLY public."Tag_Scan_Detail" DROP CONSTRAINT infotrust_tag_id_fk;
       public          postgres    false    223    2840    208            (           2606    16876 #   PII_Scan_Detail infotrust_tag_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PII_Scan_Detail"
    ADD CONSTRAINT infotrust_tag_id_fk FOREIGN KEY (infotrust_tag_id) REFERENCES public."Tag"(id) NOT VALID;
 O   ALTER TABLE ONLY public."PII_Scan_Detail" DROP CONSTRAINT infotrust_tag_id_fk;
       public          postgres    false    212    2840    223            /           2606    16895 )   Tag_Request_Profile request_profile_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Request_Profile"
    ADD CONSTRAINT request_profile_id_fk FOREIGN KEY (request_profile_id) REFERENCES public."Request_Profile"(id) NOT VALID;
 U   ALTER TABLE ONLY public."Tag_Request_Profile" DROP CONSTRAINT request_profile_id_fk;
       public          postgres    false    218    2826    219            4           2606    16836    Request_Profile site_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Request_Profile"
    ADD CONSTRAINT site_id_fk FOREIGN KEY (site_id) REFERENCES public."Site"(id) NOT VALID;
 F   ALTER TABLE ONLY public."Request_Profile" DROP CONSTRAINT site_id_fk;
       public          postgres    false    211    2810    219            &           2606    16841    Scanned_Domain site_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Scanned_Domain"
    ADD CONSTRAINT site_id_fk FOREIGN KEY (site_id) REFERENCES public."Site"(id) NOT VALID;
 E   ALTER TABLE ONLY public."Scanned_Domain" DROP CONSTRAINT site_id_fk;
       public          postgres    false    211    210    2810            )           2606    16851    PII_Scan_Detail site_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PII_Scan_Detail"
    ADD CONSTRAINT site_id_fk FOREIGN KEY (site_id) REFERENCES public."Site"(id) NOT VALID;
 F   ALTER TABLE ONLY public."PII_Scan_Detail" DROP CONSTRAINT site_id_fk;
       public          postgres    false    2810    211    212            #           2606    16856    Tag_Scan_Detail site_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Scan_Detail"
    ADD CONSTRAINT site_id_fk FOREIGN KEY (site_id) REFERENCES public."Site"(id) NOT VALID;
 F   ALTER TABLE ONLY public."Tag_Scan_Detail" DROP CONSTRAINT site_id_fk;
       public          postgres    false    2810    208    211                       2606    16740 !   Tag_Destinations source_tag_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Destinations"
    ADD CONSTRAINT source_tag_id_fk FOREIGN KEY (source_tag_id) REFERENCES public."Tag"(id) NOT VALID;
 M   ALTER TABLE ONLY public."Tag_Destinations" DROP CONSTRAINT source_tag_id_fk;
       public          postgres    false    204    223    2840            9           2606    16730    Tag status_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT status_id_fk FOREIGN KEY (status_id) REFERENCES public."Tag_Status"(id) NOT VALID;
 <   ALTER TABLE ONLY public."Tag" DROP CONSTRAINT status_id_fk;
       public          postgres    false    223    202    2790            $           2606    16755    Tag_Scan_Detail tag_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Scan_Detail"
    ADD CONSTRAINT tag_id_fk FOREIGN KEY (tag_id) REFERENCES public."Tag"(id) NOT VALID;
 E   ALTER TABLE ONLY public."Tag_Scan_Detail" DROP CONSTRAINT tag_id_fk;
       public          postgres    false    2840    208    223            *           2606    16780    PII_Scan_Detail tag_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PII_Scan_Detail"
    ADD CONSTRAINT tag_id_fk FOREIGN KEY (tag_id) REFERENCES public."Tag"(id) NOT VALID;
 E   ALTER TABLE ONLY public."PII_Scan_Detail" DROP CONSTRAINT tag_id_fk;
       public          postgres    false    212    2840    223            0           2606    16801    Tag_Request_Profile tag_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tag_Request_Profile"
    ADD CONSTRAINT tag_id_fk FOREIGN KEY (tag_id) REFERENCES public."Tag"(id) NOT VALID;
 I   ALTER TABLE ONLY public."Tag_Request_Profile" DROP CONSTRAINT tag_id_fk;
       public          postgres    false    2840    218    223            5           2606    16811    Comment tag_id_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public."Comment"
    ADD CONSTRAINT tag_id_fk FOREIGN KEY (tag_id) REFERENCES public."Tag"(id) NOT VALID;
 =   ALTER TABLE ONLY public."Comment" DROP CONSTRAINT tag_id_fk;
       public          postgres    false    2840    222    223            ,           2606    16885    Violation tag_id_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT tag_id_fk FOREIGN KEY (tag_id) REFERENCES public."Tag"(id) NOT VALID;
 ?   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT tag_id_fk;
       public          postgres    false    213    2840    223            +           2606    16790    PII_Scan_Detail tag_name_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PII_Scan_Detail"
    ADD CONSTRAINT tag_name_fk FOREIGN KEY (tag_name) REFERENCES public."Tag"(name) NOT VALID;
 G   ALTER TABLE ONLY public."PII_Scan_Detail" DROP CONSTRAINT tag_name_fk;
       public          postgres    false    2838    223    212            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     