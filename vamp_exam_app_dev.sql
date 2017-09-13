--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.8
-- Dumped by pg_dump version 9.5.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp without time zone
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Name: taggables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE taggables (
    id uuid NOT NULL,
    user_id uuid,
    tag_id uuid,
    inserted_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE taggables OWNER TO postgres;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tags (
    id uuid NOT NULL,
    name character varying(255),
    short_name character varying(255),
    type character varying(255),
    inserted_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tags OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id uuid NOT NULL,
    full_name character varying(255),
    country character varying(255),
    inserted_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE users OWNER TO postgres;

--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version, inserted_at) FROM stdin;
20170912075342	2017-09-13 09:26:20.769279
20170912105707	2017-09-13 09:26:20.791397
20170912110136	2017-09-13 09:26:20.812533
\.


--
-- Data for Name: taggables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY taggables (id, user_id, tag_id, inserted_at, updated_at) FROM stdin;
7f19dcc4-d6b5-4b37-8c74-2a868a1e7bb5	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	526f45de-8c65-48db-bdbb-92976893d9b0	2017-03-28 05:35:04	2017-03-28 05:35:04
d95dc448-a448-4a17-9d20-012a3f1f73ba	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	799fcaea-8eac-4f94-a4a0-94d774b7dd83	2017-03-28 05:35:04	2017-03-28 05:35:04
5328a867-eefb-4532-af2d-57bbdb7f7b0c	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	eb238b61-fa9f-48c9-a634-ab5c7cd3e6ee	2017-03-28 05:35:04	2017-03-28 05:35:04
a9be71ee-22ac-4da1-b39e-2e7f410c2d51	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-03-28 05:35:04	2017-03-28 05:35:04
94502aca-2f1b-46c8-8e79-4424f387a3a1	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	3f00f5b8-8047-481a-b459-73a94147df48	2017-03-28 05:35:04	2017-03-28 05:35:04
2cc9a2a8-e31d-41b9-90b3-2148140c5d2c	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	e3fae870-81b8-486e-a4af-3cb8ea831491	2017-03-28 05:35:04	2017-03-28 05:35:04
465bd2a7-d96b-4407-815d-7465e69b9560	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	9d875b41-46d4-47f4-8b6e-b945219d30b5	2017-03-28 05:35:04	2017-03-28 05:35:04
5b30298c-4c7a-4371-83a4-669d3fa005b8	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	7aed98f2-a3b6-48cf-a3b0-10fbd09ed5ae	2017-03-28 05:35:04	2017-03-28 05:35:04
f3cb80f7-3f8b-49ec-b8ee-4fb871bf13ff	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	a5c3a87c-7951-4736-b850-1c67892f9dbc	2017-03-28 05:35:04	2017-03-28 05:35:04
2569a3a6-6830-45fc-9de7-642d58472cd2	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	d9302871-66cf-4e39-8e85-3111dc5c6b74	2017-03-28 05:35:04	2017-03-28 05:35:04
25f30a35-463a-4566-a43c-b32d17b33f79	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	dda25cf1-107a-4ab3-8e58-b4fd44e6633d	2017-03-28 05:35:04	2017-03-28 05:35:04
6446c1f3-1168-4cc5-8a0b-a90aa8022b2d	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	a9278a89-496c-4c63-8877-6dcf2783ffad	2017-03-28 05:35:04	2017-03-28 05:35:04
77e0971e-cefc-480d-a3dc-fea701b4807d	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	d91027e0-0821-4a9a-bdfc-1241ca891e26	2017-03-28 05:35:04	2017-03-28 05:35:04
5dba01df-c0d6-4a0a-973b-1964d5e59c07	b2088d7b-1f27-41fe-b680-b026cd04d51e	dda25cf1-107a-4ab3-8e58-b4fd44e6633d	2017-03-28 04:54:19	2017-03-28 04:54:19
669afb6a-78a7-40e2-86c1-1da889fd4748	b2088d7b-1f27-41fe-b680-b026cd04d51e	3f00f5b8-8047-481a-b459-73a94147df48	2017-03-28 04:54:19	2017-03-28 04:54:19
dd53db4f-e3fb-4bab-86d7-c60ccf67443c	b2088d7b-1f27-41fe-b680-b026cd04d51e	a5c3a87c-7951-4736-b850-1c67892f9dbc	2017-03-28 04:54:19	2017-03-28 04:54:19
3ea19856-bcb5-42b4-9e60-e3fc01735638	b2088d7b-1f27-41fe-b680-b026cd04d51e	d9302871-66cf-4e39-8e85-3111dc5c6b74	2017-03-28 04:54:19	2017-03-28 04:54:19
e236b326-e957-4a70-8d70-d2f95047996b	b2088d7b-1f27-41fe-b680-b026cd04d51e	e3fae870-81b8-486e-a4af-3cb8ea831491	2017-03-28 04:54:19	2017-03-28 04:54:19
3a0b17be-6434-4031-8ec5-94471345c71a	b2088d7b-1f27-41fe-b680-b026cd04d51e	52cede06-6571-45f5-88ac-1c9f85ca646e	2017-03-28 04:54:19	2017-03-28 04:54:19
ed7d3c50-d346-4163-8074-480f577c1883	b2088d7b-1f27-41fe-b680-b026cd04d51e	d91027e0-0821-4a9a-bdfc-1241ca891e26	2017-03-28 04:54:19	2017-03-28 04:54:19
689d375c-f26b-401c-bdb7-1bf9083058a8	b2088d7b-1f27-41fe-b680-b026cd04d51e	a9278a89-496c-4c63-8877-6dcf2783ffad	2017-03-28 04:54:19	2017-03-28 04:54:19
448c8f0c-f736-45b1-bad9-994254ee821b	5641a7f1-67cc-4931-9a5f-978852ea34af	d9302871-66cf-4e39-8e85-3111dc5c6b74	2017-03-28 05:05:04	2017-03-28 05:05:04
2152c52b-4ec6-4374-a250-3692279aa9b7	5641a7f1-67cc-4931-9a5f-978852ea34af	3f00f5b8-8047-481a-b459-73a94147df48	2017-03-28 05:05:04	2017-03-28 05:05:04
7c886e11-13e0-4c43-a298-87cd26ac4683	5641a7f1-67cc-4931-9a5f-978852ea34af	7aed98f2-a3b6-48cf-a3b0-10fbd09ed5ae	2017-03-28 05:05:04	2017-03-28 05:05:04
cac5d7c9-7ff5-4f55-b659-fc0272ddf766	5641a7f1-67cc-4931-9a5f-978852ea34af	52cede06-6571-45f5-88ac-1c9f85ca646e	2017-03-28 05:05:04	2017-03-28 05:05:04
0c891db9-0bc5-4571-9e88-e9a725403081	5641a7f1-67cc-4931-9a5f-978852ea34af	0e9d7e32-e576-42d4-a303-490484eb6140	2017-03-28 05:05:04	2017-03-28 05:05:04
da1fa7e5-39fb-47f1-8348-39bb7e8426ae	12b05ff4-691b-4d69-9108-0cedf3f37fa4	c1043589-f23b-450f-b570-ed2d69b29e93	2017-04-05 00:23:52	2017-04-05 00:23:52
b35ce5fa-ef57-4810-abbb-eb54ed4486a4	12b05ff4-691b-4d69-9108-0cedf3f37fa4	526f45de-8c65-48db-bdbb-92976893d9b0	2017-04-05 00:23:52	2017-04-05 00:23:52
cfbe95ca-0528-47bb-b10a-ada6a6067045	12b05ff4-691b-4d69-9108-0cedf3f37fa4	18d4e18f-a4e4-4bc2-a955-ae98c4403373	2017-04-05 00:23:52	2017-04-05 00:23:52
30d61d32-8d89-4dcb-9b1f-67c5cd1da17d	12b05ff4-691b-4d69-9108-0cedf3f37fa4	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-04-05 00:23:52	2017-04-05 00:23:52
311d2002-cebe-4e37-8f72-befdf982d93e	12b05ff4-691b-4d69-9108-0cedf3f37fa4	0e9d7e32-e576-42d4-a303-490484eb6140	2017-04-05 00:23:52	2017-04-05 00:23:52
922a20f8-91b6-43ab-8e69-2c16f3fe30cc	5641a7f1-67cc-4931-9a5f-978852ea34af	799fcaea-8eac-4f94-a4a0-94d774b7dd83	2017-07-18 02:45:17	2017-07-18 02:45:17
041341a2-fd46-4ac5-b8f7-a7065ff4bd4d	5641a7f1-67cc-4931-9a5f-978852ea34af	eb238b61-fa9f-48c9-a634-ab5c7cd3e6ee	2017-07-18 02:45:17	2017-07-18 02:45:17
f27cd9f7-0809-4f56-904d-620509e10553	5641a7f1-67cc-4931-9a5f-978852ea34af	c1043589-f23b-450f-b570-ed2d69b29e93	2017-07-18 02:45:17	2017-07-18 02:45:17
bf4fb350-22b2-460f-b53f-5359927bdc97	5641a7f1-67cc-4931-9a5f-978852ea34af	b55d79d9-e021-4207-b4ba-2977504de18b	2017-07-18 02:45:17	2017-07-18 02:45:17
d4956d02-9af8-493d-93fb-d74fdb082689	5641a7f1-67cc-4931-9a5f-978852ea34af	067e8a70-b579-4a89-8ad7-ab6400299d47	2017-07-18 02:45:17	2017-07-18 02:45:17
93019e32-25d1-4b41-9202-afd5c834f88b	5641a7f1-67cc-4931-9a5f-978852ea34af	35ec2c31-4be1-49b5-99ea-6e2519d8e3b8	2017-07-18 02:45:17	2017-07-18 02:45:17
20e037a9-bbcf-4737-a970-1115a372015c	5641a7f1-67cc-4931-9a5f-978852ea34af	526f45de-8c65-48db-bdbb-92976893d9b0	2017-07-18 02:45:17	2017-07-18 02:45:17
d46b133e-1cc5-4725-b0e6-32503d807f76	5641a7f1-67cc-4931-9a5f-978852ea34af	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-07-18 02:45:17	2017-07-18 02:45:17
64c4bb40-a13c-4582-bd67-c90fc61180ba	5641a7f1-67cc-4931-9a5f-978852ea34af	f7578d96-8e75-48e2-bb7d-71cd28862f21	2017-07-18 02:45:17	2017-07-18 02:45:17
48362656-a503-4166-9c2e-025b276aef21	5641a7f1-67cc-4931-9a5f-978852ea34af	d946afad-0ecb-4e9a-a150-0aa83ab7bb6f	2017-07-18 02:45:17	2017-07-18 02:45:17
5ce8c1d9-ab54-4072-9c0f-03d21958b95e	5641a7f1-67cc-4931-9a5f-978852ea34af	48548ce0-fbe7-4f60-a4d3-03ba0d5c5a71	2017-07-18 02:45:17	2017-07-18 02:45:17
713aefbb-ceab-44ab-9654-02a68c9cc190	5641a7f1-67cc-4931-9a5f-978852ea34af	18d4e18f-a4e4-4bc2-a955-ae98c4403373	2017-07-18 02:45:17	2017-07-18 02:45:17
98ecbff5-9b45-45f4-b0be-ffd0daed5852	5641a7f1-67cc-4931-9a5f-978852ea34af	a4080ff7-a8c8-4af1-95f0-3d79ae519ff9	2017-07-18 02:45:17	2017-07-18 02:45:17
90b98bb2-faea-47f1-8a5d-9d09d03d741f	1b7c578c-9b4a-4d90-baad-6ac406c0131b	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-05-09 06:29:25	2017-05-09 06:29:25
ce64f245-4b98-48a2-a13c-1cece1d08f79	e1b4532e-97f2-4336-9276-4815b3f3bb6a	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-05-09 06:29:25	2017-05-09 06:29:25
d4ec191e-57ee-4645-b6d4-b92dcbc28516	a87a8506-ef6c-4cdb-861e-9eca7d79dbcd	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-05-09 06:29:25	2017-05-09 06:29:25
298bf894-0300-4295-9844-0566aa782c28	a100ebf8-5110-47fe-a555-7ff0da930b6c	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-05-09 06:29:25	2017-05-09 06:29:25
d13b9432-75e4-4ae9-b0b3-3b6b4196a5ce	0bdb2538-76c1-49b8-bee0-f27bbbfff8ae	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-05-09 06:29:25	2017-05-09 06:29:25
cb900cbe-6ffc-49b8-b322-a07a1f481858	042807cc-26e1-4122-9235-23412eacaa79	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-05-09 06:29:25	2017-05-09 06:29:25
a1d142a3-eb21-433a-9153-65fc737592d5	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	f111dc23-19f5-4b27-b679-9c40fb420d25	2017-07-20 07:11:19	2017-07-20 07:11:19
a546ed7c-95f1-4816-9f06-2947cbc8a5f2	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	48548ce0-fbe7-4f60-a4d3-03ba0d5c5a71	2017-07-20 07:11:19	2017-07-20 07:11:19
62a2ce10-d56f-42f4-89db-7f00feffaf5c	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	18d4e18f-a4e4-4bc2-a955-ae98c4403373	2017-07-20 07:11:19	2017-07-20 07:11:19
3a146adc-42c3-46d3-a3a5-c981199af9d4	7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	f7578d96-8e75-48e2-bb7d-71cd28862f21	2017-07-20 07:11:19	2017-07-20 07:11:19
df746620-ce1e-4b85-93b3-ebdff5c4327c	b2088d7b-1f27-41fe-b680-b026cd04d51e	799fcaea-8eac-4f94-a4a0-94d774b7dd83	2017-08-08 20:44:07	2017-08-08 20:44:07
12610972-a7e4-420b-b9a7-4bfc4a416df3	b2088d7b-1f27-41fe-b680-b026cd04d51e	b55d79d9-e021-4207-b4ba-2977504de18b	2017-08-08 20:44:07	2017-08-08 20:44:07
7a040dab-b447-4b08-8eb2-29dba6aabc65	b2088d7b-1f27-41fe-b680-b026cd04d51e	c1043589-f23b-450f-b570-ed2d69b29e93	2017-08-08 20:44:07	2017-08-08 20:44:07
a370f2b5-e846-4f3e-b8d1-a352a2b50d46	b2088d7b-1f27-41fe-b680-b026cd04d51e	526f45de-8c65-48db-bdbb-92976893d9b0	2017-08-08 20:44:07	2017-08-08 20:44:07
ffef9f65-4dcc-4161-a4ed-58f05cd474a2	b2088d7b-1f27-41fe-b680-b026cd04d51e	067e8a70-b579-4a89-8ad7-ab6400299d47	2017-08-08 20:44:07	2017-08-08 20:44:07
ea11c712-d6f3-4ae3-b6fa-91f373af30a7	b2088d7b-1f27-41fe-b680-b026cd04d51e	35ec2c31-4be1-49b5-99ea-6e2519d8e3b8	2017-08-08 20:44:07	2017-08-08 20:44:07
1adddbd7-3407-4e2e-a692-8ae9c14d8fde	b2088d7b-1f27-41fe-b680-b026cd04d51e	a7d41c25-0452-47eb-b400-7237b2ff2c6d	2017-08-08 20:44:07	2017-08-08 20:44:07
e1a9b0b7-cdbc-4204-9944-c28c18436ec9	b2088d7b-1f27-41fe-b680-b026cd04d51e	d946afad-0ecb-4e9a-a150-0aa83ab7bb6f	2017-08-08 20:44:07	2017-08-08 20:44:07
fe9df482-3ef4-4dd8-92f1-5940a06ca1cf	b2088d7b-1f27-41fe-b680-b026cd04d51e	a4080ff7-a8c8-4af1-95f0-3d79ae519ff9	2017-08-08 20:44:07	2017-08-08 20:44:07
b539487b-3c33-427a-99c1-351c4a85cf9f	b2088d7b-1f27-41fe-b680-b026cd04d51e	18d4e18f-a4e4-4bc2-a955-ae98c4403373	2017-08-08 20:44:07	2017-08-08 20:44:07
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tags (id, name, short_name, type, inserted_at, updated_at) FROM stdin;
eb238b61-fa9f-48c9-a634-ab5c7cd3e6ee	Hair & Beauty	beauty	category	2017-02-03 02:25:51	2017-02-03 02:25:51
799fcaea-8eac-4f94-a4a0-94d774b7dd83	Fashion & Lifestyle	fashion	category	2017-02-03 02:25:51	2017-02-03 02:25:51
067e8a70-b579-4a89-8ad7-ab6400299d47	Fitness	fitness	category	2017-02-03 02:25:51	2017-02-03 02:25:51
b55d79d9-e021-4207-b4ba-2977504de18b	Foodie	foodie	category	2017-02-03 02:25:51	2017-02-03 02:25:51
35ec2c31-4be1-49b5-99ea-6e2519d8e3b8	Health & Wellbeing	health	category	2017-02-03 02:25:51	2017-02-03 02:25:51
526f45de-8c65-48db-bdbb-92976893d9b0	Artistic	photography	category	2017-02-03 02:25:51	2017-02-03 02:25:51
c1043589-f23b-450f-b570-ed2d69b29e93	Travel	travel	category	2017-02-03 02:25:51	2017-02-03 02:25:51
a7d41c25-0452-47eb-b400-7237b2ff2c6d	Photo	photo	format	2017-02-03 02:25:51	2017-02-03 02:25:51
dda25cf1-107a-4ab3-8e58-b4fd44e6633d	Athleisure	athleisure	narrative	2016-12-09 01:05:35	2017-02-06 02:10:29
3f00f5b8-8047-481a-b459-73a94147df48	Cheap Fashion	cheap_fashion	narrative	2017-03-28 02:03:45	2017-03-28 02:03:45
e3fae870-81b8-486e-a4af-3cb8ea831491	Fashionista	fashionista	narrative	2016-12-09 01:05:55	2017-02-06 02:10:43
9d875b41-46d4-47f4-8b6e-b945219d30b5	Flashy	flashy	narrative	2016-12-09 01:05:51	2017-02-06 02:10:57
7aed98f2-a3b6-48cf-a3b0-10fbd09ed5ae	Hipster	hipster	narrative	2016-12-09 01:05:46	2017-02-06 02:11:09
a5c3a87c-7951-4736-b850-1c67892f9dbc	Luxury Fashion	luxury	narrative	2016-12-09 01:05:59	2017-03-28 02:21:43
d9302871-66cf-4e39-8e85-3111dc5c6b74	Mid Price Fashion	mid_price_fashion	narrative	2017-03-28 02:03:48	2017-03-28 02:03:48
a4080ff7-a8c8-4af1-95f0-3d79ae519ff9	Blog	blog	social_network	2017-02-03 02:25:51	2017-02-03 02:25:51
d946afad-0ecb-4e9a-a150-0aa83ab7bb6f	Facebook	facebook	social_network	2017-02-03 02:25:51	2017-02-03 02:25:51
18d4e18f-a4e4-4bc2-a955-ae98c4403373	Instagram	instagram	social_network	2017-02-03 02:25:51	2017-02-03 02:25:51
48548ce0-fbe7-4f60-a4d3-03ba0d5c5a71	Pinterest	pinterest	social_network	2017-02-03 02:25:51	2017-02-03 02:25:51
f7578d96-8e75-48e2-bb7d-71cd28862f21	Snapchat	snapchat	social_network	2017-02-03 02:25:51	2017-02-03 02:25:51
f111dc23-19f5-4b27-b679-9c40fb420d25	Twitter	twitter	social_network	2017-02-03 02:25:51	2017-02-03 02:25:51
52cede06-6571-45f5-88ac-1c9f85ca646e	Flatlay	flatlay	style	2016-12-09 01:05:23	2017-02-06 02:12:08
0e9d7e32-e576-42d4-a303-490484eb6140	Landscapes	landscapes	style	2016-12-09 01:03:28	2017-02-06 02:12:13
d91027e0-0821-4a9a-bdfc-1241ca891e26	Product in use	product_in_use	style	2016-12-09 01:05:19	2017-02-06 02:12:25
a9278a89-496c-4c63-8877-6dcf2783ffad	Selfies	selfies	style	2016-12-09 01:05:02	2017-02-06 02:12:30
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, full_name, country, inserted_at, updated_at) FROM stdin;
042807cc-26e1-4122-9235-23412eacaa79	Alberto Giubilini	Singapore	2016-05-23 02:36:30.827959	2016-05-30 02:10:22.36266
b2088d7b-1f27-41fe-b680-b026cd04d51e	Bill Fulford	Australia	2016-05-26 00:40:32.958	2017-09-08 03:21:01
5641a7f1-67cc-4931-9a5f-978852ea34af	Clare Heyward	Australia	2016-05-23 02:44:51.252	2017-09-11 05:06:55
e1b4532e-97f2-4336-9276-4815b3f3bb6a	Dominic Wilkinson	Singapore	2016-05-23 02:48:39.806011	2016-05-30 02:10:11.512024
7ccaa468-c4ed-41f8-b46b-f856fdcf27c9	Frances Kamm	Australia	2016-05-23 02:51:12.663	2017-08-18 23:13:34
0bdb2538-76c1-49b8-bee0-f27bbbfff8ae	Hannah Maslen	Hong Kong	2016-05-23 02:54:04.007348	2016-05-30 02:10:10.039699
1b7c578c-9b4a-4d90-baad-6ac406c0131b	Ichinose Masaki	Singapore	2016-05-23 02:54:35.515031	2016-05-30 02:10:16.160306
12b05ff4-691b-4d69-9108-0cedf3f37fa4	Jeff McMahan	Australia	2016-07-11 10:39:54.822	2017-04-05 00:23:52
a100ebf8-5110-47fe-a555-7ff0da930b6c	Katrien Devolder	Hong Kong	2016-05-23 02:57:30.493174	2016-05-30 02:10:11.32025
a87a8506-ef6c-4cdb-861e-9eca7d79dbcd	Nicholas Shackel	Hong Kong	2016-05-23 02:58:15.291381	2016-07-14 05:28:16.11917
\.


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: taggables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggables
    ADD CONSTRAINT taggables_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: taggables_tag_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggables_tag_id_index ON taggables USING btree (tag_id);


--
-- Name: taggables_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggables_user_id_index ON taggables USING btree (user_id);


--
-- Name: taggables_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggables
    ADD CONSTRAINT taggables_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE;


--
-- Name: taggables_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggables
    ADD CONSTRAINT taggables_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

