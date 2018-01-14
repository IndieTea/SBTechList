--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO joyti;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO joyti;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO joyti;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO joyti;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO joyti;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO joyti;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO joyti;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO joyti;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO joyti;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO joyti;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO joyti;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO joyti;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: catalog_sbtechlist; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE catalog_sbtechlist (
    organization character varying(100) NOT NULL,
    cat character varying(500) NOT NULL,
    description character varying(2000) NOT NULL,
    website character varying(500) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(50) NOT NULL,
    state character varying(10) NOT NULL,
    zipcode integer NOT NULL,
    employees integer NOT NULL,
    founded integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE catalog_sbtechlist OWNER TO joyti;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO joyti;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO joyti;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO joyti;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO joyti;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO joyti;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO joyti;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: joyti
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO joyti;

--
-- Name: sbtechlist_id_seq; Type: SEQUENCE; Schema: public; Owner: joyti
--

CREATE SEQUENCE sbtechlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sbtechlist_id_seq OWNER TO joyti;

--
-- Name: sbtechlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joyti
--

ALTER SEQUENCE sbtechlist_id_seq OWNED BY catalog_sbtechlist.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: catalog_sbtechlist id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY catalog_sbtechlist ALTER COLUMN id SET DEFAULT nextval('sbtechlist_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add auth group	7	add_authgroup
20	Can change auth group	7	change_authgroup
21	Can delete auth group	7	delete_authgroup
22	Can add auth group permissions	8	add_authgrouppermissions
23	Can change auth group permissions	8	change_authgrouppermissions
24	Can delete auth group permissions	8	delete_authgrouppermissions
25	Can add auth permission	9	add_authpermission
26	Can change auth permission	9	change_authpermission
27	Can delete auth permission	9	delete_authpermission
28	Can add auth user	10	add_authuser
29	Can change auth user	10	change_authuser
30	Can delete auth user	10	delete_authuser
31	Can add auth user groups	11	add_authusergroups
32	Can change auth user groups	11	change_authusergroups
33	Can delete auth user groups	11	delete_authusergroups
34	Can add auth user user permissions	12	add_authuseruserpermissions
35	Can change auth user user permissions	12	change_authuseruserpermissions
36	Can delete auth user user permissions	12	delete_authuseruserpermissions
37	Can add django admin log	13	add_djangoadminlog
38	Can change django admin log	13	change_djangoadminlog
39	Can delete django admin log	13	delete_djangoadminlog
40	Can add django content type	14	add_djangocontenttype
41	Can change django content type	14	change_djangocontenttype
42	Can delete django content type	14	delete_djangocontenttype
43	Can add django migrations	15	add_djangomigrations
44	Can change django migrations	15	change_djangomigrations
45	Can delete django migrations	15	delete_djangomigrations
46	Can add django session	16	add_djangosession
47	Can change django session	16	change_djangosession
48	Can delete django session	16	delete_djangosession
49	Can add sbtechlist	17	add_sbtechlist
50	Can change sbtechlist	17	change_sbtechlist
51	Can delete sbtechlist	17	delete_sbtechlist
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$XEujTEiMKEHM$4Rd5aR8Oc3sviL2IfmgMViS9Yk+7LAO8aydJ5N2yA30=	2017-12-30 13:30:08.429627-08	t	admin			joytika@gmail.com	t	t	2017-12-29 00:57:20.525668-08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: catalog_sbtechlist; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY catalog_sbtechlist (organization, cat, description, website, address, city, state, zipcode, employees, founded, id) FROM stdin;
Stratus Media Group	Concerts, Events,Entertainment, Sports	Stratus Media Group, Inc. (Stratus) is a development-stage company. The Company owns or is targeting the acquisition of live entertainment\r	http://www.stratusmediagroup.com/	3 E. De La Guerra St. 	Santa Barbara	CA	93101	101	1998	1
Carpe Data	Software	It provides next generation predictive scoring and data products to P&C and life insurance companies.\r	https://carpe.io/	735 State St #600	Santa Barbara	CA	93101	9	2016	2
Strategic Healthcare Programs (SHP)	Medical Software	Strategic Healthcare Programs (SHP) provides real-time healthcare performance metrics and data analytics for healthcare providers.	www.shpdata.com	510 Castillo Street 	Santa Barbara	CA 	93101	101	1996	3
Zoom Video Communications	Mobile Collaboration, Audio Conferencing, Video Conferencing, Online Meetings, Web Conferencing, Cloud computing, software	Zoom unifies cloud video conferencing, simple online meetings, and group messaging into one easy-to-use platform. 	https://zoom.us/careers	200 E Carrillo St, Suite 300	Santa Barbara 	CA	93101	10001	2011	4
WeDo	Apps, Consumer, Mobile Apps, Productivity Tools	Your second brain for remembering everything in your life.\r	https://wedo.com/	232 Anacapa St	Santa Barbara	CA	90000	8100	2015	5
Yardi Systems	software, SaaS, Property Management	Yardi Systems, Inc. develops real estate management software. Over the years they have a acquired many related companies and folded them into their own products.	http://www.yardi.com/	430 South Fairview Ave. 	Goleta	CA 	93117	5001	1984	6
Xform Computing	Cloud, mobile virtual desktop software, software	Xform Computing provides a cloud streaming platform for applications allowing users to get similar performance to a desktop from their mobile devices.	http://xformcomputing.com/	510 State Street, Suite 230 	Santa Barbara 	CA 	93101	5001	2007	7
Wyatt Technology	Scientific Engineering	Wyatt Technology develops light scattering technology in the form of products, software, and services. It was the first company to create light scattering technology with laser as the form of light.	www.wyatt.com	6300 Hollister Ave	Goleta	CA 	93117	2000	1982	8
WorldViz 	Software, Virtual Reality	WorldViz creates interactive visualization and simulation software. They provide Fortune 500 companies and universities with Virtual Reality software & hardware, and unparalleled immersive visualization experiences. Industries include architecture, engineering, construction, healthcare, defense, manufacturing, and academia.	http://www.worldviz.com/	614 Santa Barbara St	Santa Barbara 	CA 	90000	1600	2002	9
Network Hardware Resale	Communications, hardware	With offices in New Jersey, Dallas, London, Amsterdam, and Singapore, Network Hardware Resale sells used and refurbished networking equipment. Network Hardware Resale has raised over $50mil in Venture Capital from Allied Capital.	https://www.curvature.com/	26 Castilian Dr	Goleta	CA 	93117	1500	1996	10
Search Engine Pros	Marketing, software	Web marketing company that focuses on social media, SEO, and pay-per-click advertising.	www.thesearchenginepros.com	201 W. Montecito St	Santa Barbara 	CA 	93101	1001	2004	11
Event Staff App	Event Management, Events, Software, Staff Scheduling	We provide Web-based software that helps event businesses schedule their staff.\r	http://www.eventstaffapp.com/	1 Main St	Santa Barbara	CA 	90000	1001	2011	12
CIO Solutions	IT Management, Consulting, Managed Services , Private Cloud,  Enterprise IT Solutions	We are a Microsoft Gold partner and a leader in providing IT and Network Solutions to the Central Coast. Headquartered in Santa Barbara we have been in business since 1986. We focus on educating the market and our clients rather than selling them something that doesn't solve their business needs.	https://www.ciosolutions.com/	5425 Hollister Ave 150	Goleta	CA	93111	553	1986	13
Wave Tribe	Sporting Goods, Surfing Community	Wave Tribe is the most recognized ecological surf company in the world, it has helped transform the global surf community by creating superior surf products while building an ecological community of conscious and caring surfers.\r\rWave Tribe allows its employees to 'surf first' supporting individual passions and understanding that tide, wind, and swell are the true managers of our lives (and the occasional exotic surf trip).\r	https://www.wavetribe.com/	201 Bryant, Unit 4	Ojai	CA	93023	550	2008	14
Warp 9	E-Commerce, Email Marketing, Information Technology	Warp 9 provides e-commerce software platforms and services for the catalog and retail industries in the United States.\r	http://www.warp9inc.com/	6500 Hollister Ave	Santa Barbara	CA 	93117	502	1998	15
Vushaper	Content Delivery Network, Mobile, Video, Web Development, iOS	Vushaper is a company that develops software to provide unique television experiences for viewers.\r	http://vushaper.com/	1 N Calle Cesar Chavez	Santa Barbara 	CA 	93103	502	2012	16
Storygize	Advertising Platforms, Content Marketing, Native Advertising, Content Marketing, Media Buying and Optimization	Storygize is a native advertising platform for distributing marketing content.\r	http://www.storygize.com/	1525 Rancho Conejo Blvd.\rSuite 204	Newbury Park	CA 	91320	101	2015	17
StartupSB	Startups, Community Building	StartupSBs mission is to build a stronger business ecosystem on the Central Coast by providing connectivity and resources.\r	http://startupsb.com/	414 Olive Street\r	Santa Barbara	CA 	93101	101	2012	18
VSolvit 	Geographical Information Systems, , Government Consulting, IT	VSolvit (Pronounced: We Solve it) is an award winning technology services company that specializes in the areas of Geographic Information Systems (Esri Business Partner) and IT application development. \r\rVSolvit was founded based on two decades of experience in technology and project management spanning across various verticals such as Geographic Information Systems, Non-Profits/Education, Government Organizations, Telecommunications, and Pharmaceuticals  enabling us to leverage best practices across industries. \r\rAs an ESRI Authorized Business Partner - our expertise includes Geographic Information Systems Services, Database Management, Application Development, Migration Planning/System Migration, Program Management/Project Management	http://www.vsolvit.com/	4171 Market St, Ste 2	Ventura	CA	93003	501	2006	19
VRTCAL Markets, Inc.	Advertising, Advertising Platforms, Mobile Advertising	VRTCAL is a best-in-class Mobile Advertising MarketPlace that reduces the vertical distance between advertisers & their targeted audiences.\r	https://vrtcal.com/	1123 Chapala Street, 2nd Floor, 	Santa Barbara	CA 	93101	501	2016	20
VerticalChange	CRM, Government, Health Care, Non Profit, Social Innovation, Case management software, Non-profit databases, non-profit data systems, CRM with surveys, and longitudinal study software	VerticalChange is an enterprise SaaS product that enables its users to collaborate and input, manage, and analyze social services data.\r	http://verticalchange.com/	528 Freehaven Dr.	Santa Barbara	CA 	93108	501	2012	21
Ventura Magazine	Publishing	Ventura County is a blend of a rainbow of people, art, music, politics, business, religion and culture. Together we capture this within the pages of Ventura Magazine every month.	http://www.venturemagazine.me/	700 East Main Street	Ventura	CA	93001	501	2006	22
USDM Life Sciences	Information Technology, Risk Management, Data Integrity & Compliance, Technological Innovation, Regulated System Implementation & Validation, and Business Process Optimization	USDM Life Sciences makes it easier to accelerate innovation and maximize human productivity.\r	http://www.usdm.com/	535 Chapala St	Santa Barbara	CA 	93101	501	2000	23
UpShift	Graphic Design, advertising, web development, branding 	UpShift provides a range of marketing and design services such as graphic design, web development, SEO, and brand strategy.	https://upshiftcreative.com/	740 State Street 	Santa Barbara 	CA 	93101	501	2000	24
Underdog Media	Ad Server, Ad Tech, Driving Engagement ,  Analytics , Digital Publishers, PMP and Deals, Partnerships, Digital Display Advertising 	Underdog Media delivers direct response and branding initiatives for marketers to increase conversion and grow ad space revenue.\r	https://underdogmedia.com/	10 E. Yanonali St. 2C	Santa Barbara	CA 	93101	500	2007	25
Truevision	\rBiotechnology, Hospital, Medical Device	TrueVision Systems develops 3D visualization and guidance software applications that support computer-aided microsurgeries.\r	http://truevisionsys.com/	315 Bollay Drive, Suite 101	Santa Barbara	CA	93117	252	2003	26
TrueVision Systems	Medical Technology, 3D Visualization	TrueVision develops 3D cameras for microsurgery	www.truevisionsys.com	315 Bollay Dr  101	Goleta	CA 	93117	251	2006	27
TrackR	 location services	TrackR is a startup founded by two UC Santa Barbara graduates with the purpose of being able to locate some of your most valuable and commonly lost possessions such as your car, wallet, and tablet.	https://www.thetrackr.com/	19 W Carrillo St,	Santa Barbara	CA 	93103	251	2009	28
TrackR, Inc.	Electronics, \rInternet of Things, Mobile, Hardware, iOS, Developer Tools, Android, Insurance	TrackR develops Bluetooth Low Energy (BLE) tag sensors, which can be attached to anything to help users track their stuff using their smartphone.	https://www.thetrackr.com/	19 W. Carrillo St.	Santa Barbara 	CA 	93101	251	2009	29
Hands Company	Artificial Intelligence, Hardware, Robotics, Security, Software	The potential of robotics in daily life\r	http://www.handscompany.it/	1 Main Street	Santa Barbara	CA	93101	251	2012	30
The Montecito Group	Technology, Consumer Goods, Business Services	The Montecito Group was created to challenge the digital advertising trends.  We advertise with people for people.  We just happen to connect clients and customers via digital advertising and marketing.\r\rPrimary Services:\r\r-Digital Advertising\r-Social Media Management\r-Social Media Automated Growth\r-Social Media Public Relations\r-Search Engine Optimization (SEO)\r-Search Engine Marketing (SEM)\r-Interactive Advertising\r-Advanced Graphics\r-Event Advertising\r-Video Ads\r-Consulting and more	https://montecitogroup.com/	951 Waterbury Ln\r	Ventura	CA	93001	251	2016	31
Goleta Entrepreneurial Magnet / GEM	Nonprofit, technology 	The Goleta Entrepreneurial Magnet _ GEM -- provides resources and support to science and technology businesses, whether they focus on bio-medical, software, infrared, semiconductor or other markets. We want to help your start-up succeed. Use our website to connect with us, other entrepreneurs, selected vendors and other local resources to help you manage your success.\r\r	http://goletaentrepreneurs.com/	600 Pine Ave	Goleta	CA 	93117	251	2012	32
Claveo	Software, Mobile security 	The Claveo Project develops secure authentication for mobile devices based on cryptographic technology.	www.claveo.com	1100 Mission Canyon Road	Santa Barbara 	CA 	93105	251	1900	33
Tenor	Advertising, Brand Marketing, Marketing	Tenor delivers brand, marketing, and communications results for startups.\r	http://www.tenorpartners.com/	1482 E Valley Rd 321	Santa Barbara	CA 	93108	251	2003	34
Tempest Telecom Solutions	Telecom, Servicing	Tempest Telecom Solutions services the telecom industry by providing equipment, repair, technical support, logistics, and consulting.	https://www.tempesttelecom.com/	136 W. Canon Perdido, Suite 100,	Santa Barbara	CA 	93101	250	2005	35
Telecoast Communications	Hardware, Telecommunications, Web Hosting	Telecoast Communications is engaged in the distribution of recertified and pre-owned networking hardware products.\r	http://www.telecoast.com/	1187 Coast Village Rd	Santa Barbara	CA 	93108	201	2002	36
Tech Coast Angels	angel, investment	Tech Coast Angels is a network of angel investors in Southern California including Santa Barbara.	https://www.techcoastangels.com/	P.O. Box 1683	Big Bear Lake	CA 	92315	140	1997	37
Tapjoy	Online Marketing 	Tapjoy provides a platform for internet advertisers to advertise within social games Headquartered in San Francisco, CA.	www.tapjoy.com	32 Anacapa st.	Santa Barbara 	CA 	90000	132	2007	38
Boys + Arrows	Fashion, E-Commerce, Surfing Community	Swimwear for girls with an appetite for adventure and a passion for life.\rShare	https://boysandarrows.com/	451 E Main St 10	Ventura	CA	93001	102	2011	39
Surf Air	Air Transportation, Transportation, Travel	Surf Air is a California-based membership airline that offers first-class travel on executive aircraft.	http://www.surfair.com/	1408 3rd St Prom	Santa Monica	CA	90401	101	2011	40
STWA	Energy, Energy Efficiency, Oil and Gas	STWA develops and commercializes energy efficiency technologies to meet increasing global energy demands.\r	http://stwa.com/	735 State St Suite 217	Santa Barbara	CA 	93101	101	1998	41
Software.com	E-Commerce, Software	Software.com is a retailer of paid software downloads.\r	http://www.software.com/	525 ANACAPA ST	Santa Barbara	CA 	93101	101	2014	43
My First Day	SaaS, Startups, Human Resources, Employee Management	Software to engage and retain your employees with a focus on the onboarding process, leadership and management. The software has been built to solve the problem of why employees leave a company: (1) Leadership (lack of mission/vision); (2) Bad Managers; and (3) Inadequate onboarding process. Research indicates that millennials desire transparency and engagement from their employer. Myfirstday provides tools to engage these employees from selection through integration and long-term retention.	http://www.myfirstday.io/	1 Main St	Santa Barbara	CA	90000	72	2014	44
LetsCram	Education, Tutoring	Social Video Chat is a web platform and app that allows users to view and share videos, documents, presentations, and more.\r	http://www.letscram.com/	402 East Gutierrez	Santa Barbara	CA	93101	67	2007	45
Social Intelligence	Software, SaaS, Tools & Data, Startup	Social Intelligence Corp provides social media data, tools, and reports to commercial and Government organizations. Headquartered in Santa Barbara, Calif., the company has developed a unique suite of products including employment background screenings, insurance claims investigations, corporate due diligence, and Government services. The company offers SaaS based search tools, predictive scoring algorithms, and proprietary data to deliver unparalleled.  Social Intelligence adheres to the guidelines of the Fair Credit Reporting Act (FCRA) and is compliant with Federal and State law.	www.socialintel.com	735 State Street 600	Santa Barbara 	CA 	90000	52	2010	46
Snapwire	Advertising, Crowdsourcing, E-Commerce, Image Recognition, Mobile, Photography, software	Snapwire is a platform where talented mobile photographers shoot custom images for people around the world.\r	http://snapwi.re/	3905 State Street Ste 7-510	Santa Barbara	CA 	93105	52	2005	47
Small Planet Technologies	E-Commerce, Mobile Commerce, Food and Beverages	Small Planet Technologies has figured out a way to deliver fresh, individually personalized meals to every person on the planet. Furthermore, we own no kitchens, hire no delivery couriers, create no global supply chains, or deal with any local health regulations. SPT sustainably grows local small businesses globally.	http://www.smallplanettechnologies.com/	701 Poli St	Ventura	CA	93001	51	1900	48
Smartstones	Internet of Things, Augmented Reality, Mobile, Hardware, Software	Skype for 370 million people who can't talk. Our sensory communication platform translates body language into spoken language. Speaksprose translates body language into speech.\r\rSensory interpretation platform that translates body language signals into messaging and speech.\r\rOur api allows us to integrate infinite sensory device types including mems (motion and location), camera vision, touch sensitive interfaces and brain wave sensors such as EEG.\r\rFirst ever Think to Speak beta, with the goal of giving 370 million people unable to speak a way to communicate and engage in new ways with the world around them.\r\rOur focus is the intersection between education & consumer wellness/health.	\rwww.speakprose.com/	3905 State Street, Suite 7-353	Santa Barbara 	CA 	93105	51	2013	49
Kandy Pens	Electronics, Online Portals, Shopping	SkyCloud - The World's First Multi-Functional Vaporizer! Kandpens creates Premium Vaporizers sold world wide.\r	http://kandypens.com/	PO Box 60329	Santa Barbara	CA 	93160	51	2014	50
Yovigo	E-Commerce, Website Builder, Social Media Marketing, Software, Recurring Payments	Site Builder & Social eCommerce Network\r	http://yovigo.com/	735 State Street Suite 218	Santa Barbara	CA 	93101	51	2013	51
Simpler Systems	software, Data	Simpler Systems provides a software called datapps for aggregating and organizing data.	http://www.simplersystems.com/	627 Island View Dr,	Santa Barbara	CA 	93109	51	1998	52
Sientra	Medical, Aesthetics	Sientra develops products for certified plastic surgeons, namely its FDA approved breast implants.	www.sientra.com	420 S. Fairview Avenue, Suite 200 	Santa Barbara 	CA 	93117	51	2007	53
ShipHawk	software, shipping	ShipHawk provides logistics and shipping software that enables businesses to do anything from choose which carrier/packaging would be most viable to getting analysis on the impact of shipping on their business.	https://shiphawk.com/	3463 State St. 245	Santa Barbara	CA 	93105	51	2012	54
EZ-Apps	Apps, Enterprise Software, Mobile	ShieldEffect develops SMB/SME security solutions focused on the Chinese marketplace.\r	http://www.ez-apps.com/	924 Anacapa Street\rSuite 1M	Santa Barbara 	CA 	93101	51	2004	55
Service Objects	Software, Marketing, Contact Validation, Lead Validation, Data Validation, 	Service Objects keeps a huge database of customer contact info for use in marketing lead validation.	http://www.serviceobjects.com/	27 East Cota Street, 500 	Santa Barbara 	CA 	93101	51	2001	56
Toyon Research Corporation	Defense, systems	Sensor and weapons systems analysis.	www.toyon.com	6800 Cortona Dr	Santa Barbara 	CA 	93117	51	1980	57
SelfEcho	 Health, well-being, software	SelfEcho is a mental health startup with technology platforms Mobile Therapy and Upjoy.org aimed at improving the patient-doctor relationship outside of in-office appointments.	www.selfecho.com	27 West Anapamu, Suite 250 	Santa Barbara 	CA 	93101	51	2013	58
Seek Thermal	Electronics, Infrared technology 	Seek Thermal sells high performance thermal imaging products including attachments to smartphones. Products have many applications including commercial, outdoor, and IoT data.	www.thermal.com	111 Castilian Dr 	Santa Barbara 	CA 	90000	51	2012	59
\rSeek Thermal	\rCommercial, Consumer Electronics, Electronics, Hardware, Industrial Automation, Internet of Things, Manufacturing	Seek Thermal engineers, designs, manufactures, and markets thermal imaging products and sensors\r	http://thermal.com/	111 Castilian Dr	Santa Barbara	CA	93117	51	2012	60
Santa Barbara Angel Alliance	Angel Investment	Santa Barbara Angel Alliance is an angel investor group that has invested more than $5M in over 100 startup and early-stage companies.\r	http://www.sbangelalliance.com/	1 Main St. 	Santa Barbara	CA 	90000	51	2016	61
ROQMetrics	SaaS, Software	ROQMetrics is a SaaS company focused on accelerating and improving  Lean Agile Transformation in regulated industries.\r\rROQMetrics was founded by cloud software veterans with a track record of developing and delivering cloud solutions to some of the worlds largest Healthcare and Life Science organizations.\r\r	https://roqmetrics.com/	701 E Santa Clara Street Suite 42	Ventura	CA	93001	51	2016	62
Riptide IO	software, Device networking and integration	Riptide IO helps companies integrate and manage large networks of sensors and other smart devices.	https://riptideio.com/	315 Meigs Road, Suite A110	Santa Barbara 	CA 	93109	51	2011	63
Rincon Technology	Telecommunications, Sales	Rincon Technology assists telecommunications companies with the buy, sell, trade, and servicing of equipment for the industry.	http://www.rincontechnology.com/	810 E. Montecito St.	Santa Barbara	CA 	93103	51	2013	64
Rincon Venture Partners	Financial Services, Venture Capital, Finance	Rincon invests in Central Coast and Greater Los Angeles firms. The firm invests in software and technology-enabled services sectors (for both businesses and consumers) with $500,000 to $1.5 million, and expect to invest an average of $3-4 million over the life of a portfolio company.\r	http://www.rinconvp.com/	803 Chapala Street	Santa Barbara	CA 	93101	51	2005	65
RightSignature	Document Management, Legal, Software	RightSignature is a company offering a SaaS-based solution that enables businesses to securely get documents signed online. Acquired by Citrix in 2014.\r	https://rightsignature.com/	8 E Figueroa St	Santa Barbara 	CA 	93101	51	2009	66
RightScale	software, SaaS, cloud computing	RightScale provides a Cloud Computing Management Platform that makes it much easier for websites, SaaS providers, and online apps to manage and automate their cloud based servers and processes. RightScale has taken in over $40mil in Venture Capital funding from Tenaya Capital, DAG Ventures, Benchmark Capital, Index Ventures, and Presidio Ventures.	https://www.rightscale.com/	402 E Gutierrez St	Santa Barbara	CA 	93101	51	2006	67
Resonant	Telecommuncations, Radio Frequency	Resonant designs Radio Frequency (RF) front-end technology which processes the signal received by mobile phones.	https://www.resonant.com/	110 Castilian Drive Suite 100	Santa Barbara	CA 	93117	51	2012	68
Redspin	IT, Security, software	Redspin is a cybersecurity company that offers among its service IT healthcare consulting, ensuring that companies meet HIPPA compliance.	www.redspin.com	4690 Carpinteria Ave. Suite B 	Carpinteria	CA 	93013	50	2000	69
Receipt	SaaS product, software 	Receipt.com provides smart receipts for business to gather transactional data.\r	http://www.receipt.com/	55 Castillian Dr.	Santa Barbara	CA 	93117	27	2004	70
Quirk Law Firm	Legal	Quirk Law Firm was founded in 2006 in Ventura, California. We have offices in California and Nevada. Our practice is devoted to representing people who have been injured or lost a loved one. We have recovered millions of dollars for our clients. Our firm works on a contingency basis only, which means our clients do not owe us money unless we win their case. Call us 24/7. We have someone waiting to help you and hablamos espanol.	https://www.quirklawyers.com/	4222 Market Street, Suite C	Ventura	CA	93003	21	2006	71
QAD	Enterprise Resource Management, software	QAD develops enterprise resource planning software for auto, high-tech, food, consumer products, life sciences, and industrial manufacturing companies globally. This software gives companies a platform for managing their materials, supply chain, manufacturing process, customer relationships, etc.	www.qad.com/	100 Innovation Place. 	Santa Barbara	CA	93108	20	1979	72
PsychSignal	Consulting, Finance, Big Data, Artificial Intelligence, Algorithmic Trading, Financial Markets,	PsychSignal quantifies the real world psychology of the investment crowd by listening to social media conversations.\r	http://psychsignal.com/	27 West Anapamu Street\rSuite 140	Santa Barbara	CA	93101	15	2011	73
Latitude 34 Technologies, Inc.	IT company, Support	Provides IT support to small and mid-sized businesses.	www.l34tech.com	5880 Hollister Avenue Suite B 	Goleta	CA 	90000	11	2006	74
CIO Solutions	IT Company, Support	Provides IT management, consulting, cloud, and phone/VoIP solutions.	www.ciosolutions.com	150 Castilian Drive Suite 100 	Goleta	CA 	93117	11	1986	75
iFluidics	Medical 	Provides commercial system to mix, separate, and concentrate molecular/biological components for biotech and pharmaceuticals (UCSB spinoff).	www.ifluidics.com	1919 State St Suite 207	Santa Barbara	CA 	93101	11	2010	76
Synergy Computing, Inc.	IT Company, Computer networking, cabling & services	Provides a wide range of IT services such as cloud support, hosting, VoIP, data backup and recovery.	www.synergyinc.net	5662 Calle Real 425 	Santa Barbara 	CA 	90000	11	1900	77
Maps.com	e-commerce maps	Provider of mapping products and solutions to business, education and consumer markets.	https://www.maps.com/	120 Cremona Dr, Suite H	Santa Barbara 	CA 	93117	11	1991	78
ProductPlan	Software, SaaS, Product Management 	ProductPlan is web-based software that helps companies develop and communicate their strategic product roadmap.	https://www.productplan.com/	5385 Hollister Ave. Suite 212	Santa Barbara 	CA 	90000	11	2013	79
Affinity Biosensors	Biotechnology, Metrology Systems	Produces particle metrology and cytometry equipment and software.	www.affinitybio.com	1221 Chapala Street, Suite B 	Santa Barbara 	CA 	93101	11	1900	80
Advanced Scientific Concepts	3D Video Cameras, Machinery Manufacturing, Manufacturing, Semiconductor	Produces 3D Flash LIDAR video technology for commercial industries such as aircraft, automotive, and military for applications such as object identification and avoidance.	www.advancedscientificconcepts.com	135 East Ortega Street 	Santa Barbara 	CA 	93101	11	1987	81
ProCore	software, SaaS, Construction Management	ProCore develops project management software for construction companies. ProCores software works mostly though normal email for most members involved, and only admins/managers need to regularly log into their online dashboard. Procore has raised over $5mil in Venture Capital from Great Pacific Capital, and OConnor Ventures.	https://www.procore.com/	6309 Carpinteria Ave	Carpinteria	CA 	93013	11	2003	82
Oniracom	PR, marketing 	PR and Marketing for the entertainment industry.	www.oniracom.com	720 E. Haley Street	Santa Barbara 	CA 	93103	11	2001	83
PLOTAGRAPH, Inc.	Mobile Apps, SaaS, Software	Plotagraph membership & and Image animation software is a fun and easy way to bring a single still image to life and boost your engagement.\r	https://www.plotagraphs.com/	1117 State St.	Santa Barbara	CA 	93105	11	2015	84
Pivotal Ventures Inc	Enterprise Software, Internet, software	Pivotal Ventures advises and invests in breakthrough technology ventures at the intersection of the Mobile and Social Web.\r	http://www.pivotalvc.com/	1145 N PATTERSON AVE	Santa Barbara	CA 	93111	11	2001	85
Phase 3 PC Consulting	IT Company, Computer networking, systems, web development	Phase 3 provides services in IT (data management, pc repair, etc.), web design, and search engine optimization.	https://www.phase3.net/	PO Box 369 	Goleta	CA 	90000	11	1900	86
Persistence Partners	Construction, Enterprise Software, Venture Capital	Persistence Partners is an early-stage venture fund based in Santa Barbara and Ventura Counties.\r	http://www.persistencepartners.com/	610 Anacapa Street	Santa Barbara	CA 	93101	11	2006	87
Axia Technologies\r	Financial Services	Payments Technology & Commerce Solutions Integrated and Secure FinTech\r	http://www.axiatech.com/	4183 State St	Santa Barbara	CA	93110	11	2014	88
PayJunction	Payment processing, software	PayJunction is an credit card processing company that focuses on medium to large businesses and processes roughly $2 billion in transactions per year.	www.payjunction.com	1903 State Street 	Santa Barbara 	CA 	93101	11	2000	89
ParentSquare	Education Management, parent engagement, Education, Education Software, 	ParentSquare is a modern school-home communication platform that unifies all school communication. Our user-friendly platform designed specifically to help preK-12 educators, reaches and engages every parent through automated email, text, web, app or voice in their preferred language (over 100). Powerful metrics on parent engagement help school administrators take well-informed steps to increase academic achievement through parental involvement.	https://www.parentsquare.com/about	924 Anacapa St, Suite 3R	Santa Barbara	CA 	93101	11	2011	90
PacWest Bancorp	Banking, Financial Services	PacWest Bancorp is a bank holding company with $5.3 billion in assets as of March 31, 2013, with one wholly-owned banking.\r	http://www.pacificwesternbank.com/	30 East Figueroa	Santa Barbara	CA 	93101	11	1999	91
Owl Biomedical	Biomedical, Cancer Research, medical 	Owl Biomedical is committed to developing and selling biomedical microchips to the cancer and cell and gene therapy industries. Owl Biomedical was acquired by Miltenyi Biotec GmbH in 2013.	http://owlbiomedical.com/	75 Robin Hill Road	Santa Barbara	CA 	93117	11	2011	92
Outreah Systems	Software, CRM	Outreach Systems creates customer relationship management (CRM) software for primarily non-profit businesses in the economic development sector.	www.outreachsystems.com	5385 Hollister Avenue, Building 12 	Santa Barbara 	CA 	93111	11	1988	93
Advanced Cable Systems	IT, Computer Networking, Cabling Services	Originating from business associations in 1988, Advanced Cable Systems provides installation of electrical servers, networks, and telephones.	www.advcablesys.com	3024 De La Vina St. 	Santa Barbara 	CA 	93105	11	1900	94
Citrix Online	SaaS, Productivity, software 	 To enable their service they had developed remote desktop sharing software, which eventually evolved into GoToAssist (remote support tool) and GoToMyPC (remote computer access).\rIn 2003 ExpertCity was acquired by by Citrix Systems, a big public software company specialized remote access infrastructure, for $225mil, and rebranded it as Citrix Online, retaining most key developers . Citrix Online has since fully developed GoToMeeting (online meeting software) and GoToWebinar (web conference software) products as well.\r	http://www.citrixonline.com/	7414 Hollister Ave. 	Goleta 	CA 	93117	11	1997	95
Orbital ATK	Aerospace & Defense 	Orbital ATK provides a wide range of technology for the aerospace and defense industry, including missiles, satellites, and other technologies for flight, defense, and space systems. 	www.orbitalatk.com	600 Pine Avenue 	Goleta 	CA 	93117	11	1900	96
Ontraport 	B2B SaaS, software	Ontraport provides a CRM and marketing process platform that focuses on automating recurring business processes.	www.ontraport.com	2040 Alameda Padre Serra 220	Santa Barbara 	CA 	93103	11	2006	97
Local Market Launch	Internet Advertising, Search Engine, Local	Online business listings optimization service to help businesses get found by search engines.	http://www.localmarketlaunch.com	118 East Ortega St	Santa Barbara 	CA 	93101	11	2012	98
One Call Plumber Carpinteria	Plumbing, 	One Call Plumber Carpinteria believe in providing the best value and plumbing service to our clients in Carpinteria. Our motto is if you're not happy were not happy. All of our technicians are experienced and trained in their field. 	http://plumberscarpinteria.com/	5285 Ogan Road	Carpinteria	CA	93013	11	2000	99
Office Autopilot	CRM, Software, marketing automation software, lead generation,  ecommerce, small business marketing, office autopilot, marketing software, and email automation	OfficeAutopilot is web-based sales, marketing and business automation software.\r	https://ontraport.com/	2040 Alameda Padre Serra Suite 220	Santa Barbara	CA 	93103	11	2006	100
Cocoon 	Software, Browser	Offers a service called Cocoon that provides secure web browsing.	https://getcocoon.com/	5383 Hollister Avenue, Suite 140 	Santa Barbara 	CA 	93111	11	2008	101
Ocean Road Partners	Venture Capital, investments	Ocean Road makes Series A investments in companies mainly in the IT sector that serve Fortune-500 companies.	www.oceanroadpartners.com	1 Main St	Venice	CA	90000	11	2009	102
NuSil Technology	Chemicals, silicone	NuSil is a designer and manufacturer of silicone-based products for the medical and aerospace industries.	https://nusil.com/	1050 Cindy Lane	Carpinteria	CA 	93013	11	1979	103
Numenor Ventures	Venture Capital, direct investments, Strategic Advisory Services	Numenor provides venture capital funding for public and private companies as well as advisory and HR consulting services.	www.numenorventures.com 	1015 East Mountain Drive	Santa Barbara	CA	93108	11	2002	104
NOZA	Humanitarian, Non Profit, Vertical Search	NOZA has the worlds largest database of charitable donors compiled from publically available information.	https://www.nozasearch.com/	1409 Firestone Road	Santa Barbara	CA 	93117	11	2006	105
NovaCoast	IT, Software Development and Deployment	Novacoast is a software developer specializing in custom development of identity management software, security and compliance software, Enterprise applications, B2B web applications, and open source software installation.\r	https://novacoast.com/	1505 Chapala St.	Santa Barbara 	CA 	90000	11	1996	106
Noozhawk	Journalism 	Noozhawk is a news organization that covers Santa Barbara and surrounding area which also allows for community members to contribute posts.	noozhawk.com	1327A State St.	Santa Barbara	CA 	93101	11	200	107
Noospheric	Financial Services	Noospheric is a seed Capital Investment that Yields Financial and Community Returns.	http://www.noospheric.com/	104 W. Anapamu Street, Suite K	Santa Barbara	CA 	93101	11	2001	108
Nomad	Fashion, Hardware, Mobile, Software	Nomad designs and builds innovative smartphone & smartwatch accessories.\r	http://www.hellonomad.com/	1187 Coast Village Road 638	Santa Barbara	CA	93108	11	2012	109
NGEN Partners	CleanTech, Finance, Venture Capital	NGEN Partners is an active venture investor committed to backing world class entrepreneurs.\r	http://ngenpartners.com/	1114 State St  247	Santa Barbara	CA 	93101	11	2001	110
Next Energy Technologies\r	Clean energy	Next Energy Technologies is a Santa Barbara company	https://nextenergy.tech/	5385 Hollister Avenue. Building 6, Suite 115	Santa Barbara	CA	93111	11	1900	111
NEO LMS	EdTech, Education, Software	NEO is an LMS for schools and universities that makes it easy to create great classes that students will enjoy anytime, everywhere.\r	http://www.neolms.com/	4 Embarcadero Center, Suite 1400,	San Francisco	CA 	94111	11	2007	112
MyNewFinancialAdvisor	FinTech, Finance	My New Financial Advisor provides financial analysis tools and online marketing solutions that connect consumers and financial advisers.\r	http://mynewfinancialadvisor.com/	1187 Coast Village Rd	Santa Barbara	CA 	93108	11	2011	113
Moseley	Telecommunications, wireless transmission systems	Moseley, along with its subsidiaries Axxcelera, CarrierComm, Backhaul, and Remec Broadband Wireless, provides digital transmission solutions to the telecom and broadband industries.	http://www.moseleysb.com/	82 Coromar Drive 	Santa Barbara	CA 	93117	11	1959	114
Morpheus Software	software, Animation	Morpheus Software provides various versions of photo animation/manipulation software.	http://www.morpheussoftware.net/	11 West Victoria St, Suite 207A 	Santa Barbara	CA 	93101	11	1999	115
Accsense	Electronics	Monitoring, alarm, and data logging systems for keeping tabs on voltage, temperature, current, and more.	www.accsense.com	460 Ward Drive 	Santa Barbara 	CA 	93111	11	2006	116
Polis Assist	Big Data, Mobile Apps, Parking, Transportation	Mobile app to help user find Free parking and safeguard their park from unlawful tickets\r	http://www.polisassist.com/	1187 Coast Village Rd ste 1	Santa Barbara 	CA 	93108	11	2016	117
Mission Street Manufacturing	3D Printing, Electronics, Enterprise Software	Mission Street Manufacturing creates an integrated software-hardware platform for 3D printing.\r	http://missionst.com/	807 West Mission Street	Santa Barbara	CA 	93101	11	2012	118
MindFriendly	Education, Clean Technology, Waste Management, Hardwar, Software	MindFriendly, Inc is a software creation and hardware redistribution company. Our goal is empower communities with the tools and training they need to compete with the fast paced technology industry.	http://mindfriendly.org/	119 Figueroa St	Ventura	CA	93001	11	2014	119
Milo Sensors, Inc.	Wearables, Sensor, Medical Device	Milo Sensors develops wearable biosensors that detect various chemicals in the human body based on perspiration from skin. They are developing the next generation of wearable biosensors. Their first product, PROOF (www.proofwearable.com) is a wrist-worn wearable that allows consumers to continuously track their alcohol level without the need to blow into a breathalyzer or take a blood test.	\rwww.milosensor.com	721 W. Islay St.	Santa Barbara 	CA 	93101	11	2015	120
Mercer Advisors	Advice, Business Development, Financial Services	Mercer Advisors Inc. is a total wealth management firm that provides fee-only comprehensive investment management, financial planning.\r	https://www.merceradvisors.com/	1801 East Cabrillo Boulevard	Santa Barbara	CA 	93108	11	1985	121
Menu Allergenie	Food Allergies, Nutrition	Menu Allergenie instantly creates personalized allergen-free menus for restaurant customers. It identifies allergen-free menu items, including modifiable options, and alerts customers to likely cross-contact. \r\rRestaurants enter their menu into our easy-to-use database and immediately attract new and loyal customers. In the cloud and viewable on computer, tablet or smartphone.	http://www.menuallergenie.com/	1 Main St	Santa Barbara	CA	90000	11	2014	122
Mentor	medical, aesthetics	Mentor develops innovative products for the medical aesthetics industry including breast implant devices.	http://www.mentorwllc.com/	201 Mentor Drive 	Santa Barbara	CA 	93111	11	1969	123
Maps.com	E-commerce	Maps.com is an online site that sells all kinds of maps.	http://www.maps.com/	120 Cremona Dr. Ste. 260	Santa Barbara	CA 	93117	11	1991	124
South Coast Photonics	hardware	Manufacturers thin film electronics based on a patented roll-to-roll process.	www.southcoastphotonics.com	135 Sierra Vista 	Santa Barbara 	CA 	93108	11	1900	125
Lull Ventures, LLC	E-Commerce, Furniture, Home Decor	Lull is a direct-to-consumer sleep company that sells sleep products (mattresses, pillows, protectors, etc.) exclusively via the internet.\r	https://lull.com/	3905 State St Ste 7347	Santa Barbara	CA 	93105	11	2015	126
LogicMonitor	software, SaaS, Data Center Management	LogicMonitor is a Santa Barbara-based company that provides SaaS-based data center monitoring of physical, virtual, and cloud-based IT infrastructures.	https://www.logicmonitor.com/	12 E Carrillo St	Santa Barbara	CA 	93101	11	2008	127
Local Market Launch	Advertising, Local, Search Engine	Local Market Launch offers business listings management and local presence solutions for businesses partnered with media and CMRs.\r	http://localmarketlaunch.com/	125 Harbor Way. Suite 11	Santa Barbara	CA	93109	11	2012	128
LifeForce Ventures LLC	Financials, Asset Management, Private Equity, venture capital firm, Investor firm, 	Lifeforce Ventures is a California-based company offering equity capital to seed- and early-stage startups in the United States. LifeForce Ventures, LLC operates as a venture capital firm. The Company invests in software and pharmaceutical companies. LifeForce Ventures serves customers in the State of California.\r	https://www.crunchbase.com/organization/lifeforce-ventures	106 Lincoln Blvd, No 104	Santa Barbara 	CA 	94129	11	2012	129
Legion Athletics TACFIT 805	Fitness, Exercise, Self Development, Physical Trainers	Legion Athletics TACFIT 805 is dedicated to expanding the TACFIT (Tactical Fitness) system, created by Scott B. Sonnon, to educate people how to restore, access, and improve their movement as a way of life.\rQuality movement creates a quality life; movement is it's own form of medicine and can provide enrichment into a person's life beyond just the physicality of exercise. \r\rFrom improvement of the immune system, cognitive function, and neuro-endocrine efficiency, the TACFIT system is designed to restore and improve all of these crucial areas. \r\rWith this, Legion Athletics is dedicated to taking the teachings of the TACFIT system and creating an accessible training platform to educate people on these methods for themselves according to their lives. We strive to customize the TACFIT principles to their personal histories, vocations, and goals for a lifelong holistic self care program that resonates itself beyond just existing in mediocrity. \r\rWe train to live powerfully and passionately.	http://www.tacfit805.com/	1572 Goodyear Ave	Ventura	CA	93003	11	2010	130
LaunchPoint Technologies	Engineering, design	Launchpoint Innovations (f.k.a Magnetic Moments LLC) started out engineering products for higher education, and later transition to an engineering design firm that consults for a wide range of industries including medical, aerospace, transportation and energy.	www.launchpnt.com	5735 Hollister Ave. Suite B 	Goleta	CA 	93117	11	1992	131
Kollmorgen	Electrical manufacturing, Motion systems	Kollmorgen is based in Radford,VA. They are a motion systems designer and manufacturer focuses mainly on automation in a wide range of industries including food and beverage, pharmaceuticals, and oil and gas.	www.kollmorgen.com	33 S. La Patera Lane 	Santa Barbara 	CA 	93117	11	1916	132
Kidzmet	IQ, Multiple intelligences	Kidzmet provides intelligence and personality tests for children as well as resources that allow them to unlock their full potential.	www.kidzmet.com	1 Main St	Santa Barbara	CA	90000	11	2010	133
Joseph Gregory Design	Graphic design. web development, design, SEO	Joseph Gregory is a design company providing services such as graphic design, web development, and social media marketing.	http://josephgregorydesign.com/	1118 Nirvana Road 	Santa Barbara 	CA 	93101	11	2006	134
Strategic Healthcare Programs	Health Care, real-time data, quality reports, benchmarking, performance management, patient satisfaction, quality management, home health, hospice, home infusion, CMS compliance, hospice improvement, home health improvement, homecare, home care, and skilled nursing facilities	Its been their mission to serve healthcare providers in all venues of post-acute care. Acquired by Roper Technologies in 2014.\r	https://www.shpdata.com/	510 Castillo Street	Santa Barbara	CA 	93101	10	1996	135
SerImmune	Biotechnology, Commercial, Information Technology	It is the platform maps circulating antibodies to their diverse antigens using molecular libraries composed of billions of antigen decoys\r	https://www.serimmune.com/	917 N Patterson Ave.	Santa Barbara	CA	93111	8	2014	136
iStoryTime	Software, children 	iStoryTime is a Smartphone app with storybooks of popular childrens characters such as SpongeBob Squarepants and Kung Fu Panda.	http://istorytime.com/	233 E. Canon Perdido St	Santa Barbara 	CA 	93101	6	2012	137
Linkd Media Solutions	Web development, design, and SEO	Is a design and marketing company focused on helping improve clients bottom-line through services including pay-per-click (PPC) marketing, SEO, web development, email campaigns, and more.	www.linkdmedia.com	0	Goleta	CA 	93110	5	1900	138
Inflammatory Response Research	Biotechnology, Developer Platform, Pharmaceutical	IRR is a drug development company focused on pharmaceutical products for the treatment of inflammatory disorders\r	http://www.irrinc.net/	515 E. Micheltorena, Suite G	Santa Barbara	CA 	93103	5	2011	139
Investment Group of Santa Barbara	Investment, venture and public equity portfolios	Investment Group of Santa Barbara (IGSB) is a private investment company that manages both venture and public equity portfolios.\r	http://www.santabarbaragroup.com/	1485 E Valley Rd L	Santa Barbara	CA 	93108	5	1974	140
Invenios	Nanotechnology	Invenios designs and manufactures integrated nano micro systems for companies in the semiconductor and biotechnology industries.	www.invenios.com	320 North Nopal Street 	Santa Barbara 	CA 	93103	5	2002	141
IntroNetworks	software, SaaS, Social Networking	IntroNetworks makes white-lable private social networks for various companies and groups. IntroNetworks networks focus on visualising the proximity of members to one another based on shared skills, interests, and goals. Intro network has raised over $3.5mil in Venture Capital from Adobe Systems and other investors.	http://intronetworks.com/	1280 Coast Village Circle	Santa Barbara 	CA 	90000	5	2003	142
Intri-Plex Technologies	Computer, Hardware, Manufacturing	IntriPlex Technologies, Inc. designs, develops, and manufactures components for various hard disk drives. Its products include various\r	http://www.mmi.com.sg/	751 S Kellogg Ave	Goleta	CA 	93117	4	1987	143
InTouch Health	Medical	InTouch provides an online platform that allows doctors and patients the ability to connect virtually to give and receive health care advice.	www.intouchhealth.com	7402 Hollister Avenue 	Santa Barbara	CA 	93117	4	2002	144
\rInTouch Health	Health Care, Medical, Medical Device	InTouch Health is the leader in Acute Care Telemedicine solutions.\r	http://www.intouchhealth.com/contact/	7402 Hollister Avenue	Santa Barbara	CA	93117	4	2002	145
Intervals	Software, Time Tracking SaaS 	Intervals makes Online project managemnent and time tracking software for business.	www.myintervals.com	423 N Milpas st.	Santa Barbara 	CA 	90000	4	2006	146
MineMine Kids, Inc	Children, Baby goods, Online shopping, Home Decor, Toys, E-commerce, Retail, Premium, and Digital, Fashion, Marketplace, Retail	International e-commerce marketplace dedicated to all things kids fashion, life and style.\r	https://www.mineminekids.com/	1187 Coast Village Road Suite 420	Santa Barbara	CA 	93101	4	2016	147
IMT	\rBiotechnology, Information Technology, Innovation Management, Manufacturing, Medical, Optical Communication, Sensor	IMT is focused on the design, development, prototyping, and volume production of micro-electro-mechanical systems.\r	http://www.imtmems.com/	75 Robin Hill Road	Santa Barbara	CA	93117	4	2000	148
Innovative Micro Technology (IMT)	hardware	IMT designs and manufactures micro electro-mechanical systems (MEMS).	www.imtmems.com	75 Robin Hill Road 	Santa Barbara 	CA 	93117	4	1900	149
Impulse Advanced Communications	 Hosted VoIP Business Phone System,, Network WAN Consulting, data	Impulse is a communications services provider that designs voice and data networks that prepare you for growth.\r\rFor 20 years Impulse has helped businesses gain a technological advantage by designing, implementing, and managing advanced communications networks that enable a geographically unbound workforce.\r\rImpulse's services include Dedicated Internet access, Enhanced Quality Internet Access, ClearStar hosted IP PBX service, local and long distance telephone service, hosting, co-location, managed virtual private networks and MPLS networks.  In addition to its communications services, Impulse designs, sells and manages Cisco, Adtran, and Polycom customer premise solutions.\r\rImpulse provides the greatest value to growing, multi-location businesses looking for a local single-source business communications provider with significant and accessible engineering depth to design, implement and manage their Internet, Wide Area, and Voice systems and networks.	http://impulse.net/	6144 Calle Real #200	Goleta	CA	93117	4	1994	150
\rImpact Radius	Advertising, Analytics, SaaS	Impact Radius enables digital brands and agencies to maximize their return on ad spend across digital, mobile and offline channels.\r	http://www.impactradius.com/	223 E De La Guerra St	Santa Barbara	CA	93101	4	2008	151
Impact Radius	Online Marketing, Attribution Technology	Impact Radius develops online advertising technology that aids in advertiser/publisher relationship management, multi-channel tracking, analytics and sale attribution. Impact Radius has raised over $6mil in Venture Capital from Redpoint Ventures.	https://www.impactradius.com/	223 East De La Guerra Street	Santa Barbara	CA 	93101	3	2008	152
Impact Hub of Santa Barbara, LLC	Incubators, Coworking, Event Space, Office Rental,	Impact Hub Santa Barbara is an accelerator/incubator in Santa Barbara. They provide a remarkable space for productive work, a driven community that resides at the intersection of technology and social good, and a diverse selection of programming and mentoring to equip their members with the tools they need to develop their idea. Their community helps entrepreneurs and businesses consider the social and environmental impact of their business practices, while also pushing philanthropists and non-profits to become self-sustaining through collaboration and more efficient business models.\r\rImpact Hub Santa Barbara is a membership-based community. It provides a collaborative work environment and event space for entrepreneurs, activists, creatives, and professionals who are taking action to drive positive social and environmental change. More than just a space to convene, the Impact Hub provides curriculum and development opportunities. Groups can coordinate efforts and thrive under one roof as they instigate positive change within their community and abroad. Elegant and versatile, their space fosters collaboration and creativity for individuals, groups, and events. Led and managed by entrepreneurs, Impact Hub Santa Barbara will create deeper, richer community connections, and foster new initiatives for the next generation of leaders.\r\r\r	https://impacthubsb.com/	1117 State Street,	Santa Barbara	CA 	93101	3	2014	153
iMechanics	IT Company, Computer Systems, Software 	iMechanics offers electronics service and repair, cabling, network repair, audio/visual design and installation, lighting control, security and video installation and monitoring, and internet and voice services. iMechanics acquired MacSuperstore and MacMechanic and partnered with SecurePro.	http://www.imechanics.com/	216 E. Gutierrez St. 	Santa Barbara 	CA 	90000	3	1900	154
iCrumz	Software, Social Bookmarking, Developer Tools	iCrumz is a cloud-based personal bookmarking platform that enables its users to get to their favourite websites.            iCrumz is pioneering a new software product category we call 'digital launchpad.' In a single interface iCrumz gives you 1-click access to your favorite websites, files, software apps and other online content from any Internet-connected device. It automagically predicts what you want to do next on whatever device you're using and puts it all at your fingertips. There's nothing else like it.\r\rPut simply, iCrumz makes it easier to get to the content you care about.\r\r	https://icrumz.com/	505 Poli St	Ventura	CA	93001	3	2011	155
\rIce Energy	Clean Energy, Energy Storage, Power Grid, Renewable Energy	Ice Energy is focused on developing utility-scale distributed energy resources and storage technologies for clean energy.\r	http://www.ice-energy.com/	 3 E. De La Guerra St.	Santa Barbara	CA	93101	3	2003	156
Hyper Solar	Renewable energy	Hyper Solar is a publicly-traded company exploring fuel cell technology to make green hydrogen by using electrolysis and photosynthesis.	www.hypersolar.com	32 E. Micheltorena Suite A 	Santa Barbara	CA 	93101	3	2008	157
Home Savi	Real Estate, SaaS	Home Savi replaces the need for a buyers agent by giving you the tools to offer, close and save on your home purchase.\r	https://www.homesavi.com/	224 Anacapa St #2a	Santa Barbara	CA 	93101	3	2015	158
Forbidden Leaf	Beauty, Marijuana, Natural Skin Care, Health and Wellness	High quality hemp seed moisture for your skin. Forbidden Leaf Hemp Seed Oil Lotion and Soap Company is a High-Quality Cannabis Sativa "Cold Pressed" Hemp Seed Oil Skin Care Brand. \r\rWe utilize only the best moisturizing and healing plants that nature has to offer.	http://www.forbiddenleaf.com/	333 Central Ave #572	Fillmore	CA	93003	3	1900	159
Renovations By Brittney, Inc.	Real Estate, Architecture, Interior Design, Interior Design & Construction	High end house renovations. Turning houses back into homes!\r	http://www.brittneyferro.com/	785 South Seaward Avenue	Ventura	CA	93001	3	2014	160
HG Data	software, Data	HG Data is building a business intelligence database from unstuctured web data across several verticals. Basically they sell leads of businesses that use or need particular enterprise software. HG data has raised about $3m in funding.	https://www.hgdata.com/	1 N Calle Cesar Chavez, STE 100	Santa Barbara 	CA 	93103	3	2010	161
HG Data	software, competitive intelligence	HG Data is a competitive intelligence company that allows sales and marketing teams to see what software programs their competitors have installed in order to stay ahead of the game.	www.hgdata.com	1 N Calle Cesar Chavez, STE 100 	Santa Barbara	CA 	93103	3	2001	162
Freudenberg Medial/Helix Medical	Medical	Helix Medical is a custom manufacturer for medical devices. It was acquired by Freudenberg Medical but still retains its office as the U.S. HQ for Freudenberg.	www.freudenbergmedical.com	1110 Mark Avenue 	Carpinteria	CA 	93013	2	1984	163
Hammer Capital Management	Information Technology and Services, Investment Software	Hammer Capital Management is a Santa Barbara based investment adviser specializing in technology sector growth investing.\r	http://www.hcmi.com/	800 Garden St L	Santa Barbara	CA 	93101	2	2007	164
Groundswell Technologies	Enterprise Software, Environmental Consulting, Service Industry 	Groundswell Environmental is an Environmental Services company located in Pleasantville, New Jersey, United States.\r	http://www.groundswelltech.com/	136 West Canon Perdido Ste.C 	Santa Barbara 	CA 	93101	2	2004	165
Green Hills Software	Software	Green Hills makes equipment embedded operating systems	http://www.ghs.com/	130 Robin Hill Rd,	Goleta	CA 	90000	2	1982	166
Gravity Power	Energy storage	Gravity Power provides energy storage technology for large scale grids.	http://www.gravitypower.net/	5735 Hollister Avenue 	Goleta	CA 	93117	2	1900	167
Global Performance Technologies	software, HR	Global TQ provides a wide range of HR analytics software for companies such as testing the intelligence of prospective applicants and resume screening.	www.gpt3.net	7100 Georgetown Rd. 	Santa Barbara 	CA 	93117	2	1900	168
Galaxy Venture Capital	Venture Capital, Investment, Strategic Partnerships, Fund Investment Vehicles, Investment Advisory	Galaxy Venture Capital helps entrepreneurs elevate their enterprise to it's true potential\r	http://www.galaxyventurecapital.com/	3463 State St	Santa Barbara 	CA 	93105	2	2015	169
FUTURAWIND	Clean Energy, Engineering Firms, Renewable Energies, Innovation Engineering	FUTURAWIND is a wind energy technology research and development company that designs and engineers complete wind turbine generator systems ranging from 100 kW to 25 MW for the on- and off-shore wind energy markets. Our technology enables companies to enter the wind power industry within one year as wind turbine manufacturers via licensing and technology transfer.	http://www.futurawind.com/	515 S. Flower Street	Ventura	CA	90071	2	2010	170
FuelBox	Smartphone, Electronics	FuelBox provides an innovative phone charger that doubles as both a wall plug and a portable battery charger.	https://myfuelbox.com/	114 E Haley St k	Santa Barbara 	CA 	93101	2	1900	171
Frontier Technology	Software, engineering, operations	Frontier Technology is a Ohio-based company that provides engineering support to governmental agencies regarding systems, operations, and IT management.	www.fti-net.com	130 Robin Hill Road, 200 	Goleta	CA 	93117	2	1985	172
DFJ Frontier	\rDigital Media, Finance, Venture Capital	Frontier invest mainly in startups working in the spaces of media and technology.	http://www.draperfrontier.com/	100 Wilshire Blvd.\rSuite 1270	Santa Monica	CA	90401	2	2002	173
Freudenberg Medical	medical 	Freudenberg Medical (f.k.a Helix Medical and MedVenture) is a medical device manufacturer with a large portfolio of products across many disciplines of medicine from ear, nose, and throat to cardiovascular surgery.	www.freudenbergmedical.com	1110 Mark Ave	Carpinteria	CA 	93103	2	1984	174
Freedom Photonics	Photonic Integrated Circuits	Freedom Photonics is a manufacturer of optical products including lasers with semiconductor optical amplifiers, photodetectors, transmitters, and laser controllers.	http://freedomphotonics.com/	41 Aero Camino 	Santa Barbara 	CA 	93117	2	1900	175
Freedcamp	Collaboration, Enterprise Software, Messaging, Project Management	Freedcamp is a web application that allows users to collaborate on projects.\r	https://www.freedcamp.com/	3066 Foothill Road	Santa Barbara	CA	93103	2	2011	176
BONQO / ELLA Internet Technologies, Inc.	Classified Listings and Online Classified Ads	Free Online Classified Ads\r	http://www.bonqo.com/	402 E Gutierrez St. 	Santa Barbara	CA 	93101	2	2010	177
Foxy's Cultured Ice Cream	Organic Food, Specialty Foods, Food and Beverages, Natural Food Grocers	Foxy's Cultured Ice Cream is a premium, super low sugar ice cream that has a sensational dairy texture and taste, and loaded with a beneficial level of probiotics endorsed by the National Yogurt Association. Foxy's is now a thoughtful ice cream: super premium, hand made with probiotics and less sugar, we responsibly source our ingredients.	https://thoughtfulicecream.com/	1 Main St	Ventura	CA	90000	2	2014	178
Transphorm	Engineering/ Clean Tech, Power Conversion	Founded by UCSB researcher Primit Parikh Ph.D and UCSB professor Umesh Mishra Ph.D., Transphorm manufactures ultra-efficient power conversion modules built using proprietary Gallium Nitride based technology.	http://www.transphormusa.com/	115 Castilian Dr	Goleta	CA 	93117	2	2007	179
Inogen	Medical Device, medical 	Founded by TMP students Ali Perry, Byron Meyers, and Brenton Taylor, Inogen is a developer of portable oxygen compressor devices, an alternative to large oxygen tanks for people suffering from chronic obstructive pulmonary disease. Inogen has raised over $66 million dollars from Accuitive Medical Ventures, Arboretum Ventures, Avalon Ventures, Novo A/S and Versant Ventures.	https://www.inogen.com/	326 Bollay Dr	Goleta	CA 	90000	2	2001	180
Soraa	Semiconductors, Materials, Solid State Lighting, hardware	Founded by researches/professors Shuji Nakamura, Steven Denbaars and James Speck of UCSB, Soraa developer of LED and laser-based lighting and projection display technology. The company utilizes unique technology relating to the growth of Gallium Nitride wafers to create high efficiency blue and green lasers and LEDs. Soraa was founded in Fremont, CA	https://www.soraa.com/	485 Pine Ave. 	Goleta	CA 	90000	2	2008	181
AppFolio	software, SaaS 	Founded by Klaus Schauser (of Expertcity) Appfolio makes a SaaS based program that property management companies use run their business. Appfolio also has plans to make business management SaaS for other kinds of businesses in the future. AppFolio has taken in $30mil in Venture Capital funding from BV Capital, Cisco, and the Investment Group of Santa Barbara (IGSB).	https://www.appfolio.com/	55 Castilian Dr	Goleta	CA 	93117	2	2006	182
ABC-CLIO	software, education	Founded by Eric and Inge Boehm, ABC-CLIO makes publishing software for bibliographical references and research databases.	www.abc-clio.com	130 Cremona Drive	Goleta 	CA 	93117	2	1955	183
Active Life Scientific	Medical Devices, Diagnostic Instruments, hardware	Founded by Davis Brimmer and Alex Proctor originally as a project for the TMP New Venture Competition, Active Life Scientific develops and manufactures a medical device called BioDent which measures bone tissue strength by making a tiny dent on the surface of the bone using a highly sensitive needle, commercializing a technology developed at UCSB by Paul Hansma PhD. Active life has raised over $200k in seed stage funding.	http://www.activelifescientific.com/	10 East Yanonaoli Street	Santa Barbara 	CA 	90000	2	2007	184
Phone Halo	Communications,Phone Accessory, Proximity Senso\r	Founded by Chris Herbert and Christian Smith originally as a project for the TMP New Venture Competition, Phone Halo develops, manufactures, and sells a device that senses the distance between your cell phone, and another object like your keys, and alerts you when you lose them by beeping and activating an app on the phone.	http://www.phonehalo.com	316 State St.	Santa Barbara 	CA 	90000	2	2008	185
Invoca 	Online Marketing, Advertising Network 	Founded by a local group of three former CallWave guys, RingRevenue is a technology company that provides a complete cloud-based solution for call marketing automation. Their platform provides detailed attribution and analytics, complete campaign management and mobile optimization tools to give marketers insight and control on the quality of inbound phone calls, plus the ability to optimize spend. RingRevenues pay-per-call features enable ad publishers to be paid by advertisers based on the quantity and quality of phone calls they drive to an advertisers call center. RingRevenue has partnerships with Fortune 1000 and Inc 500 brands, premier agencies and media publishers, and is also integrated into the major performance marketing networks, such as local company Commission Junction, and Rakuten Linkshare. RingRevenue has raised $10mil of Venture Capital from GRP Partners, Rincon Venture Partners, and Great Pacific Capital.	https://www.invoca.com/	1025 Chapala St	Santa Barbara	CA 	93101	2	2008	186
Tecolote Research	 Software Tool Development, Risk Management, Cost Research & Analytics, Technical Baselines, Data Collection, Methodology Development, Predictive Cost Modeling, Integrated Services, Financial Management	For over 40 years, Tecolote Research has improved our clients ability to make effective strategic and financial decisions. We continue to work extensively with numerous public and private organizations and all levels of management, providing decision support on our nations most sensitive and critical programs.  Tecolotes reputation as a provider of high quality technical products has resulted in sustained customer retention of over 90%.\r\rTecolote is known to provide comprehensive, credible solutions; what sets us apart is our staffs diversified technical/business backgrounds and recognized expertise. We offer a challenging environment, an enthusiastic culture, and a high-end benefits package, all of which helps us attract and retain the type of people that will drive Tecolote forward.  We are proud to be a 100% employee-owned private business with over 550 people in 30 locations nationwide.\r\r	https://www.tecolote.com/	420 S. Fairview Avenue, Suite 201	Goleta	CA	93117	2	1973	187
FLIR Systems	thermal imaging	FLIR Systems (f.k.a Indigo Systems) is a company that builds thermal imaging cameras and sensors for many applications including night vision, smartphone applications, and X-rays.	www.flir.com	6769 Hollister Ave	Goleta	CA 	93117	2	1978	188
FastSpring	e-commerce	FastSpring provides a comprehensive e-commerce platform for software companies (especially Mac software publishers) to sell software and review payments.	https://fastspring.com/	801 Garden St #201	Santa Barbara 	CA 	93101	2	2005	189
MoonTech Studios	Software, Video Games, Digital Entertainment	Ex-Guitar Hero developers starting a game industry tools company.	http://www.moontechstudios.com/	51 W Shoshone St	Ventura	CA	93001	2	1900	190
EVMatch 	Electric vehicles,  Cleantech, Clean energy, 	EVMatch Connects Electric Vehicle Drivers with Charging Stations. EVmatch is a sharing platform for the  electric vehicle (EV) community that redefines the public charging experience to better support all EV drivers. Through EVmatch, individuals rent out their private charging stations, helping communities share charging resources and support more EVs on the road. EV drivers leverage the sharing economy to easily find nearby, affordable charging, while station owners generate earnings by renting out their home charging infrastructure. EVmatch empowers a new generation of EV owners by providing a reliable and convenient charging solution to those lacking dedicated charging access, such as renters and multi-unit dwellers.	https://www.evmatch.com/	600 Pine Avenue	Goleta	CA	93117	2	2016	191
Eucalyptus Systems	software, Cloud Computing 	Eucalyptus Systems develops and supports open-source software that allows firms to use their own computers and private datacenters as a private or hybrid cloud computing resource. Eucalyptus has taken over $25mil in funding from New Enterprise Associates, Benchmark Capital, and BV Capital.	https://www.eucalyptus.com	130 Castilian Dr	Goleta	CA 	93117	2	2009	192
Estalea	Investing, Investor Firm, internet, marketing, technology, and incubator	Estlea is a technology holding company that gives portfolio companies capital, training, and management in order to scale and operate them for success.	www.estalea.com	223 East De La Guerra Street	Santa Barbara	CA	93101	1	2004	193
Advanced Propulsion Technologies	science	Engineers combustion engines for defense and aerospace, automotive, and consumer applications.	www.propulsiontech.com	69 Santa Felicia Dr. 	Goleta 	CA 	93117	1	2002	194
EG Technologies	IT	EG Technologies is an IT service company that offers services such as network, cloud, and data solutions.	http://www.egtechsb.com/	420 E Carrillo St	Santa Barbara	CA 	93101	1	2007	195
Edhat	Online publishing	Edhat is an online news site that offers the Santa Barbara community articles, events, classifieds section, and more.	https://www.edhat.com/	PO Box 3846	Santa Barbara	CA 	93130	1	1900	196
Athenaeum Capital Partners LLC	Venture capital firm, Investment, technology-based products	Early-stage investing/advisory in research and science technology.	www.athcap.com	559 San Ysidro Road, Suite 1 	Santa Barbara	CA 	93108	1	2002	197
DropSmashFix	Mobile, e-commerce	DropSmashFix opened its 1st location at 1880 E Main Street in Ventura, CA in December of 2012. Within a few months, the business began expanding in Los Angeles with a second location opening in Santa Monica. There are now 6 DropSmashFix locations across Southern California, with many more on the horizon!\r\rDropSmashFix is on a mission to become the market leader in the electronics repair industry. 	http://www.dropsmashfix.com/	1880 E Main St	Ventura	CA	93001	1	2012	198
PixiePath	Drones, Fleet Management, Internet, Cloud Apps for Quadcopters	Drone Fleet Orchestration Platform\r	http://pixiepath.com/	351 Paseo Nuevo. 2nd Floor	Santa Barbara 	CA 	93101	1	2014	199
Anchore, Inc.	Computer, Enterprise Software, Information Technology, SaaS	Discover, analyze, and certify containers on your own terms.\r	https://anchore.com/	1 Main St. 	Santa Barbara	CA	90000	1	2016	200
Direct Relief	Charity, Humanitarian, Medical	Direct Relief is a humanitarian medical aid organization.\r	https://www.directrelief.org/	27 S. La Patera Lane	Santa Barbara 	CA 	93117	1	1948	201
DigiFit	Apps, Fitness, Health Care, Mobile, Wireless	Digifit offers health and fitness solutions using sensors and wearable technology integrated with the cloud and mobile devices.\r	http://www.digifit.com/	1501 Chapala	Santa Barbara	CA	93101	1	2008	202
DigiFit 	Wearable technology, Fitness, software, hardware	DigiFit is a fitness app that, combined with wearable products, tracks your fitness both in terms of distance and personal health.	www.digifit.com	532 Santa Barbara Street Suite B 	Santa Barbara 	CA 	93101	1	2008	203
Anasys	Thermos analysis instruments, Infrared Spectroscopy, science	Develops instruments and technology for nanoscale spectroscopy and imaging for applications in life sciences, mapping, and more.	www.anasysinstruments.com	325 Chapala Street 	Santa Barbara 	CA 	93101	1	1900	204
DAKO	medical, hardware	DAKO provides tissue-based cancer diagnostic equipment for pathologists. It was acquired by Agilent in 2012 but remains a subsidiary.	www.agilent.com	6392 Via Real 	Carpinteria	CA 	93013	1	1966	205
D2 Technologies	software, IP Communications	D2 Technologies provides IP communication software for a wide range of devices including smartphones, smart TVs, and WiFi headsets.	www.d2tech.com	104 West Anapamu Street Suite J 	Santa Barbara 	CA 	93101	1	1900	206
D2 Technologies	Communications, VOIP, softwarwe	D2 technologies develops software for online IP communication, including digital signal processing, voice and video communication and instant messaging for smart phones.	http://d2tech.com/	104 W Anapamu St, Suite J	Santa Barbara	CA 	93101	1	1993	207
CytomX Therapeutics	Biotechnology, Health Care, Therapeutics	CytomX Therapeutics is an early-stage biotechnology company developing Probodies, proteolytically-activated antibodies.\r	http://www.cytomx.com/	151 Oyster Point Blvd 400	South San Francisco	CA	94080	1	2008	208
CYPHER LEARNING	E-Learning, Education, 	CYPHER LEARNING is a company that specializes in e-learning platforms for universities, businesses, and organizations around the world\r	http://www.cypherlearning.com/	4 Embarcadero Center, Suite 1400	Santa Barbara	CA 	94111	1	2007	209
SaurikIT LLC	Apps, Software	Cydia is an application that enables users to find and install software packages on 'jailbroken' iOS devices.\r	http://www.saurikit.com/	1 Main St	Isla Vista	CA 	90000	1	2008	210
Cycad Group	Venture capital firm, equity investments, investment	Cycad is a VC firm that makes investments at all stages of a startup in many industries, but with a focus on energy technologies; advanced materials and chemical processes; and life sciences (e.g., biotechnology, pharmaceuticals, medical devices).	http://www.cycadvc.com/	1270 Coast Village Circle, Suite 100	Santa Barbara	CA 	93108	1	2000	211
SocialStay	Hospitality, Mobile, Web Development	Customizable mobile applications\r	http://www.socialstay.com/	1 Main St. 	Santa Barbara	CA 	90000	1	2010	212
Curvature	IT Company, Computer Networking, Cabling & Services	Curvature provides network and data center services including procurement, maintenance, and upgrading for 10,000+ organizations. It was founded in 1986 and has additional offices in the U.S., Asia, and Europe.	www.curvature.com	6500 Hollister Ave., Ste. 210 	Santa Barbara 	CA 	93117	1	1986	213
Current Analytics	Energy, Buildings, software	Current Analytics helps businesses integrate and monitor their energy systems in order to reduce building energy consumption.	www.currentanalytics.com	338 La Marina Dr	Santa Barbara 	CA 	93109	1	2009	214
Channel Technologies Group (CTG)	hardware	CTG creates piezoelectric ceramics & transducers, optics, and other technologies for the military and other commercial industries.	www.channeltechgroup.com	879 Ward Drive 	Santa Barbara 	CA 	93111	1	1959	215
Crystalline Mirror Solutions\r	Manufacturing, Optical Communication, Semiconductor	Crystalline Mirror Solutions manufactures low-noise reflective optics using a proprietary coating technology.\r	http://www.crystallinemirrors.com/	114 E Haley St., Suite G	Santa Barbara	CA	93101	1	2012	216
CREE	Lighting, LED and Semiconductors	CREE develops innovative, efficient, and eco-friendly LED lighting, components, and chips.	www.cree.com	340 Storke Rd	Goleta 	CA 	93117	1	1987	217
Core Oncology	Health Care, Medical, Medical Device	Core Oncology was founded September 15, 2006 by the existing management of the brachytherapy business owned by Coloplast, formerly Mentor,\r	http://www.coreoncology.com/	3916 State St Ste 110	Santa Barbara	CA 	93105	1	2006	218
Conduce	software, Data	Conduce is a data unification and visualization company that provides technology to better understand data in order to make more informed decisions across a wide range of industries such as government, retail, energy, and travel.	www.conduce.com	1180 Eugenia Place Suite 103 	Carpinteria	CA	93013	1	2013	219
Conversant 	Online Marketing Advertising Network, software 	Commission Junction is the largest online affiliate advertising network. Enabling website publishers to earn a commission on sales generated from website traffic sent by them to online merchants. Commission Junction was acquired by ValueClick in 2003 for $58mil. ValueClick also runs other types online advertising campaigns through their various divisions out of their Santa Barbara office.	https://www.conversantmedia.com/	530 E Montecito St	Santa Barbara	CA 	93103	1	1998	220
CommandSoft	software, data storage	CommandSoft provides storage area network (SAN) management for the media and entertainment industry.	www.commandsoft.com	3345 State Street #3063 	Santa Barbara 	CA 	93130	1	2003	221
Cogi	Software, Productivity, Startup	Cogi software transcribes audio to text. Allowing users to capture, review and share the ideas from meetings, lectures and phone calls.\r	https://cogi.com/	901 Olive Street	Santa Barbara 	CA 	90000	1	2007	222
Cogi	software, communications	Cogi lets you record audio such as meetings, phone calls, lectures, etc. and highlight specific points of conversation that you can refer back to later.	https://cogi.com/	27 W. Anapamu St., Suite 290	Santa Barbara 	CA 	93101	1	2007	223
Cocoon | Virtual World Computing	SaaS, Search Engine, Security, Software, Mobile & Online Security, Privacy, Online Proxy, Cloud Software, and Children Protection	Cocoon Internet Privacy/Security/Search Engine\r	https://getcocoon.com/company	5383 Hollister Avenue, Suite 140	Santa Barbara	CA 	93111	1	2008	224
ClarionDoor	SaaS, Rating Engine, User Interface, Integration, Web Services, Cloud, APIs, SOA, Rating, Quote, Bind/Issuance, software	ClarionDoor, LLC provides rating and quoting solutions for insurance organizations.\r	http://www.clariondoor.com/	17 El Paseo	Santa Barbara	CA 	93101	1	2010	225
CJ Affiliate 	Marketing, e-commerce	CJ Affiliate is a Santa Barbara-based marketing company for online retailers that provides services such as loyalty programs and pay-per-click across a wide range of industries.	www.cj.com	530 East Montecito St.	Santa Barbara 	CA 	93103	1	1998	226
Chimeros	Biotechnology, Developer Platform, Therapeutics	Chimeros develops therapies for cancer treatment.\r	https://www.crunchbase.com/organization/chimeros	5385 Hollister Ave. Suite 105	San Diego	CA	93111	1	2004	227
Changing Tides Addiction Treatment	Healthcare, Mental Health, Rehabilitation	Changing Tides Treatment is a Mental Health and Substance Use Disorder Treatment Center. We help people manage Mental Health issues through psychology, psychiatry, pharmacology, Group Therapy, Individual Therapy, Family Therapy, and other specialty groups. Our targeted demographics are 18 and over and have Mental Health issues and or problems with alcohol/drugs. At this time we offer Outpatient services with supportive housing available to those clients that need the extra supervision and accountability. We opened in March of 2015 now a little over a year and a half old, we are opening our 2nd facility which will be a higher level of care for those we serve. The new location will be a Detoxification center and Residential Treatment center. \r	https://changingtidesaddictiontreatment.com/	2021 Sperry Ave Suite 18	Ventura	CA	93003	1	1900	228
Celerus Diagnostics	Biotechnology, Health Diagnostics, Panel-Based Immunohistochemistry, In situ hybridization, Mohs Micrographic Surgery, STAT Requests in Routine Pathology, Reflex Testing, and Continuous Flow Throughput in Routine Pathology	Celerus Diagnostics develops solutions for anatomic pathology, provides clinicians with diagnostic information, and advances patient care.\r	http://celerusdiagnostics.com/	1005 Mark Ave	Carpinteria	CA	93013	1	2004	229
Celebros	Software	Celebros provides search engine technology for e-commerce sites using natural language processing (NLP) technology.	www.celebros.com	925 De La Vina St. 	Santa Barbara 	CA 	93101	1	2000	230
CBRITE	hardware	CBRITE produces and designs polymer semi-conductors for sensors and displays which have been applied to the medical industry in machines such as x-rays and cancer testing.	http://cbriteinc.com/	421 Pine Avenue 	Goleta	CA 	93117	1	2002	231
CBRITE	Enterprise Software, Hardware, Manufacturing	CBRITE develops a new transistor technology for driving high performance LCDs and AMOLED displays.\r	http://cbriteinc.com/	421 Pine Ave. 	Goleta	CA	93117	1	2002	232
Carbon Sciences	software, Cloud Computing	Carbon sciences is developing fiber optics technology for increasing the communication speed between data centers and devices for cloud computing.	http://carbonsciences.com/	5511-C Ekwill Street 	Santa Barbara 	CA 	93111	1	1900	233
cielo24	Media technology	Capturing the rise in online media, cielo24 allows for searchable media by creating captioned video content and meta data which allows for the organization of media content.	https://cielo24.com/	1029 State Street 	Santa Barbara 	CA 	93101	1	2012	234
Canndescent\r	 Marijuana	Canndescent has created a brand of cannabis flower produced, packaged and distributed in accordance with all state and local laws.\r	http://www.canndescent.com/	3905 State Street\rSuite 357	Santa Barbara	CA	93105	1	2015	235
CallWave	Enterprise Software, Mobile, Online Portals	CallWave is a provider of internet and mobile-based unified communications solutions enabling mobile professionals to collaborate.\r	http://www.callwave.com/	136 W Canon Perdido St Ste A	Santa Barbara	CA 	93101	1	1998	236
Calix	Telecommunications	Calix is a telecommunications & broadband equipment provider providing software, cloud, and system solutions.	www.calix.com	315 Bollay Drive Suite 100	Goleta	CA 	93117	1	1999	237
Calient	Telecom	Calient designs and manufactures MEMS photonic switching equipment.	www.calient.net	25 Castilian Drive 	Goleta	CA 	93117	1	1999	238
eReferralPro	Health Care, Health Care Information Technology, SaaS, cloud based applications 	Buena Digital, creator of eReferralPro, was contacted to create a referral system for a client to replace their old, outdated system for managing their ever growing referral department. After careful analysis of their needs and pain points, a new web based system was put into place saving tens of thousands of dollars a year while speeding up referral processing time by over 80%. Buena Digital is focused on building hand crafted, custom cloud based applications to the healthcare industry.	http://www.ereferralpro.com/	265 S. Laurel Street	Ventura	CA	93001	1	2013	239
Blue Casa	Telecom, phone service	Blue Casa provides economical calling services for landlines and businesses mainly between the U.S. and Mexico, as well as other South American countries.	www.bluecasa.com	114 E. Haley Street, Suite A	Santa Barbara 	CA 	93101	1	1900	240
Bizzler Corporation	Advertising	Bizzler produces entertaining video & graphic ads for promoting products and services on the internet & mobile devices.\r	http://www.bizzler.com/	3463 State St. 160	Santa Barbara 	CA 	93105	1	2011	241
BioIQ	software, Health & Wellness	BioIQ provides organizations with a platform for measuring individuals health through health kits and screenings to detect illnesses from lab results, and potential solutions with health care providers if needed.	www.bioiq.com	1222 State Street Suite 200 	Santa Barbara 	CA 	93101	1	2005	242
Baswood	Environmental Consulting, Industrial, Waste Management	Baswood offers a range of industrial and municipal markets with technology solutions to treat wastewater and bio-solids.\r	http://www.baswood.com/	109 East De La Guerra Street	Santa Barbara	CA	93101	1	2004	243
ActiveLife Scientific	science, biomedical 	ActiveLife Scientific develops research instruments for bone and tissue testing using Reference Point Identification technology.	www.activelifescientific.com	27 E Cota St 503 	Santa Barbara 	CA 	93101	1	2007	244
Ojai Holding Company	Business Development Services, Cooperative Business Cultivator, Retail	Based in California, we are a holding company of assets that share resources to grow stronger, together. Our focus is on Business Development Services.\r\rThese services incorporate sales strategies, marketing & branding development as well as social media content management to create a growth strategy that is sustainable.\r\r	http://ojaiholdingcompany.com/	1 Main St	Ventura	CA	90000	1	2014	245
BAROnova	Medical, Weight loss	BAROnova is pioneering the technology behind weight loss medical procedures that do not require surgery nor medicine. It has recently received $36.5 million in Series D funding for developing the TransPyloric Shuttle which features endoscopic technology. Investors include Delos Capital, Longitude Capital, Lumira Capital Partners, ONSET Ventures and Sante Ventures.	https://baronova.com/	281 Magnolia Ave. Ste 300 	Goleta 	CA 	93117	1	2006	246
barkback	Enterprise Software, Mobile, SaaS	Barkback's SaaS platform enables business owners to gain new insights in their operations and customer relations.\r	http://www.barkback.com/	27 West Anapamu Street. Suite 139	Santa Barbara	CA	93101	1	2011	247
Bardex 	Manufacturing, Oil & Gas	Bardex creates heavy lifting machines for the offshore oil and gas and shipyard industries, as well as providing engineering consulting services from cost estimations to equipment needs analysis.	www.bardex.com	6338 Lindmar Drive 	Goleta 	CA 	93117	1	1900	248
Axxcelera	Telecom, wireless broadband	Axxcelera is a Santa Barbara-based network infrastructure company that provides wireless broadband technology for internet access, especially in remote locations.	www.axxcelera.com	82 Coromar Drive 	Santa Barbara 	CA 	93117	1	2001	249
Avant Global	Business Development, Venture Capital	Avant Global is a leading business advisory and venture capital firm headquartered in Santa Barbara, CA\r	http://avantglobal.com/	22 El Paseo	Santa Barbara 	CA 	93101	1	1999	250
AutoVitals	Software, Cloud, Marketing	AutoVitals provides cloud-based marketing software for the auto industry.	www.autovitals.com	26 Castilian Drive Suite A 	Goleta	CA 	93117	1	2009	251
Aurrion, Inc.	Data Center, Manufacturing, Semiconductor	Aurrions heterogeneous integration technology enables the manufacturing of best-in-class optical solutions with a cost-effective process.\r	http://www.aurrion.com/	6868 Cortona Dr C	Goleta	CA	93117	1	2008	252
Aurrion	Materials	Aurrion produces photonics and silicon based microsystems.	http://www.aurrion.com/	130 Robin Hill Rd,	Goleta	CA 	90000	1	2007	253
Elite Meetings International	Health Care, Medical, Pharmaceutical	At EliteMeetings.com, they're fortunate to work with an incredible group of people from the hospitality and meetings industries.\r	http://elitemeetings.com/	925 De La Vina St. 300	Santa Barbara	CA 	93101	1	2006	254
AstUtemy	Online Education, Accounting, software	AstUtemy is an online learning platform with videos, webinars, Q&As, and more targeting accountants and business owners.	http://www.schoolofbookkeeping.com/	1187 Coast Village Rd, Ste 575,	Santa Barbara	CA 	93108	1	2014	255
Aquantis	Renewable Energy	Aquantis is developing cutting-edge marine turbines which build on existing wine turbine technology by utilizing ocean currents.	www.aquantistech.com	101 East Victoria Street, Suite F 	Santa Barbara 	CA 	93101	1	2001	256
Aptitude Medical Systems	Medical	Aptitude unlocks the potential of aptamers to solve the fundamental problems of antibodies.\r	http://www.aptitudemedical.com/	2219 Bath St	Santa Barbara	CA	93105	1	2005	257
AppScale Systems, Inc.	PaaS, Enterprise Software, Big Data, Cloud Computing	AppScale, the world's most popular open source PaaS. With AppScale you can run your App Engine app on any physical or cloud infrastructure, wherever you want. AppScale is 100% open source and can be deployed on Google Cloud Platform, Amazon Web Services, Microsoft Azure, AliCloud from Alibaba, IBM SoftLayer or any other Public, Private or Hybrid Cloud.	https://www.appscale.com/	800 Anacapa St Ste A	Santa Barbara 	CA 	93101	1	2013	258
AppScale	IT, Cloud	Appscale makes Platform-as-a-service software for businesses which allows users to host their google and other apps on their own servers.\r	http://appscale.cs.ucsb.edu/	1 Main St. 	Santa Barbara	Ca	90000	1	2009	259
AppScale Systems	Big Data, Cloud Computing, Enterprise Software, PaaS	AppScale is an open source implementation of the world's most popular PaaS, Google App Engine. Choose any public, private or hybrid cloud.\r	http://appscale.com/	222 E Canon Perdido St	Santa Barbara 	CA 	93101	1	2013	260
Apeel Sciences	\rAdvanced Materials, Agriculture, Biotechnology	Apeel creates products from natural plant extracts that reduce reliance on pesticides and increase produce quality and crop yield.	http://apeel.com/	71 S Los Carneros Rd	Goleta	CA	93117	1	2012	261
Ansible	IT, Software Development and Deployment	Ansible is an IT orchestration engine that makes applications and systems easier to deploy.	http://www.ansibleworks.com/	1482 East Valley Road, Suite 888	Montecito	CA 	90000	1	2012	262
Anchor Point IT Solutions	software, software support	Anchor Point IT Solutions partners with small to mid sized businesses and non-profits to provide them with comprehensive user level and network level technology support and services for a flat monthly rate.	http://www.ap-its.com/	213 Santa Barbara Street	Santa Barbara 	CA	93101	1	2005	263
Anchor Point IT Solutions	IT Company, Computer Networking, Cabling & Services	Anchor Point focuses on IT managed services to businesses by charging a monthly rate that includes backup and recovery, security, VoIP, hosting, and more.	www.ap-its.com	213 Santa Barbara Street 	Santa Barbara 	CA 	90000	1	1900	264
Agilysys	software, hospitality	Agilysis (f.k.a InfoGenesis) provides software solutions for hospital companies which include a wide variety of functions for managing sales, inventory, property, events, labor, and more.	www.agilysys.com 	5383 Hollister Ave, Suite 120 	Santa Barbara	CA 	93111	1	1963	265
Agility Capital	Credit, Financial Services, Venture Capital, Venture Debt, Loans, Lines of Credit, Debt Financing, Venture Loans, 	Agility provides short-term loans to emerging startups.	www.agilitycap.com	812 Anacapa St. Ste A 	Santa Barbara	CA 	93101	1	2000	266
Agility Communications	Laser, Manufacturing, Optical Communication	Agility Communications provides laser solutions such as tunable transponder and laser for the optical network. Acquired in 2005\r	http://agilitycg.com/get-in-touch/	475 Pine Avenue	Santa Barbara	CA 	93117	1	1998	267
Agile Business	SaaS, Business Process Management & Business Intelligence, softwawre	Agile Business provides a cloud solution for small to medium-sized businesses to more effectively manage and process data.	http://agilebuiness.com/	93B Castilian Drive 	Goleta	CA 	93117	1	2012	268
Advanced Vision Science	Medical device manufacturer	Advanced Vision Science builds ophthalmic medical devices for treating eyes including cataracts disease with Intraocular lenses.	http://www.advancedvisionscience.com/	5743 Thornwood Drive 	Goleta	CA 	93117	1	1975	269
Active Life Scientific, Inc.	Biotechnology, Medical Device	Active Life Scientific Scientific is a medical technology company that has developed a new device for measuring bone strength: OsteoProbe.\r	http://www.activelifescientific.com/	27 E Cota St Suite 400	Santa Barbara	CA	93101	1	2007	270
Acroamatics	Computer Data Systems, telemetry , software	Acromatics designs and manufactures the hardware and software for digital signal processing systems.	www.acroamatics.com	7230 Hollister Ave. Suite 100 	Goleta	CA 	93117	1	1971	271
Acroamatics	Electronics, Telemetry, data 	Acroamatics provides various equipment for monitoring and processing data from otherwise inaccessible locations. It now operates independently under Delta Information Systems.	www.acroamatics.com 	5385 Hollister Ave. Bldg. 5 	Santa Barbara 	CA 	93111	1	1900	272
Asylum Research	hardware	Acquired by Oxford Instruments in 2012.   Asylum Research creates atomic force microscopy (AFM) instruments for the nanosciences.	www.AsylumResearch.com	6310 Hollister Ave 	Santa Barbara 	CA 	93117	1	1999	273
Acelot	Drug discovery, cheminformatics, Medical 	Acelot is a development stage biopharmaceutical company focused on therapies for Alzheimers Disease and central nervous system disorders.	www.acelot.com	5385 Hollister Ave, Suite 111	Santa Barbara 	CA 	93111	1	2011	274
DNA Imagery	software	A software that tracks your goals and the progress that you have made towards them.	www.kdna.com	27 West Anapamu Street, Suite 342 	Santa Barbara	CA 	93101	1	2006	275
Acelot	software, chemistry & pharmaceuticals	A computer algorithm that looks for similarities in chemical structure to produce new, more effective drugs. 	www.acelot.com	5385 Hollister Ave, Suite 111,	Santa Barbara 	CA 	93111	1	2011	276
123Compliance	Technology, Document Management, SaaS, Software	123Compliance has more than 20 years of experience in the life science industry. Acquired by Sparta Systems in 2016.\r	http://123compliance.com/	3 West Carrillo, Suite 208	Santa Barbara	CA	93101	1	2012	277
Sonos	Electronics, Home Audio Equipment	Sonos designs, manufactures and sells high end multi-room music systems that connect to the Internet, wirelessly stream music to different rooms in a users home, and are controllable via computer, iphone, ipad, and android devices. Sonos has taken in over $40mil in Venture Capital funding from Index Ventures and BV Capital.	http://www.sonos.com/en-us/home	614 Chapala St	Santa Barbara	CA	93101	1500	2002	42
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-12-29 10:11:48.403741-08	42	Sonos	2	[{"changed": {"fields": ["cat", "state", "employees"]}}]	17	1
2	2017-12-29 10:16:00.912173-08	42	Sonos	2	[{"changed": {"fields": ["employees"]}}]	17	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	catalog	authgroup
8	catalog	authgrouppermissions
9	catalog	authpermission
10	catalog	authuser
11	catalog	authusergroups
12	catalog	authuseruserpermissions
13	catalog	djangoadminlog
14	catalog	djangocontenttype
15	catalog	djangomigrations
16	catalog	djangosession
17	catalog	sbtechlist
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-12-27 18:00:56.000164-08
2	auth	0001_initial	2017-12-27 18:00:56.129554-08
3	admin	0001_initial	2017-12-27 18:00:56.180819-08
4	admin	0002_logentry_remove_auto_add	2017-12-27 18:00:56.196104-08
5	contenttypes	0002_remove_content_type_name	2017-12-27 18:00:56.243981-08
6	auth	0002_alter_permission_name_max_length	2017-12-27 18:00:56.251559-08
7	auth	0003_alter_user_email_max_length	2017-12-27 18:00:56.263857-08
8	auth	0004_alter_user_username_opts	2017-12-27 18:00:56.274698-08
9	auth	0005_alter_user_last_login_null	2017-12-27 18:00:56.28841-08
10	auth	0006_require_contenttypes_0002	2017-12-27 18:00:56.290682-08
11	auth	0007_alter_validators_add_error_messages	2017-12-27 18:00:56.302852-08
12	auth	0008_alter_user_username_max_length	2017-12-27 18:00:56.351717-08
13	auth	0009_alter_user_last_name_max_length	2017-12-27 18:00:56.36663-08
14	sessions	0001_initial	2017-12-27 18:00:56.378489-08
15	catalog	0001_initial	2017-12-28 14:14:54.372762-08
16	catalog	0002_auto_20171228_2259	2017-12-28 15:04:24.21651-08
17	catalog	0003_auto_20171229_0043	2017-12-28 16:44:44.60481-08
18	catalog	0004_auto_20171229_0130	2017-12-28 17:30:13.979864-08
19	catalog	0005_auto_20171229_1816	2017-12-29 10:16:44.724923-08
20	catalog	0006_auto_20180101_0312	2018-01-11 13:54:55.959148-08
21	catalog	0007_auto_20180101_0322	2018-01-11 13:54:55.996093-08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: joyti
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
omqsilhiplwq8tku2vphvs86vijoo647	ZDA0MDZmNGJmMmJhZTdmMzVkOGFmYmVmMjBkZGNhYjljOWZiNzU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDc4YTc3NGQ2ODk1MzA4Y2MxY2ZhYjFjNzU5Yjk3MzUzNDc5MWFjIn0=	2018-01-12 09:48:15.786942-08
0su7a0xjsxwz4e8baijqisv6xzpzvnr4	ZDA0MDZmNGJmMmJhZTdmMzVkOGFmYmVmMjBkZGNhYjljOWZiNzU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDc4YTc3NGQ2ODk1MzA4Y2MxY2ZhYjFjNzU5Yjk3MzUzNDc5MWFjIn0=	2018-01-13 13:30:08.438787-08
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('auth_permission_id_seq', 51, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 2, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('django_migrations_id_seq', 21, true);


--
-- Name: sbtechlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joyti
--

SELECT pg_catalog.setval('sbtechlist_id_seq', 277, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: catalog_sbtechlist sbtechlist_pkey; Type: CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY catalog_sbtechlist
    ADD CONSTRAINT sbtechlist_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: joyti
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: joyti
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

