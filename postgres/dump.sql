--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: Homework SQL 2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Homework SQL 2";


ALTER SCHEMA "Homework SQL 2" OWNER TO postgres;

--
-- Name: SQL digital Skola; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "SQL digital Skola";


ALTER SCHEMA "SQL digital Skola" OWNER TO postgres;

--
-- Name: Travel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Travel";


ALTER SCHEMA "Travel" OWNER TO postgres;

--
-- Name: marketplace; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA marketplace;


ALTER SCHEMA marketplace OWNER TO postgres;

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: departements; Type: TABLE; Schema: Homework SQL 2; Owner: postgres
--

CREATE TABLE "Homework SQL 2".departements (
    departement_id integer NOT NULL,
    departement_name character varying(255)
);


ALTER TABLE "Homework SQL 2".departements OWNER TO postgres;

--
-- Name: departements_departement_id_seq; Type: SEQUENCE; Schema: Homework SQL 2; Owner: postgres
--

CREATE SEQUENCE "Homework SQL 2".departements_departement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Homework SQL 2".departements_departement_id_seq OWNER TO postgres;

--
-- Name: departements_departement_id_seq; Type: SEQUENCE OWNED BY; Schema: Homework SQL 2; Owner: postgres
--

ALTER SEQUENCE "Homework SQL 2".departements_departement_id_seq OWNED BY "Homework SQL 2".departements.departement_id;


--
-- Name: employees; Type: TABLE; Schema: Homework SQL 2; Owner: postgres
--

CREATE TABLE "Homework SQL 2".employees (
    employee_id integer NOT NULL,
    name character varying(255),
    departement_id integer,
    salary numeric
);


ALTER TABLE "Homework SQL 2".employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: Homework SQL 2; Owner: postgres
--

CREATE SEQUENCE "Homework SQL 2".employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Homework SQL 2".employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: Homework SQL 2; Owner: postgres
--

ALTER SEQUENCE "Homework SQL 2".employees_employee_id_seq OWNED BY "Homework SQL 2".employees.employee_id;


--
-- Name: products; Type: TABLE; Schema: Homework SQL 2; Owner: postgres
--

CREATE TABLE "Homework SQL 2".products (
    product_id integer NOT NULL,
    product_name character varying(225),
    category character varying(255),
    price numeric
);


ALTER TABLE "Homework SQL 2".products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: Homework SQL 2; Owner: postgres
--

CREATE SEQUENCE "Homework SQL 2".products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Homework SQL 2".products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: Homework SQL 2; Owner: postgres
--

ALTER SEQUENCE "Homework SQL 2".products_product_id_seq OWNED BY "Homework SQL 2".products.product_id;


--
-- Name: sales; Type: TABLE; Schema: Homework SQL 2; Owner: postgres
--

CREATE TABLE "Homework SQL 2".sales (
    sale_id integer NOT NULL,
    product_id integer,
    employee_id integer,
    quantity integer,
    price numeric,
    sale_date date
);


ALTER TABLE "Homework SQL 2".sales OWNER TO postgres;

--
-- Name: sales_sale_id_seq; Type: SEQUENCE; Schema: Homework SQL 2; Owner: postgres
--

CREATE SEQUENCE "Homework SQL 2".sales_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Homework SQL 2".sales_sale_id_seq OWNER TO postgres;

--
-- Name: sales_sale_id_seq; Type: SEQUENCE OWNED BY; Schema: Homework SQL 2; Owner: postgres
--

ALTER SEQUENCE "Homework SQL 2".sales_sale_id_seq OWNED BY "Homework SQL 2".sales.sale_id;


--
-- Name: bar; Type: TABLE; Schema: SQL digital Skola; Owner: postgres
--

CREATE TABLE "SQL digital Skola".bar (
    id integer NOT NULL,
    label text NOT NULL,
    foodid integer NOT NULL
);


ALTER TABLE "SQL digital Skola".bar OWNER TO postgres;

--
-- Name: bar_id_seq; Type: SEQUENCE; Schema: SQL digital Skola; Owner: postgres
--

CREATE SEQUENCE "SQL digital Skola".bar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "SQL digital Skola".bar_id_seq OWNER TO postgres;

--
-- Name: bar_id_seq; Type: SEQUENCE OWNED BY; Schema: SQL digital Skola; Owner: postgres
--

ALTER SEQUENCE "SQL digital Skola".bar_id_seq OWNED BY "SQL digital Skola".bar.id;


--
-- Name: dosen; Type: TABLE; Schema: SQL digital Skola; Owner: postgres
--

CREATE TABLE "SQL digital Skola".dosen (
    "NIDN" character(6) NOT NULL,
    "Nama" character varying(20)
);


ALTER TABLE "SQL digital Skola".dosen OWNER TO postgres;

--
-- Name: foo; Type: TABLE; Schema: SQL digital Skola; Owner: postgres
--

CREATE TABLE "SQL digital Skola".foo (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE "SQL digital Skola".foo OWNER TO postgres;

--
-- Name: foo_id_seq; Type: SEQUENCE; Schema: SQL digital Skola; Owner: postgres
--

CREATE SEQUENCE "SQL digital Skola".foo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "SQL digital Skola".foo_id_seq OWNER TO postgres;

--
-- Name: foo_id_seq; Type: SEQUENCE OWNED BY; Schema: SQL digital Skola; Owner: postgres
--

ALTER SEQUENCE "SQL digital Skola".foo_id_seq OWNED BY "SQL digital Skola".foo.id;


--
-- Name: mahasiswa; Type: TABLE; Schema: SQL digital Skola; Owner: postgres
--

CREATE TABLE "SQL digital Skola".mahasiswa (
    "NIM" character(4) NOT NULL,
    "Nama" character varying(20),
    "Email" character varying(25),
    "IPK" numeric(3,2),
    "NidnPA" character(6),
    CONSTRAINT "mahasiswa_IPK_check" CHECK ((("IPK" >= 0.0) AND ("IPK" <= 4.0)))
);


ALTER TABLE "SQL digital Skola".mahasiswa OWNER TO postgres;

--
-- Name: telepon; Type: TABLE; Schema: SQL digital Skola; Owner: postgres
--

CREATE TABLE "SQL digital Skola".telepon (
    "NIM" character(4) NOT NULL,
    "NoTelepon" character varying(15) NOT NULL,
    "Keteranagan" character varying(10)
);


ALTER TABLE "SQL digital Skola".telepon OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: SQL digital Skola; Owner: postgres
--

CREATE SEQUENCE "SQL digital Skola".user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "SQL digital Skola".user_id_seq OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: SQL digital Skola; Owner: postgres
--

CREATE TABLE "SQL digital Skola".users (
    user_id integer DEFAULT nextval('"SQL digital Skola".user_id_seq'::regclass) NOT NULL,
    name character varying(100)
);


ALTER TABLE "SQL digital Skola".users OWNER TO postgres;

--
-- Name: dim_destinasi; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_destinasi (
    id_destinasi integer NOT NULL,
    nama character varying(100),
    kategori character varying(100)
);


ALTER TABLE "Travel".dim_destinasi OWNER TO postgres;

--
-- Name: dim_destinasi_id_destinasi_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_destinasi_id_destinasi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_destinasi_id_destinasi_seq OWNER TO postgres;

--
-- Name: dim_destinasi_id_destinasi_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_destinasi_id_destinasi_seq OWNED BY "Travel".dim_destinasi.id_destinasi;


--
-- Name: dim_driver; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_driver (
    id_driver integer NOT NULL,
    nama_driver character varying(100),
    no_identitas character varying(100),
    alamat text
);


ALTER TABLE "Travel".dim_driver OWNER TO postgres;

--
-- Name: dim_driver_id_driver_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_driver_id_driver_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_driver_id_driver_seq OWNER TO postgres;

--
-- Name: dim_driver_id_driver_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_driver_id_driver_seq OWNED BY "Travel".dim_driver.id_driver;


--
-- Name: dim_kendaraan; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_kendaraan (
    id_kendaraan integer NOT NULL,
    nama_kendaraan character varying(100),
    no_kendaraan character varying(100),
    no_bpkb character varying(100),
    transmisi character varying(100),
    cc character varying(100),
    mesin character varying(100),
    kapasitas character varying(100),
    id_merk integer
);


ALTER TABLE "Travel".dim_kendaraan OWNER TO postgres;

--
-- Name: dim_kendaraan_id_kendaraan_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_kendaraan_id_kendaraan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_kendaraan_id_kendaraan_seq OWNER TO postgres;

--
-- Name: dim_kendaraan_id_kendaraan_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_kendaraan_id_kendaraan_seq OWNED BY "Travel".dim_kendaraan.id_kendaraan;


--
-- Name: dim_kota; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_kota (
    id_kota integer NOT NULL,
    nama_kota character varying(100),
    id_provinsi integer
);


ALTER TABLE "Travel".dim_kota OWNER TO postgres;

--
-- Name: dim_kota_id_kota_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_kota_id_kota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_kota_id_kota_seq OWNER TO postgres;

--
-- Name: dim_kota_id_kota_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_kota_id_kota_seq OWNED BY "Travel".dim_kota.id_kota;


--
-- Name: dim_member; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_member (
    id_member integer NOT NULL,
    nama_member character varying(100),
    no_identitas character varying(100),
    alamat text,
    email character varying(100),
    no_handphone character varying(100),
    id_kota integer
);


ALTER TABLE "Travel".dim_member OWNER TO postgres;

--
-- Name: dim_member_id_member_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_member_id_member_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_member_id_member_seq OWNER TO postgres;

--
-- Name: dim_member_id_member_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_member_id_member_seq OWNED BY "Travel".dim_member.id_member;


--
-- Name: dim_merk; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_merk (
    id_merk integer NOT NULL,
    nama_merk character varying(100),
    kategori character varying(100)
);


ALTER TABLE "Travel".dim_merk OWNER TO postgres;

--
-- Name: dim_merk_id_merk_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_merk_id_merk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_merk_id_merk_seq OWNER TO postgres;

--
-- Name: dim_merk_id_merk_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_merk_id_merk_seq OWNED BY "Travel".dim_merk.id_merk;


--
-- Name: dim_negara; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_negara (
    id_negara integer NOT NULL,
    nama_negara character varying(100)
);


ALTER TABLE "Travel".dim_negara OWNER TO postgres;

--
-- Name: dim_negara_id_negara_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_negara_id_negara_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_negara_id_negara_seq OWNER TO postgres;

--
-- Name: dim_negara_id_negara_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_negara_id_negara_seq OWNED BY "Travel".dim_negara.id_negara;


--
-- Name: dim_paket; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_paket (
    id_paket integer NOT NULL,
    nama_paket character varying(100),
    id_destinasi integer
);


ALTER TABLE "Travel".dim_paket OWNER TO postgres;

--
-- Name: dim_paket_id_paket_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_paket_id_paket_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_paket_id_paket_seq OWNER TO postgres;

--
-- Name: dim_paket_id_paket_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_paket_id_paket_seq OWNED BY "Travel".dim_paket.id_paket;


--
-- Name: dim_provinsi; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_provinsi (
    id_provinsi integer NOT NULL,
    nama_provinsi character varying(100),
    id_negara integer
);


ALTER TABLE "Travel".dim_provinsi OWNER TO postgres;

--
-- Name: dim_provinsi_id_provinsi_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_provinsi_id_provinsi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_provinsi_id_provinsi_seq OWNER TO postgres;

--
-- Name: dim_provinsi_id_provinsi_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_provinsi_id_provinsi_seq OWNED BY "Travel".dim_provinsi.id_provinsi;


--
-- Name: dim_time; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".dim_time (
    id_time integer NOT NULL,
    tahun integer,
    bulan integer,
    tanggal integer,
    hari character varying(100)
);


ALTER TABLE "Travel".dim_time OWNER TO postgres;

--
-- Name: dim_time_id_time_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".dim_time_id_time_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".dim_time_id_time_seq OWNER TO postgres;

--
-- Name: dim_time_id_time_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".dim_time_id_time_seq OWNED BY "Travel".dim_time.id_time;


--
-- Name: fact_transaction; Type: TABLE; Schema: Travel; Owner: postgres
--

CREATE TABLE "Travel".fact_transaction (
    id_transaksi integer NOT NULL,
    id_member integer,
    id_paket integer,
    id_kendaraan integer,
    id_driver integer,
    jumlah_penumpang integer,
    alamat_penumpang text,
    id_time integer,
    total integer
);


ALTER TABLE "Travel".fact_transaction OWNER TO postgres;

--
-- Name: fact_transaction_id_transaksi_seq; Type: SEQUENCE; Schema: Travel; Owner: postgres
--

CREATE SEQUENCE "Travel".fact_transaction_id_transaksi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Travel".fact_transaction_id_transaksi_seq OWNER TO postgres;

--
-- Name: fact_transaction_id_transaksi_seq; Type: SEQUENCE OWNED BY; Schema: Travel; Owner: postgres
--

ALTER SEQUENCE "Travel".fact_transaction_id_transaksi_seq OWNED BY "Travel".fact_transaction.id_transaksi;


--
-- Name: mart_amount_order_daily; Type: VIEW; Schema: Travel; Owner: postgres
--

CREATE VIEW "Travel".mart_amount_order_daily AS
 SELECT concat(dt.tahun, '-', dt.bulan, '-', dt.tanggal) AS date,
    ft.id_time,
    ft.total_order,
    ft.total_amount
   FROM (( SELECT fact_transaction.id_time,
            count(*) AS total_order,
            sum(fact_transaction.total) AS total_amount
           FROM "Travel".fact_transaction
          GROUP BY fact_transaction.id_time
          ORDER BY fact_transaction.id_time) ft
     JOIN "Travel".dim_time dt ON ((ft.id_time = dt.id_time)));


ALTER TABLE "Travel".mart_amount_order_daily OWNER TO postgres;

--
-- Name: mart_amount_order_monthly; Type: VIEW; Schema: Travel; Owner: postgres
--

CREATE VIEW "Travel".mart_amount_order_monthly AS
 SELECT concat(dt.tahun, '-', dt.bulan) AS date,
    sum(ft.total_order) AS total_order,
    sum(ft.total_amount) AS total_amount
   FROM (( SELECT fact_transaction.id_time,
            count(*) AS total_order,
            sum(fact_transaction.total) AS total_amount
           FROM "Travel".fact_transaction
          GROUP BY fact_transaction.id_time
          ORDER BY fact_transaction.id_time) ft
     JOIN "Travel".dim_time dt ON ((ft.id_time = dt.id_time)))
  GROUP BY dt.tahun, dt.bulan;


ALTER TABLE "Travel".mart_amount_order_monthly OWNER TO postgres;

--
-- Name: mart_driver_service; Type: VIEW; Schema: Travel; Owner: postgres
--

CREATE VIEW "Travel".mart_driver_service AS
 SELECT dd.nama_driver,
    count(ft.id_transaksi) AS service_frequency,
    sum(ft.jumlah_penumpang) AS total_passengers,
    sum(ft.total) AS total_revenue
   FROM ("Travel".fact_transaction ft
     JOIN "Travel".dim_driver dd ON ((ft.id_driver = dd.id_driver)))
  GROUP BY dd.nama_driver
  ORDER BY (count(ft.id_transaksi)) DESC;


ALTER TABLE "Travel".mart_driver_service OWNER TO postgres;

--
-- Name: mart_tour_package; Type: VIEW; Schema: Travel; Owner: postgres
--

CREATE VIEW "Travel".mart_tour_package AS
 SELECT dp.nama_paket,
    dd.nama AS destinasi,
    concat(dt.tahun, '-', dt.bulan) AS date,
    count(ft.id_transaksi) AS booking_frequency,
    sum(ft.jumlah_penumpang) AS total_passengers,
    sum(ft.total) AS total_revenue
   FROM ((("Travel".fact_transaction ft
     JOIN "Travel".dim_paket dp ON ((ft.id_paket = dp.id_paket)))
     JOIN "Travel".dim_destinasi dd ON ((dp.id_destinasi = dd.id_destinasi)))
     JOIN "Travel".dim_time dt ON ((ft.id_time = dt.id_time)))
  GROUP BY dp.nama_paket, dd.nama, dt.tahun, dt.bulan
  ORDER BY dt.tahun DESC, dt.bulan DESC, (count(ft.id_transaksi)) DESC;


ALTER TABLE "Travel".mart_tour_package OWNER TO postgres;

--
-- Name: mart_vehicle_use; Type: VIEW; Schema: Travel; Owner: postgres
--

CREATE VIEW "Travel".mart_vehicle_use AS
 SELECT dk.nama_kendaraan,
    dm.nama_merk,
    count(ft.id_transaksi) AS use_frequency,
    sum(ft.jumlah_penumpang) AS total_passengers,
    sum(ft.total) AS total_revenue
   FROM (("Travel".fact_transaction ft
     JOIN "Travel".dim_kendaraan dk ON ((ft.id_kendaraan = dk.id_kendaraan)))
     JOIN "Travel".dim_merk dm ON ((dk.id_merk = dm.id_merk)))
  GROUP BY dk.nama_kendaraan, dm.nama_merk
  ORDER BY (count(ft.id_transaksi)) DESC;


ALTER TABLE "Travel".mart_vehicle_use OWNER TO postgres;

--
-- Name: tb_order_items; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_order_items (
    order_item_id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    order_item_quantity integer,
    product_discount integer,
    product_subdiscount integer,
    product_price integer NOT NULL,
    product_subprice integer NOT NULL
);


ALTER TABLE marketplace.tb_order_items OWNER TO postgres;

--
-- Name: tb_orders; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_orders (
    order_id integer NOT NULL,
    order_date date NOT NULL,
    user_id integer NOT NULL,
    payment_id integer NOT NULL,
    shipper_id integer NOT NULL,
    order_price integer NOT NULL,
    order_discount integer,
    voucher_id integer,
    order_total integer NOT NULL,
    rating_id integer NOT NULL
);


ALTER TABLE marketplace.tb_orders OWNER TO postgres;

--
-- Name: tb_payments; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_payments (
    payment_id integer NOT NULL,
    payment_name character varying(255) NOT NULL,
    payment_status boolean NOT NULL
);


ALTER TABLE marketplace.tb_payments OWNER TO postgres;

--
-- Name: tb_product_category; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_product_category (
    product_category_id integer NOT NULL,
    product_category_name character varying(255) NOT NULL
);


ALTER TABLE marketplace.tb_product_category OWNER TO postgres;

--
-- Name: tb_products; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_products (
    product_id integer NOT NULL,
    product_category_id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    product_created date NOT NULL,
    product_price integer NOT NULL,
    product_discount integer
);


ALTER TABLE marketplace.tb_products OWNER TO postgres;

--
-- Name: tb_ratings; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_ratings (
    rating_id integer NOT NULL,
    rating_level integer NOT NULL,
    rating_status character varying(255) NOT NULL
);


ALTER TABLE marketplace.tb_ratings OWNER TO postgres;

--
-- Name: tb_shippers; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_shippers (
    shipper_id integer NOT NULL,
    shipper_name character varying(255) NOT NULL
);


ALTER TABLE marketplace.tb_shippers OWNER TO postgres;

--
-- Name: tb_users; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_users (
    user_id integer NOT NULL,
    user_first_name character varying(255) NOT NULL,
    user_last_name character varying(255) NOT NULL,
    user_gender character varying(50) NOT NULL,
    user_address character varying(255),
    user_birthday date NOT NULL,
    user_join date NOT NULL
);


ALTER TABLE marketplace.tb_users OWNER TO postgres;

--
-- Name: tb_vouchers; Type: TABLE; Schema: marketplace; Owner: postgres
--

CREATE TABLE marketplace.tb_vouchers (
    voucher_id integer NOT NULL,
    voucher_name character varying(255) NOT NULL,
    voucher_price integer,
    voucher_created date NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE marketplace.tb_vouchers OWNER TO postgres;

--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_department_id_seq OWNER TO postgres;

--
-- Name: departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    name character varying(100),
    department_id integer,
    salary numeric(10,2)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    sale_id integer NOT NULL,
    sale_date date,
    customer_id integer,
    product_id integer,
    quantity integer,
    price numeric(10,2)
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    id integer,
    name character varying(50),
    address character varying(70)
);


ALTER TABLE public.test OWNER TO postgres;

--
-- Name: departements departement_id; Type: DEFAULT; Schema: Homework SQL 2; Owner: postgres
--

ALTER TABLE ONLY "Homework SQL 2".departements ALTER COLUMN departement_id SET DEFAULT nextval('"Homework SQL 2".departements_departement_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: Homework SQL 2; Owner: postgres
--

ALTER TABLE ONLY "Homework SQL 2".employees ALTER COLUMN employee_id SET DEFAULT nextval('"Homework SQL 2".employees_employee_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: Homework SQL 2; Owner: postgres
--

ALTER TABLE ONLY "Homework SQL 2".products ALTER COLUMN product_id SET DEFAULT nextval('"Homework SQL 2".products_product_id_seq'::regclass);


--
-- Name: sales sale_id; Type: DEFAULT; Schema: Homework SQL 2; Owner: postgres
--

ALTER TABLE ONLY "Homework SQL 2".sales ALTER COLUMN sale_id SET DEFAULT nextval('"Homework SQL 2".sales_sale_id_seq'::regclass);


--
-- Name: bar id; Type: DEFAULT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".bar ALTER COLUMN id SET DEFAULT nextval('"SQL digital Skola".bar_id_seq'::regclass);


--
-- Name: foo id; Type: DEFAULT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".foo ALTER COLUMN id SET DEFAULT nextval('"SQL digital Skola".foo_id_seq'::regclass);


--
-- Name: dim_destinasi id_destinasi; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_destinasi ALTER COLUMN id_destinasi SET DEFAULT nextval('"Travel".dim_destinasi_id_destinasi_seq'::regclass);


--
-- Name: dim_driver id_driver; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_driver ALTER COLUMN id_driver SET DEFAULT nextval('"Travel".dim_driver_id_driver_seq'::regclass);


--
-- Name: dim_kendaraan id_kendaraan; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_kendaraan ALTER COLUMN id_kendaraan SET DEFAULT nextval('"Travel".dim_kendaraan_id_kendaraan_seq'::regclass);


--
-- Name: dim_kota id_kota; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_kota ALTER COLUMN id_kota SET DEFAULT nextval('"Travel".dim_kota_id_kota_seq'::regclass);


--
-- Name: dim_member id_member; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_member ALTER COLUMN id_member SET DEFAULT nextval('"Travel".dim_member_id_member_seq'::regclass);


--
-- Name: dim_merk id_merk; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_merk ALTER COLUMN id_merk SET DEFAULT nextval('"Travel".dim_merk_id_merk_seq'::regclass);


--
-- Name: dim_negara id_negara; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_negara ALTER COLUMN id_negara SET DEFAULT nextval('"Travel".dim_negara_id_negara_seq'::regclass);


--
-- Name: dim_paket id_paket; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_paket ALTER COLUMN id_paket SET DEFAULT nextval('"Travel".dim_paket_id_paket_seq'::regclass);


--
-- Name: dim_provinsi id_provinsi; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_provinsi ALTER COLUMN id_provinsi SET DEFAULT nextval('"Travel".dim_provinsi_id_provinsi_seq'::regclass);


--
-- Name: dim_time id_time; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_time ALTER COLUMN id_time SET DEFAULT nextval('"Travel".dim_time_id_time_seq'::regclass);


--
-- Name: fact_transaction id_transaksi; Type: DEFAULT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".fact_transaction ALTER COLUMN id_transaksi SET DEFAULT nextval('"Travel".fact_transaction_id_transaksi_seq'::regclass);


--
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Data for Name: departements; Type: TABLE DATA; Schema: Homework SQL 2; Owner: postgres
--

COPY "Homework SQL 2".departements (departement_id, departement_name) FROM stdin;
1	Sales
2	Marketing
3	IT
4	HR
5	Finance
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: Homework SQL 2; Owner: postgres
--

COPY "Homework SQL 2".employees (employee_id, name, departement_id, salary) FROM stdin;
2	Jane Smith	2	55000
3	Alice Johnson	3	60000
4	Robert Brown	4	45000
5	Emily Davis	5	70000
1	John Doe	1	50000
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: Homework SQL 2; Owner: postgres
--

COPY "Homework SQL 2".products (product_id, product_name, category, price) FROM stdin;
1	Laptop	Electronics	1000
2	Smartphone	Electronics	800
3	Tablet	Electronics	500
5	Charger	Accessories	20
4	Headphones	Accessories	100
\.


--
-- Data for Name: sales; Type: TABLE DATA; Schema: Homework SQL 2; Owner: postgres
--

COPY "Homework SQL 2".sales (sale_id, product_id, employee_id, quantity, price, sale_date) FROM stdin;
1	1	1	5	1000	2024-05-01
2	2	2	10	800	2024-05-02
3	3	3	7	500	2024-05-03
4	4	4	15	100	2024-05-04
5	5	5	20	20	2024-05-05
\.


--
-- Data for Name: bar; Type: TABLE DATA; Schema: SQL digital Skola; Owner: postgres
--

COPY "SQL digital Skola".bar (id, label, foodid) FROM stdin;
\.


--
-- Data for Name: dosen; Type: TABLE DATA; Schema: SQL digital Skola; Owner: postgres
--

COPY "SQL digital Skola".dosen ("NIDN", "Nama") FROM stdin;
\.


--
-- Data for Name: foo; Type: TABLE DATA; Schema: SQL digital Skola; Owner: postgres
--

COPY "SQL digital Skola".foo (id, name) FROM stdin;
\.


--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: SQL digital Skola; Owner: postgres
--

COPY "SQL digital Skola".mahasiswa ("NIM", "Nama", "Email", "IPK", "NidnPA") FROM stdin;
\.


--
-- Data for Name: telepon; Type: TABLE DATA; Schema: SQL digital Skola; Owner: postgres
--

COPY "SQL digital Skola".telepon ("NIM", "NoTelepon", "Keteranagan") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: SQL digital Skola; Owner: postgres
--

COPY "SQL digital Skola".users (user_id, name) FROM stdin;
\.


--
-- Data for Name: dim_destinasi; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_destinasi (id_destinasi, nama, kategori) FROM stdin;
1	destinasi1	kategoriA
2	destinasi2	kategoriA
3	destinasi3	kategoriA
4	destinasi4	kategoriA
5	destinasi5	kategoriB
6	destinasi6	kategoriB
7	destinasi7	kategoriB
8	destinasi8	kategoriC
9	destinasi9	kategoriC
10	destinasi10	kategoriC
11	destinasi11	kategoriC
12	destinasi12	kategoriD
13	destinasi13	kategoriD
14	destinasi14	kategoriD
15	destinasi15	kategoriD
16	destinasi16	kategoriE
17	destinasi17	kategoriE
18	destinasi18	kategoriE
19	destinasi19	kategoriE
20	destinasi20	kategoriE
\.


--
-- Data for Name: dim_driver; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_driver (id_driver, nama_driver, no_identitas, alamat) FROM stdin;
1	Agus	010101	JKT
2	Soleh	010102	JKT
3	El	010101	JKT
\.


--
-- Data for Name: dim_kendaraan; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_kendaraan (id_kendaraan, nama_kendaraan, no_kendaraan, no_bpkb, transmisi, cc, mesin, kapasitas, id_merk) FROM stdin;
1	Kendaraan 1	xxxx	0000	cxx	0	0	0	1
2	Kendaraan 2	xxxx	0000	cxx	0	0	0	1
3	Kendaraan 3	xxxx	0000	cxx	0	0	0	2
4	Kendaraan 4	xxxx	0000	cxx	0	0	0	2
5	Kendaraan 5	xxxx	0000	cxx	0	0	0	3
6	Kendaraan 6	xxxx	0000	cxx	0	0	0	3
7	Kendaraan 7	xxxx	0000	cxx	0	0	0	3
8	Kendaraan 8	xxxx	0000	cxx	0	0	0	3
9	Kendaraan 9	xxxx	0000	cxx	0	0	0	4
10	Kendaraan 10	xxxx	0000	cxx	0	0	0	5
11	Kendaraan 11	xxxx	0000	cxx	0	0	0	6
12	Kendaraan 12	xxxx	0000	cxx	0	0	0	6
13	Kendaraan 13	xxxx	0000	cxx	0	0	0	6
14	Kendaraan 14	xxxx	0000	cxx	0	0	0	6
15	Kendaraan 15	xxxx	0000	cxx	0	0	0	6
16	Kendaraan 16	xxxx	0000	cxx	0	0	0	6
17	Kendaraan 17	xxxx	0000	cxx	0	0	0	3
18	Kendaraan 18	xxxx	0000	cxx	0	0	0	3
19	Kendaraan 19	xxxx	0000	cxx	0	0	0	4
20	Kendaraan 20	xxxx	0000	cxx	0	0	0	4
21	Kendaraan 21	xxxx	0000	cxx	0	0	0	4
22	Kendaraan 22	xxxx	0000	cxx	0	0	0	1
\.


--
-- Data for Name: dim_kota; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_kota (id_kota, nama_kota, id_provinsi) FROM stdin;
1	Kota Tangerang Selatan	1
2	Kota Tangerang	1
3	Kabupaten Tangerang Selatan	1
4	Kota Pandegelang	1
5	Kota Jakarta Pusat	2
6	Kota Jakarta Selatan	2
7	Kota Jakarta Utara	2
\.


--
-- Data for Name: dim_member; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_member (id_member, nama_member, no_identitas, alamat, email, no_handphone, id_kota) FROM stdin;
1	Cika	010101000	P	cika@test.com	0999xxx	1
2	Lala	010101000	P	lala@test.com	0999xxx	1
3	Lulu	010101000	P	lulu@test.com	0999xxx	2
4	Cuy	010101000	P	cuy@test.com	0999xxx	2
5	Anton	010101000	L	xx@test.com	0999xxx	3
6	Rara	010101000	L	xxx@test.com	0999xxx	3
7	Rehan	010101000	L	xx@test.com	0999xxx	4
8	Ikbal	010101000	L	xx@test.com	0999xxx	5
9	Toni	010101000	L	xx@test.com	0999xxx	6
10	Budi	010101000	L	xx@test.com	0999xxx	6
11	Yono	010101000	L	xx@test.com	0999xxx	7
12	Asrul	010101000	L	xx@test.com	0999xxx	7
13	Anton	010101000	L	xx@test.com	0999xxx	4
14	Yono	010101000	L	xx@test.com	0999xxx	4
15	Cinta	010101000	P	xx@test.com	0999xxx	5
16	cekuk	010101000	P	xx@test.com	0999xxx	5
17	priska	010101000	P	xx@test.com	0999xxx	3
18	Ciput	010101000	P	xx@test.com	0999xxx	1
\.


--
-- Data for Name: dim_merk; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_merk (id_merk, nama_merk, kategori) FROM stdin;
1	Honda1	Premium
2	Honda2	Premium
3	Honda3	Premium
4	BMW1	Platinum
5	BMW2	Platinum
6	BMW3	Platinum
7	FAMILY1	Ekonomis
8	FAMILY1	Ekonomis
9	FAMILY1	Ekonomis
\.


--
-- Data for Name: dim_negara; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_negara (id_negara, nama_negara) FROM stdin;
1	Indonesia
\.


--
-- Data for Name: dim_paket; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_paket (id_paket, nama_paket, id_destinasi) FROM stdin;
1	Paket A	1
2	Paket B	1
3	Paket C	2
4	Paket D	2
5	Paket E	3
6	Paket F	3
7	Paket G	3
8	Paket H	4
9	Paket I	5
10	Paket J	6
11	Paket K	7
12	Paket L	8
13	Paket M	9
14	Paket N	10
15	Paket O	11
16	Paket P	11
17	Paket Q	11
18	Paket R	12
19	Paket S	12
20	Paket T	12
21	Paket U	12
\.


--
-- Data for Name: dim_provinsi; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_provinsi (id_provinsi, nama_provinsi, id_negara) FROM stdin;
1	Banten	1
2	DKI Jakarta	1
\.


--
-- Data for Name: dim_time; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".dim_time (id_time, tahun, bulan, tanggal, hari) FROM stdin;
1	2023	1	1	Minggu
2	2023	1	2	Senin
3	2023	1	3	Selasa
4	2023	1	4	Rabu
5	2023	1	5	Kamis
6	2023	1	6	Jumat
7	2023	1	7	Sabtu
8	2023	1	8	Minggu
9	2023	1	9	Senin
10	2023	1	10	Selasa
\.


--
-- Data for Name: fact_transaction; Type: TABLE DATA; Schema: Travel; Owner: postgres
--

COPY "Travel".fact_transaction (id_transaksi, id_member, id_paket, id_kendaraan, id_driver, jumlah_penumpang, alamat_penumpang, id_time, total) FROM stdin;
1	1	1	1	1	4	JKT	1	40000
2	1	2	3	2	2	TANG	1	40000
3	2	2	4	2	2	SOLO	2	40000
4	2	2	1	3	2	JATENG	2	40000
5	1	2	2	3	3	JKT	2	40000
6	3	1	1	1	3	JKT	3	40000
7	1	2	1	1	4	JKT	3	40000
8	3	1	2	1	1	JKT	3	40000
9	18	4	3	1	1	JKT	1	40000
10	1	4	4	1	1	JKT	1	40000
11	17	4	5	1	2	JKT	4	40000
12	2	5	6	1	2	JKT	4	40000
13	3	5	6	1	2	JKT	4	40000
14	4	5	6	1	2	JKT	1	40000
15	4	5	1	3	3	JKT	5	40000
16	5	6	3	1	4	JKT	5	40000
17	6	6	4	1	5	JKT	5	40000
18	9	6	1	3	6	JKT	1	40000
19	1	6	2	1	1	JKT	6	40000
20	10	7	1	1	2	JKT	6	40000
21	1	1	7	2	3	JKT	6	40000
22	8	1	8	1	4	JKT	1	40000
23	1	1	8	2	1	JKT	8	40000
24	2	1	8	1	4	JKT	1	40000
\.


--
-- Data for Name: tb_order_items; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_order_items (order_item_id, order_id, product_id, order_item_quantity, product_discount, product_subdiscount, product_price, product_subprice) FROM stdin;
90010001	1110001	31110002	1	15000	15000	250000	250000
90010002	1110002	31110007	1	10000	10000	120000	120000
90010003	1110002	31110002	2	15000	30000	250000	500000
90010004	1110003	31110004	1	0	0	2000000	2000000
90010005	1110003	31110005	1	1000000	1000000	4000000	4000000
90010006	1110004	31110001	2	0	0	300000	600000
90010007	1110004	31110002	3	15000	45000	250000	750000
90010008	1110004	31110003	1	0	0	1800000	1800000
90010009	1110005	31110005	1	1000000	1000000	4000000	4000000
90010010	1110006	31110005	1	1000000	1000000	4000000	4000000
90010011	1110006	31110002	2	15000	30000	250000	500000
90010012	1110007	31110006	1	0	0	500000	500000
90010013	1110007	31110007	1	10000	10000	120000	120000
90010014	1110007	31110002	1	15000	15000	250000	250000
90010015	1110008	31110004	1	0	0	2000000	2000000
90010016	1110009	31110004	1	0	0	2000000	2000000
90010017	1110010	31110002	3	15000	45000	250000	750000
90010018	1110010	31110001	1	0	0	300000	300000
90010019	1110011	31110001	1	0	0	300000	300000
90010020	1110011	31110002	1	15000	15000	250000	250000
90010021	1110012	31110002	1	15000	15000	250000	250000
90010022	1110012	31110007	2	10000	20000	120000	240000
\.


--
-- Data for Name: tb_orders; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_orders (order_id, order_date, user_id, payment_id, shipper_id, order_price, order_discount, voucher_id, order_total, rating_id) FROM stdin;
1110001	2022-01-20	100101	1202	60002001	250000	15000	41000101	230000	800010003
1110002	2022-01-29	100102	1202	60002001	620000	40000	41000102	575000	800010003
1110003	2022-02-13	100103	1204	60002001	6000000	1000000	41000103	4995000	800010001
1110004	2022-03-06	100102	1203	60002001	3150000	45000	\N	3105000	800010005
1110005	2022-04-28	100105	1202	60002002	4000000	1000000	41000105	2995000	800010001
1110006	2022-05-09	100103	1202	60002002	4500000	1030000	\N	3470000	800010004
1110007	2022-05-21	100106	1202	60002001	870000	25000	\N	845000	800010005
1110008	2022-06-02	100108	1204	60002002	2000000	0	41000108	1995000	800010004
1110009	2022-06-23	100103	1204	60002003	2000000	0	\N	2000000	800010005
1110010	2022-07-01	100102	1204	60002003	1050000	45000	\N	1005000	800010002
1110011	2022-07-21	100110	1203	60002002	550000	15000	\N	535000	800010005
1110012	2022-07-30	100110	1202	60002001	490000	35000	41000115	445000	800010004
\.


--
-- Data for Name: tb_payments; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_payments (payment_id, payment_name, payment_status) FROM stdin;
1201	Cash	f
1202	Debit	t
1203	Wallet	t
1204	Credit	t
\.


--
-- Data for Name: tb_product_category; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_product_category (product_category_id, product_category_name) FROM stdin;
320001001	Fashion
320001002	Electronic
320001003	Health & Beauty
\.


--
-- Data for Name: tb_products; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_products (product_id, product_category_id, product_name, product_created, product_price, product_discount) FROM stdin;
31110001	320001001	Bag	2022-01-01	300000	0
31110002	320001001	Shirt	2022-01-01	250000	15000
31110003	320001002	Camera	2022-01-10	1800000	0
31110004	320001002	Television	2022-01-11	2000000	0
31110005	320001002	Headphone	2022-01-12	4000000	1000000
31110006	320001003	Supplement	2022-01-12	500000	0
31110007	320001003	Body Soap	2022-01-13	120000	10000
\.


--
-- Data for Name: tb_ratings; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_ratings (rating_id, rating_level, rating_status) FROM stdin;
800010001	1	Very Low Impact
800010002	2	Low Impact
800010003	3	Medium Impact
800010004	4	Medium High Impact
800010005	5	High Impact
\.


--
-- Data for Name: tb_shippers; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_shippers (shipper_id, shipper_name) FROM stdin;
60002001	JNE Express
60002002	Sicepat Express
60002003	Lazada Express
\.


--
-- Data for Name: tb_users; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_users (user_id, user_first_name, user_last_name, user_gender, user_address, user_birthday, user_join) FROM stdin;
100101	Budi	Gunawan	Male	Jl. Pondok Indah No.1, Kecamatan Pondok Labu, Bandung Raya, Jawa Barat	1998-09-12	2022-01-13
100102	Eva	Susanti	Female	Jl. Timur Raya No. 13, Kramat Jaya, Jakarta Timur, DKI Jakarta	1997-02-16	2022-01-29
100103	Dana	Pradana	Male	Jl. Pahlawan, Surabaya, Jawa Timur	1999-07-19	2022-02-11
100104	Rahmat	Hidayat	Male	Jl. Amil Abas, Jakarta Timur, DKI Jakarta	2000-02-14	2022-03-22
100105	Dodo	Andriano	Male	Jl. Pakuan Selatan No. 177, Magelang, Jawa Tengah	2000-09-06	2022-04-03
100106	Caca	Kumala	Female	Jl. Bunga Raya, Kota Tanggerang, Banten	1998-11-05	2022-05-20
100107	Andi	Kurniawan	Male	Jl. Mawar Indah No. 25, Jakarta Barat, DKI Jakarta	2001-03-14	2022-05-24
100108	Fanny	Utami	Female	Jl. Kilometer Panjang No. 210, Jakarta Utara, DKI Jakarta	2002-01-27	2022-06-02
100109	Gagah	Prakasa	Male	Jl. Timur Asri No. 10, Denpasar, Bali	2001-08-05	2022-07-14
100110	Anita	Friska	Female	Jl. Tembung Raya, Kota Medan Timur, Sumatera Utara	2000-11-04	2022-07-21
\.


--
-- Data for Name: tb_vouchers; Type: TABLE DATA; Schema: marketplace; Owner: postgres
--

COPY marketplace.tb_vouchers (voucher_id, voucher_name, voucher_price, voucher_created, user_id) FROM stdin;
41000101	New User	5000	2022-01-13	100101
41000102	New User	5000	2022-01-29	100102
41000103	New User	5000	2022-02-11	100103
41000104	New User	5000	2022-03-22	100104
41000105	New User	5000	2022-04-03	100105
41000106	New User	5000	2022-05-20	100106
41000107	New User	5000	2022-05-24	100107
41000108	New User	5000	2022-06-02	100108
41000109	New User	5000	2022-07-14	100109
41000110	New User	5000	2022-07-21	100110
41000111	Bag Promo	20000	2022-02-01	100101
41000112	Bag Promo	20000	2022-02-01	100102
41000113	Bag Promo	20000	2022-03-01	100103
41000114	Body Soap Promo	10000	2022-03-01	100108
41000115	Body Soap Promo	10000	2022-07-20	100107
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_id, department_name) FROM stdin;
1	HR
2	Finance
3	Marketing
4	Teacher
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (employee_id, name, department_id, salary) FROM stdin;
1	Minal Pandey	1	60000.00
2	Vardhana Sharma	1	65000.00
3	Kavya Sharma	2	70000.00
4	Soni Pandey	2	75000.00
5	Mahi Pandey	3	62000.00
6	Abhilekh Pandey	3	68000.00
7	Vivek Sharma	3	71000.00
8	Gusti	\N	83000.00
\.


--
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales (sale_id, sale_date, customer_id, product_id, quantity, price) FROM stdin;
1	2024-01-01	101	201	2	19.99
2	2024-01-03	102	202	1	29.99
3	2024-01-05	101	203	3	9.99
4	2024-01-07	103	204	5	4.99
5	2024-01-10	104	202	2	29.99
6	2024-01-12	105	205	1	49.99
7	2024-01-15	101	201	4	19.99
8	2024-01-17	106	206	3	14.99
9	2024-01-20	102	207	2	24.99
10	2024-01-22	107	208	1	39.99
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test (id, name, address) FROM stdin;
1	Adi	Jakarta
2	Dina	Bandung
\.


--
-- Name: departements_departement_id_seq; Type: SEQUENCE SET; Schema: Homework SQL 2; Owner: postgres
--

SELECT pg_catalog.setval('"Homework SQL 2".departements_departement_id_seq', 5, true);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: Homework SQL 2; Owner: postgres
--

SELECT pg_catalog.setval('"Homework SQL 2".employees_employee_id_seq', 5, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: Homework SQL 2; Owner: postgres
--

SELECT pg_catalog.setval('"Homework SQL 2".products_product_id_seq', 5, true);


--
-- Name: sales_sale_id_seq; Type: SEQUENCE SET; Schema: Homework SQL 2; Owner: postgres
--

SELECT pg_catalog.setval('"Homework SQL 2".sales_sale_id_seq', 5, true);


--
-- Name: bar_id_seq; Type: SEQUENCE SET; Schema: SQL digital Skola; Owner: postgres
--

SELECT pg_catalog.setval('"SQL digital Skola".bar_id_seq', 1, false);


--
-- Name: foo_id_seq; Type: SEQUENCE SET; Schema: SQL digital Skola; Owner: postgres
--

SELECT pg_catalog.setval('"SQL digital Skola".foo_id_seq', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: SQL digital Skola; Owner: postgres
--

SELECT pg_catalog.setval('"SQL digital Skola".user_id_seq', 2, true);


--
-- Name: dim_destinasi_id_destinasi_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_destinasi_id_destinasi_seq', 1, false);


--
-- Name: dim_driver_id_driver_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_driver_id_driver_seq', 1, false);


--
-- Name: dim_kendaraan_id_kendaraan_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_kendaraan_id_kendaraan_seq', 1, false);


--
-- Name: dim_kota_id_kota_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_kota_id_kota_seq', 1, false);


--
-- Name: dim_member_id_member_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_member_id_member_seq', 1, false);


--
-- Name: dim_merk_id_merk_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_merk_id_merk_seq', 1, false);


--
-- Name: dim_negara_id_negara_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_negara_id_negara_seq', 1, false);


--
-- Name: dim_paket_id_paket_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_paket_id_paket_seq', 1, false);


--
-- Name: dim_provinsi_id_provinsi_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_provinsi_id_provinsi_seq', 1, false);


--
-- Name: dim_time_id_time_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".dim_time_id_time_seq', 1, false);


--
-- Name: fact_transaction_id_transaksi_seq; Type: SEQUENCE SET; Schema: Travel; Owner: postgres
--

SELECT pg_catalog.setval('"Travel".fact_transaction_id_transaksi_seq', 1, false);


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 3, true);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 7, true);


--
-- Name: departements departements_pkey; Type: CONSTRAINT; Schema: Homework SQL 2; Owner: postgres
--

ALTER TABLE ONLY "Homework SQL 2".departements
    ADD CONSTRAINT departements_pkey PRIMARY KEY (departement_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: Homework SQL 2; Owner: postgres
--

ALTER TABLE ONLY "Homework SQL 2".employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: Homework SQL 2; Owner: postgres
--

ALTER TABLE ONLY "Homework SQL 2".products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: Homework SQL 2; Owner: postgres
--

ALTER TABLE ONLY "Homework SQL 2".sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);


--
-- Name: bar bar_pkey; Type: CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".bar
    ADD CONSTRAINT bar_pkey PRIMARY KEY (id);


--
-- Name: dosen dosen_pkey; Type: CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY ("NIDN");


--
-- Name: foo foo_pkey; Type: CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".foo
    ADD CONSTRAINT foo_pkey PRIMARY KEY (id);


--
-- Name: mahasiswa mahasiswa_Email_key; Type: CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".mahasiswa
    ADD CONSTRAINT "mahasiswa_Email_key" UNIQUE ("Email");


--
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY ("NIM");


--
-- Name: telepon telepon_pkey; Type: CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".telepon
    ADD CONSTRAINT telepon_pkey PRIMARY KEY ("NIM", "NoTelepon");


--
-- Name: users user_pkey; Type: CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".users
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);


--
-- Name: dim_destinasi dim_destinasi_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_destinasi
    ADD CONSTRAINT dim_destinasi_pkey PRIMARY KEY (id_destinasi);


--
-- Name: dim_driver dim_driver_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_driver
    ADD CONSTRAINT dim_driver_pkey PRIMARY KEY (id_driver);


--
-- Name: dim_kendaraan dim_kendaraan_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_kendaraan
    ADD CONSTRAINT dim_kendaraan_pkey PRIMARY KEY (id_kendaraan);


--
-- Name: dim_kota dim_kota_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_kota
    ADD CONSTRAINT dim_kota_pkey PRIMARY KEY (id_kota);


--
-- Name: dim_member dim_member_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_member
    ADD CONSTRAINT dim_member_pkey PRIMARY KEY (id_member);


--
-- Name: dim_merk dim_merk_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_merk
    ADD CONSTRAINT dim_merk_pkey PRIMARY KEY (id_merk);


--
-- Name: dim_negara dim_negara_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_negara
    ADD CONSTRAINT dim_negara_pkey PRIMARY KEY (id_negara);


--
-- Name: dim_paket dim_paket_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_paket
    ADD CONSTRAINT dim_paket_pkey PRIMARY KEY (id_paket);


--
-- Name: dim_provinsi dim_provinsi_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_provinsi
    ADD CONSTRAINT dim_provinsi_pkey PRIMARY KEY (id_provinsi);


--
-- Name: dim_time dim_time_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_time
    ADD CONSTRAINT dim_time_pkey PRIMARY KEY (id_time);


--
-- Name: fact_transaction fact_transaction_pkey; Type: CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".fact_transaction
    ADD CONSTRAINT fact_transaction_pkey PRIMARY KEY (id_transaksi);


--
-- Name: tb_order_items tb_order_items_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_order_items
    ADD CONSTRAINT tb_order_items_pkey PRIMARY KEY (order_item_id);


--
-- Name: tb_orders tb_orders_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_orders
    ADD CONSTRAINT tb_orders_pkey PRIMARY KEY (order_id);


--
-- Name: tb_payments tb_payments_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_payments
    ADD CONSTRAINT tb_payments_pkey PRIMARY KEY (payment_id);


--
-- Name: tb_product_category tb_product_category_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_product_category
    ADD CONSTRAINT tb_product_category_pkey PRIMARY KEY (product_category_id);


--
-- Name: tb_products tb_products_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_products
    ADD CONSTRAINT tb_products_pkey PRIMARY KEY (product_id);


--
-- Name: tb_ratings tb_ratings_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_ratings
    ADD CONSTRAINT tb_ratings_pkey PRIMARY KEY (rating_id);


--
-- Name: tb_shippers tb_shippers_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_shippers
    ADD CONSTRAINT tb_shippers_pkey PRIMARY KEY (shipper_id);


--
-- Name: tb_users tb_users_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_users
    ADD CONSTRAINT tb_users_pkey PRIMARY KEY (user_id);


--
-- Name: tb_vouchers tb_vouchers_pkey; Type: CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_vouchers
    ADD CONSTRAINT tb_vouchers_pkey PRIMARY KEY (voucher_id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);


--
-- Name: bar bar_foodid_fkey; Type: FK CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".bar
    ADD CONSTRAINT bar_foodid_fkey FOREIGN KEY (foodid) REFERENCES "SQL digital Skola".foo(id);


--
-- Name: mahasiswa mahasiswa_NidnPA_fkey; Type: FK CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".mahasiswa
    ADD CONSTRAINT "mahasiswa_NidnPA_fkey" FOREIGN KEY ("NidnPA") REFERENCES "SQL digital Skola".dosen("NIDN");


--
-- Name: telepon telepon_NIM_fkey; Type: FK CONSTRAINT; Schema: SQL digital Skola; Owner: postgres
--

ALTER TABLE ONLY "SQL digital Skola".telepon
    ADD CONSTRAINT "telepon_NIM_fkey" FOREIGN KEY ("NIM") REFERENCES "SQL digital Skola".mahasiswa("NIM");


--
-- Name: dim_kendaraan dim_kendaraan_id_merk_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_kendaraan
    ADD CONSTRAINT dim_kendaraan_id_merk_fkey FOREIGN KEY (id_merk) REFERENCES "Travel".dim_merk(id_merk);


--
-- Name: dim_kota dim_kota_id_provinsi_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_kota
    ADD CONSTRAINT dim_kota_id_provinsi_fkey FOREIGN KEY (id_provinsi) REFERENCES "Travel".dim_provinsi(id_provinsi);


--
-- Name: dim_member dim_member_id_kota_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_member
    ADD CONSTRAINT dim_member_id_kota_fkey FOREIGN KEY (id_kota) REFERENCES "Travel".dim_kota(id_kota);


--
-- Name: dim_paket dim_paket_id_destinasi_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_paket
    ADD CONSTRAINT dim_paket_id_destinasi_fkey FOREIGN KEY (id_destinasi) REFERENCES "Travel".dim_destinasi(id_destinasi);


--
-- Name: dim_provinsi dim_provinsi_id_negara_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".dim_provinsi
    ADD CONSTRAINT dim_provinsi_id_negara_fkey FOREIGN KEY (id_negara) REFERENCES "Travel".dim_negara(id_negara);


--
-- Name: fact_transaction fact_transaction_id_driver_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".fact_transaction
    ADD CONSTRAINT fact_transaction_id_driver_fkey FOREIGN KEY (id_driver) REFERENCES "Travel".dim_driver(id_driver);


--
-- Name: fact_transaction fact_transaction_id_kendaraan_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".fact_transaction
    ADD CONSTRAINT fact_transaction_id_kendaraan_fkey FOREIGN KEY (id_kendaraan) REFERENCES "Travel".dim_kendaraan(id_kendaraan);


--
-- Name: fact_transaction fact_transaction_id_member_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".fact_transaction
    ADD CONSTRAINT fact_transaction_id_member_fkey FOREIGN KEY (id_member) REFERENCES "Travel".dim_member(id_member);


--
-- Name: fact_transaction fact_transaction_id_paket_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".fact_transaction
    ADD CONSTRAINT fact_transaction_id_paket_fkey FOREIGN KEY (id_paket) REFERENCES "Travel".dim_paket(id_paket);


--
-- Name: fact_transaction fact_transaction_id_time_fkey; Type: FK CONSTRAINT; Schema: Travel; Owner: postgres
--

ALTER TABLE ONLY "Travel".fact_transaction
    ADD CONSTRAINT fact_transaction_id_time_fkey FOREIGN KEY (id_time) REFERENCES "Travel".dim_time(id_time);


--
-- Name: tb_order_items fk_order_id; Type: FK CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_order_items
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES marketplace.tb_orders(order_id);


--
-- Name: tb_orders fk_payment_id; Type: FK CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_orders
    ADD CONSTRAINT fk_payment_id FOREIGN KEY (payment_id) REFERENCES marketplace.tb_payments(payment_id);


--
-- Name: tb_products fk_product_category_id; Type: FK CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_products
    ADD CONSTRAINT fk_product_category_id FOREIGN KEY (product_category_id) REFERENCES marketplace.tb_product_category(product_category_id);


--
-- Name: tb_order_items fk_product_id; Type: FK CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_order_items
    ADD CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES marketplace.tb_products(product_id);


--
-- Name: tb_orders fk_rating_id; Type: FK CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_orders
    ADD CONSTRAINT fk_rating_id FOREIGN KEY (rating_id) REFERENCES marketplace.tb_ratings(rating_id);


--
-- Name: tb_orders fk_shipper_id; Type: FK CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_orders
    ADD CONSTRAINT fk_shipper_id FOREIGN KEY (shipper_id) REFERENCES marketplace.tb_shippers(shipper_id);


--
-- Name: tb_orders fk_user_id; Type: FK CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_orders
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES marketplace.tb_users(user_id);


--
-- Name: tb_vouchers fk_user_id; Type: FK CONSTRAINT; Schema: marketplace; Owner: postgres
--

ALTER TABLE ONLY marketplace.tb_vouchers
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES marketplace.tb_users(user_id);


--
-- Name: employees employees_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id);


--
-- PostgreSQL database dump complete
--

