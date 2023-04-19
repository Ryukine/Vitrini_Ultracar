--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-04-19 02:44:40

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
-- TOC entry 3450 (class 1262 OID 16398)
-- Name: Ultracar; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Ultracar" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Ultracar" OWNER TO postgres;

\connect "Ultracar"

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16421)
-- Name: cargo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cargo (
    cgcdcargo integer NOT NULL,
    cgnome character varying(50) NOT NULL,
    cgdescricao character varying(255) NOT NULL,
    cgmdsalarial double precision NOT NULL
);


ALTER TABLE public.cargo OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16420)
-- Name: cargo_cgcdcargo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cargo_cgcdcargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cargo_cgcdcargo_seq OWNER TO postgres;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 218
-- Name: cargo_cgcdcargo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cargo_cgcdcargo_seq OWNED BY public.cargo.cgcdcargo;


--
-- TOC entry 226 (class 1259 OID 16465)
-- Name: carrocliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrocliente (
    cccdcarro integer NOT NULL,
    cccdcliente integer NOT NULL,
    ccdtcadastro timestamp without time zone NOT NULL,
    ccstatus boolean DEFAULT true
);


ALTER TABLE public.carrocliente OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16446)
-- Name: carros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carros (
    crcdcarro integer NOT NULL,
    crmodelo character varying(100) NOT NULL,
    crfabricante character varying(100) NOT NULL,
    crano integer NOT NULL,
    crplaca character varying(7) NOT NULL,
    crdtcadastro timestamp without time zone NOT NULL,
    crinfadicionais character varying(255)
);


ALTER TABLE public.carros OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16445)
-- Name: carros_crcdcarro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carros_crcdcarro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carros_crcdcarro_seq OWNER TO postgres;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 222
-- Name: carros_crcdcarro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carros_crcdcarro_seq OWNED BY public.carros.crcdcarro;


--
-- TOC entry 225 (class 1259 OID 16453)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    clcdcliente integer NOT NULL,
    clcdpessoa integer NOT NULL,
    cldtcadastro timestamp without time zone NOT NULL,
    cldtalteracao timestamp without time zone,
    clstatus boolean DEFAULT true
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16452)
-- Name: cliente_clcdcliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_clcdcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_clcdcliente_seq OWNER TO postgres;

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 224
-- Name: cliente_clcdcliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_clcdcliente_seq OWNED BY public.cliente.clcdcliente;


--
-- TOC entry 235 (class 1259 OID 16543)
-- Name: contrato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contrato (
    ctcdcontrato integer NOT NULL,
    ctcdproposta integer NOT NULL,
    ctdtcadastro timestamp without time zone NOT NULL,
    ctdtini timestamp without time zone,
    ctdtfinal timestamp without time zone,
    cttotalhoras integer DEFAULT 0,
    ctcdprocesso integer NOT NULL
);


ALTER TABLE public.contrato OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16542)
-- Name: contrato_ctcdcontrato_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contrato_ctcdcontrato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contrato_ctcdcontrato_seq OWNER TO postgres;

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 234
-- Name: contrato_ctcdcontrato_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contrato_ctcdcontrato_seq OWNED BY public.contrato.ctcdcontrato;


--
-- TOC entry 215 (class 1259 OID 16400)
-- Name: enderecos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enderecos (
    edcdendereco integer NOT NULL,
    edlogradouro character varying(68) NOT NULL,
    ednumero character varying(50) NOT NULL,
    edbairro character varying(50) NOT NULL,
    edcidade character varying(58) NOT NULL,
    eduf character(2) NOT NULL,
    edcep character varying(8) NOT NULL,
    edcomplemento character varying(50) NOT NULL,
    edtipoendereco integer NOT NULL
);


ALTER TABLE public.enderecos OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16399)
-- Name: enderecos_edcdendereco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enderecos_edcdendereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enderecos_edcdendereco_seq OWNER TO postgres;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 214
-- Name: enderecos_edcdendereco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enderecos_edcdendereco_seq OWNED BY public.enderecos.edcdendereco;


--
-- TOC entry 221 (class 1259 OID 16428)
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionarios (
    fncdfunc integer NOT NULL,
    fncdpessoa integer NOT NULL,
    fncdcargo integer NOT NULL,
    fnsalario double precision NOT NULL,
    fndtcontratacao timestamp without time zone NOT NULL,
    fndtdesligamento timestamp without time zone,
    fnstatus integer DEFAULT 1
);


ALTER TABLE public.funcionarios OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16427)
-- Name: funcionarios_fncdfunc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.funcionarios_fncdfunc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.funcionarios_fncdfunc_seq OWNER TO postgres;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 220
-- Name: funcionarios_fncdfunc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funcionarios_fncdfunc_seq OWNED BY public.funcionarios.fncdfunc;


--
-- TOC entry 217 (class 1259 OID 16407)
-- Name: pessoas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pessoas (
    pscdpessoa integer NOT NULL,
    pscdendereco integer NOT NULL,
    psnome character varying(255) NOT NULL,
    psemail character varying(255) NOT NULL,
    pscgc character varying(15) NOT NULL,
    psdtnascimento timestamp without time zone NOT NULL,
    psdtcadastro timestamp without time zone NOT NULL
);


ALTER TABLE public.pessoas OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16406)
-- Name: pessoas_pscdpessoa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pessoas_pscdpessoa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pessoas_pscdpessoa_seq OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 216
-- Name: pessoas_pscdpessoa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pessoas_pscdpessoa_seq OWNED BY public.pessoas.pscdpessoa;


--
-- TOC entry 233 (class 1259 OID 16530)
-- Name: processos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.processos (
    pccdprocesso integer NOT NULL,
    pcnome character varying(50) NOT NULL,
    pcdescricao character varying(255) NOT NULL,
    pcstatus boolean DEFAULT true,
    pccdproxprocesso integer
);


ALTER TABLE public.processos OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16529)
-- Name: processos_pccdprocesso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.processos_pccdprocesso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.processos_pccdprocesso_seq OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 232
-- Name: processos_pccdprocesso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.processos_pccdprocesso_seq OWNED BY public.processos.pccdprocesso;


--
-- TOC entry 230 (class 1259 OID 16492)
-- Name: proposta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proposta (
    ppcdproposta integer NOT NULL,
    ppcdcliente integer NOT NULL,
    ppcdcarro integer NOT NULL,
    ppcdfuncionario integer NOT NULL,
    ppvalor double precision NOT NULL,
    ppdtcadastro timestamp without time zone NOT NULL,
    ppstatus integer DEFAULT 1
);


ALTER TABLE public.proposta OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16491)
-- Name: proposta_ppcdproposta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proposta_ppcdproposta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proposta_ppcdproposta_seq OWNER TO postgres;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 229
-- Name: proposta_ppcdproposta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proposta_ppcdproposta_seq OWNED BY public.proposta.ppcdproposta;


--
-- TOC entry 231 (class 1259 OID 16514)
-- Name: propostaservico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propostaservico (
    prcdproposta integer NOT NULL,
    prcdservico integer NOT NULL,
    prvalor double precision NOT NULL
);


ALTER TABLE public.propostaservico OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16482)
-- Name: servicos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicos (
    srcdservico integer NOT NULL,
    srnome character varying(255) NOT NULL,
    srdescricao character varying(255) NOT NULL,
    srvalor double precision NOT NULL,
    srstatus boolean DEFAULT true,
    srdtcadastro timestamp without time zone NOT NULL
);


ALTER TABLE public.servicos OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16481)
-- Name: servicos_srcdservico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.servicos_srcdservico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicos_srcdservico_seq OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 227
-- Name: servicos_srcdservico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.servicos_srcdservico_seq OWNED BY public.servicos.srcdservico;


--
-- TOC entry 3228 (class 2604 OID 16424)
-- Name: cargo cgcdcargo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo ALTER COLUMN cgcdcargo SET DEFAULT nextval('public.cargo_cgcdcargo_seq'::regclass);


--
-- TOC entry 3231 (class 2604 OID 16449)
-- Name: carros crcdcarro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros ALTER COLUMN crcdcarro SET DEFAULT nextval('public.carros_crcdcarro_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 16456)
-- Name: cliente clcdcliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN clcdcliente SET DEFAULT nextval('public.cliente_clcdcliente_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 16546)
-- Name: contrato ctcdcontrato; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contrato ALTER COLUMN ctcdcontrato SET DEFAULT nextval('public.contrato_ctcdcontrato_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 16403)
-- Name: enderecos edcdendereco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos ALTER COLUMN edcdendereco SET DEFAULT nextval('public.enderecos_edcdendereco_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 16431)
-- Name: funcionarios fncdfunc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios ALTER COLUMN fncdfunc SET DEFAULT nextval('public.funcionarios_fncdfunc_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 16410)
-- Name: pessoas pscdpessoa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoas ALTER COLUMN pscdpessoa SET DEFAULT nextval('public.pessoas_pscdpessoa_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 16533)
-- Name: processos pccdprocesso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.processos ALTER COLUMN pccdprocesso SET DEFAULT nextval('public.processos_pccdprocesso_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 16495)
-- Name: proposta ppcdproposta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposta ALTER COLUMN ppcdproposta SET DEFAULT nextval('public.proposta_ppcdproposta_seq'::regclass);


--
-- TOC entry 3235 (class 2604 OID 16485)
-- Name: servicos srcdservico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicos ALTER COLUMN srcdservico SET DEFAULT nextval('public.servicos_srcdservico_seq'::regclass);


--
-- TOC entry 3428 (class 0 OID 16421)
-- Dependencies: 219
-- Data for Name: cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (1, 'Mecânico de Caminhão', 'Responsável pela manutenção de caminhões', 4500);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (2, 'Mecânico de Carro', 'Responsável pela manutenção de carros', 3500);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (3, 'Gerente de Vendas', 'Responsável pela gestão da equipe de vendas', 8000);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (4, 'Vendedor', 'Responsável por vender os produtos da empresa', 3000);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (5, 'Motorista de Entrega', 'Responsável por fazer as entregas dos produtos', 3500);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (6, 'Auxiliar de Produção', 'Responsável por auxiliar na produção dos produtos', 2500);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (7, 'Engenheiro Mecânico', 'Responsável pela gestão e desenvolvimento dos projetos mecânicos', 10000);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (8, 'Designer Automotivo', 'Responsável pelo design dos carros da empresa', 7000);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (9, 'Analista de Sistemas', 'Responsável pela gestão e desenvolvimento dos sistemas da empresa', 9000);
INSERT INTO public.cargo (cgcdcargo, cgnome, cgdescricao, cgmdsalarial) VALUES (10, 'Analista Financeiro', 'Responsável pela gestão financeira da empresa', 8000);


--
-- TOC entry 3435 (class 0 OID 16465)
-- Dependencies: 226
-- Data for Name: carrocliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (1, 2, '2022-02-01 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (1, 11, '2022-03-06 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (2, 3, '2022-03-05 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (3, 4, '2022-04-11 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (4, 5, '2022-05-23 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (5, 6, '2022-06-02 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (6, 7, '2022-07-09 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (7, 8, '2022-08-01 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (19, 9, '2023-04-15 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (18, 10, '2023-02-07 00:00:00', true);
INSERT INTO public.carrocliente (cccdcarro, cccdcliente, ccdtcadastro, ccstatus) VALUES (8, 11, '2022-09-07 00:00:00', false);


--
-- TOC entry 3432 (class 0 OID 16446)
-- Dependencies: 223
-- Data for Name: carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (1, 'Civic', 'Honda', 2020, 'ABC1234', '2022-02-01 00:00:00', 'Cor: Branco, Possui kit multimídia.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (2, 'Onix', 'Chevrolet', 2021, 'DEF5678', '2022-03-05 00:00:00', 'Cor: Vermelho, Único dono.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (3, 'Gol', 'Volkswagen', 2019, 'GHI9101', '2022-04-11 00:00:00', NULL);
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (4, 'Corolla', 'Toyota', 2022, 'JKL2345', '2022-05-23 00:00:00', 'Cor: Prata, Possui câmera de ré.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (5, 'Hilux', 'Toyota', 2020, 'MNO6789', '2022-06-02 00:00:00', 'Cor: Azul, Possui tração 4x4.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (6, 'Ranger', 'Ford', 2021, 'PQR1234', '2022-07-09 00:00:00', NULL);
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (7, 'HB20', 'Hyundai', 2021, 'STU5678', '2022-08-01 00:00:00', 'Cor: Preto, Possui bancos em couro.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (8, 'Toro', 'Fiat', 2022, 'VWX9101', '2022-09-07 00:00:00', 'Cor: Vermelho, Possui central multimídia.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (9, 'Renegade', 'Jeep', 2021, 'YZA2345', '2022-10-15 00:00:00', 'Cor: Branco, Possui teto solar.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (10, 'Compass', 'Jeep', 2022, 'BCB6789', '2022-11-02 00:00:00', 'Cor: Prata, Possui piloto automático.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (11, 'S10', 'Chevrolet', 2020, 'DEF1234', '2022-12-11 00:00:00', NULL);
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (12, 'Amarok', 'Volkswagen', 2021, 'GHI5678', '2023-01-01 00:00:00', 'Cor: Azul, Possui tração 4x4.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (13, 'Tracker', 'Chevrolet', 2022, 'JKL9101', '2023-02-07 00:00:00', 'Cor: Preto, Possui sensor de estacionamento.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (14, 'Creta', 'Hyundai', 2021, 'MNO2345', '2023-03-15 00:00:00', NULL);
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (15, 'Strada', 'Fiat', 2022, 'PQR6789', '2023-04-02 00:00:00', 'Cor: Branco, Possui protetor de caçamba.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (16, 'T-Cross', 'Volkswagen', 2020, 'STU1234', '2023-04-11 00:00:00', 'Cor: Vermelho, Possui rodas de liga leve.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (17, 'Cruze', 'Chevrolet', 2021, 'VWX5678', '2023-03-01 00:00:00', NULL);
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (18, 'Kicks', 'Nissan', 2022, 'YZA9101', '2023-02-07 00:00:00', 'Cor: Cinza, Possui teto solar.');
INSERT INTO public.carros (crcdcarro, crmodelo, crfabricante, crano, crplaca, crdtcadastro, crinfadicionais) VALUES (19, 'City', 'Honda', 2021, 'BCB2345', '2023-04-15 00:00:00', 'Cor: Prata, Possui central multimídia.');


--
-- TOC entry 3434 (class 0 OID 16453)
-- Dependencies: 225
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (2, 2, '2022-12-10 00:00:00', NULL, true);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (3, 3, '2022-11-15 00:00:00', NULL, true);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (4, 4, '2022-10-20 00:00:00', NULL, false);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (5, 5, '2022-09-25 00:00:00', NULL, true);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (6, 6, '2022-08-30 00:00:00', NULL, false);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (7, 7, '2022-07-05 00:00:00', NULL, true);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (8, 8, '2022-06-10 00:00:00', NULL, false);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (9, 9, '2022-05-15 00:00:00', NULL, true);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (10, 10, '2022-04-20 00:00:00', NULL, false);
INSERT INTO public.cliente (clcdcliente, clcdpessoa, cldtcadastro, cldtalteracao, clstatus) VALUES (11, 11, '2022-03-25 00:00:00', NULL, true);


--
-- TOC entry 3444 (class 0 OID 16543)
-- Dependencies: 235
-- Data for Name: contrato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contrato (ctcdcontrato, ctcdproposta, ctdtcadastro, ctdtini, ctdtfinal, cttotalhoras, ctcdprocesso) VALUES (1, 7, '2023-02-08 00:00:00', NULL, NULL, 0, 1);
INSERT INTO public.contrato (ctcdcontrato, ctcdproposta, ctdtcadastro, ctdtini, ctdtfinal, cttotalhoras, ctcdprocesso) VALUES (2, 8, '2023-04-16 00:00:00', NULL, NULL, 0, 5);


--
-- TOC entry 3424 (class 0 OID 16400)
-- Dependencies: 215
-- Data for Name: enderecos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (1, 'Rua das Flores', '10', 'Centro', 'Rio de Janeiro', 'RJ', '20010000', 'Sala 1', 2);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (2, 'Avenida Paulista', '100', 'Bela Vista', 'São Paulo', 'SP', '01310000', 'Loja 20', 2);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (3, 'Rua dos Bandeirantes', '500', 'Vila Mariana', 'São Paulo', 'SP', '04052030', 'Casa 3', 1);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (4, 'Rua da Consolação', '2000', 'Consolação', 'São Paulo', 'SP', '01301030', 'Apartamento 40', 1);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (5, 'Rua Carlos Gomes', '800', 'Centro', 'Campinas', 'SP', '13010121', 'Conjunto 15', 2);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (6, 'Rua Dom Pedro II', '150', 'Jardim Europa', 'São Paulo', 'SP', '01454010', 'Casa 2', 1);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (7, 'Rua XV de Novembro', '300', 'Centro', 'Curitiba', 'PR', '80020010', 'Sala 50', 2);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (8, 'Avenida Atlântica', '1000', 'Copacabana', 'Rio de Janeiro', 'RJ', '22010001', 'Apartamento 60', 1);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (9, 'Rua Amazonas', '200', 'Centro', 'Belo Horizonte', 'MG', '30130010', 'Loja 5', 2);
INSERT INTO public.enderecos (edcdendereco, edlogradouro, ednumero, edbairro, edcidade, eduf, edcep, edcomplemento, edtipoendereco) VALUES (10, 'Rua das Palmeiras', '50', 'Jardim das Flores', 'Osasco', 'SP', '06080030', 'Casa 4', 1);


--
-- TOC entry 3430 (class 0 OID 16428)
-- Dependencies: 221
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (11, 2, 1, 3200, '2020-01-01 00:00:00', NULL, 1);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (12, 3, 2, 4500, '2021-02-15 00:00:00', NULL, 1);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (13, 4, 3, 2800, '2019-04-01 00:00:00', '2022-03-31 00:00:00', 0);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (14, 5, 4, 3600, '2020-07-12 00:00:00', NULL, 1);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (15, 6, 5, 4200, '2018-01-02 00:00:00', '2022-12-31 00:00:00', 0);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (16, 7, 6, 3000, '2022-01-01 00:00:00', NULL, 1);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (17, 8, 7, 4000, '2019-05-22 00:00:00', '2023-04-30 00:00:00', 0);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (18, 9, 8, 2800, '2020-01-01 00:00:00', '2022-12-31 00:00:00', 0);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (19, 10, 9, 4200, '2021-06-01 00:00:00', NULL, 1);
INSERT INTO public.funcionarios (fncdfunc, fncdpessoa, fncdcargo, fnsalario, fndtcontratacao, fndtdesligamento, fnstatus) VALUES (20, 11, 10, 8200, '2021-05-01 00:00:00', NULL, 1);


--
-- TOC entry 3426 (class 0 OID 16407)
-- Dependencies: 217
-- Data for Name: pessoas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (2, 1, 'Ana Silva', 'ana.silva@gmail.com', '68928825016', '1990-02-15 00:00:00', '2022-01-10 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (3, 2, 'Pedro Souza', 'pedro.souza@hotmail.com', '22234189020', '1995-05-21 00:00:00', '2022-02-05 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (4, 3, 'Carla Santos', 'carla.santos@gmail.com', '90078721091', '1992-11-30 00:00:00', '2022-03-18 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (5, 4, 'Lucas Oliveira', 'lucas.oliveira@yahoo.com', '87505213067', '1998-07-03 00:00:00', '2022-04-07 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (6, 5, 'Maria Pereira', 'maria.pereira@gmail.com', '54260558072', '1985-12-10 00:00:00', '2022-05-02 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (7, 6, 'Gustavo Lima', 'gustavo.lima@gmail.com', '40876865074', '1991-09-23 00:00:00', '2022-06-21 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (8, 7, 'Juliana Almeida', 'juliana.almeida@yahoo.com', '30215621085', '1988-04-18 00:00:00', '2022-07-16 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (9, 8, 'Rafaela Barbosa', 'rafaela.barbosa@hotmail.com', '95579455089', '1994-06-09 00:00:00', '2022-08-14 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (10, 9, 'Fernando Costa', 'fernando.costa@gmail.com', '41581009097', '1986-08-27 00:00:00', '2022-09-28 00:00:00');
INSERT INTO public.pessoas (pscdpessoa, pscdendereco, psnome, psemail, pscgc, psdtnascimento, psdtcadastro) VALUES (11, 10, 'Marcela Rodrigues', 'marcela.rodrigues@hotmail.com', '15242269049', '1993-03-05 00:00:00', '2022-10-22 00:00:00');


--
-- TOC entry 3442 (class 0 OID 16530)
-- Dependencies: 233
-- Data for Name: processos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.processos (pccdprocesso, pcnome, pcdescricao, pcstatus, pccdproxprocesso) VALUES (1, 'FINALIZADO', 'Finaliza a esteira de processos', true, NULL);
INSERT INTO public.processos (pccdprocesso, pcnome, pcdescricao, pcstatus, pccdproxprocesso) VALUES (2, 'CHECAGEM', 'Efetua a checagem do carra antes da finalização', true, 1);
INSERT INTO public.processos (pccdprocesso, pcnome, pcdescricao, pcstatus, pccdproxprocesso) VALUES (3, 'EXECUÇÃO', 'Durante esse processo é executado todos os serviços solicitados', true, 2);
INSERT INTO public.processos (pccdprocesso, pcnome, pcdescricao, pcstatus, pccdproxprocesso) VALUES (4, 'AVALIACAO', 'Durante esse processo é avaliado o passo a passo que deverá ser feito', true, 3);
INSERT INTO public.processos (pccdprocesso, pcnome, pcdescricao, pcstatus, pccdproxprocesso) VALUES (5, 'APROVADO', 'Esse processo é o inicio da esteira, quando a proposta é aprovada', true, 4);


--
-- TOC entry 3439 (class 0 OID 16492)
-- Dependencies: 230
-- Data for Name: proposta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.proposta (ppcdproposta, ppcdcliente, ppcdcarro, ppcdfuncionario, ppvalor, ppdtcadastro, ppstatus) VALUES (7, 10, 18, 11, 200, '2023-02-07 00:00:00', 1);
INSERT INTO public.proposta (ppcdproposta, ppcdcliente, ppcdcarro, ppcdfuncionario, ppvalor, ppdtcadastro, ppstatus) VALUES (8, 9, 19, 12, 800, '2023-04-15 00:00:00', 1);
INSERT INTO public.proposta (ppcdproposta, ppcdcliente, ppcdcarro, ppcdfuncionario, ppvalor, ppdtcadastro, ppstatus) VALUES (9, 2, 1, 14, 950, '2022-03-06 00:00:00', 0);


--
-- TOC entry 3440 (class 0 OID 16514)
-- Dependencies: 231
-- Data for Name: propostaservico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.propostaservico (prcdproposta, prcdservico, prvalor) VALUES (7, 3, 120);
INSERT INTO public.propostaservico (prcdproposta, prcdservico, prvalor) VALUES (7, 2, 80);
INSERT INTO public.propostaservico (prcdproposta, prcdservico, prvalor) VALUES (8, 7, 800);
INSERT INTO public.propostaservico (prcdproposta, prcdservico, prvalor) VALUES (9, 9, 450);
INSERT INTO public.propostaservico (prcdproposta, prcdservico, prvalor) VALUES (9, 12, 500);


--
-- TOC entry 3437 (class 0 OID 16482)
-- Dependencies: 228
-- Data for Name: servicos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (1, 'Troca de óleo', 'É efetuado a troca de óleo do motor do carro do cliente', 260, true, '2022-02-10 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (2, 'Balanceamento de rodas', 'Realização do balanceamento das rodas do carro', 80, true, '2022-03-15 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (3, 'Alinhamento de direção', 'Realização do alinhamento da direção do carro', 120, true, '2022-04-20 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (4, 'Revisão de suspensão', 'Revisão geral da suspensão do carro', 400, true, '2022-05-10 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (5, 'Troca de correia dentada', 'Troca da correia dentada do motor do carro', 700, true, '2022-06-05 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (6, 'Revisão de freios', 'Revisão geral do sistema de freios do carro', 280, true, '2022-07-15 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (7, 'Troca de pneus', 'Troca dos pneus do carro', 800, true, '2022-08-10 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (8, 'Higienização de ar condicionado', 'Limpeza e higienização do sistema de ar condicionado', 180, true, '2022-09-05 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (9, 'Polimento de pintura', 'Polimento e revitalização da pintura do carro', 450, true, '2022-10-20 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (10, 'Troca de filtro de ar', 'Troca do filtro de ar do motor do carro', 120, true, '2022-11-15 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (11, 'Revisão de motor', 'Revisão geral do motor do carro', 600, true, '2022-12-10 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (12, 'Reparo de motor de partida', 'Reparo ou substituição do motor de partida do carro', 500, true, '2023-01-05 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (13, 'Reparo de alternador', 'Reparo ou substituição do alternador do carro', 450, true, '2023-02-20 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (14, 'Revisão de sistema elétrico', 'Revisão geral do sistema elétrico do carro', 350, true, '2023-03-10 00:00:00');
INSERT INTO public.servicos (srcdservico, srnome, srdescricao, srvalor, srstatus, srdtcadastro) VALUES (15, 'Troca de velas', 'Troca das velas do motor do carro', 150, true, '2023-04-05 00:00:00');


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 218
-- Name: cargo_cgcdcargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cargo_cgcdcargo_seq', 10, true);


--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 222
-- Name: carros_crcdcarro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carros_crcdcarro_seq', 19, true);


--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 224
-- Name: cliente_clcdcliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_clcdcliente_seq', 11, true);


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 234
-- Name: contrato_ctcdcontrato_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contrato_ctcdcontrato_seq', 2, true);


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 214
-- Name: enderecos_edcdendereco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enderecos_edcdendereco_seq', 10, true);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 220
-- Name: funcionarios_fncdfunc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funcionarios_fncdfunc_seq', 20, true);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 216
-- Name: pessoas_pscdpessoa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pessoas_pscdpessoa_seq', 11, true);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 232
-- Name: processos_pccdprocesso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.processos_pccdprocesso_seq', 5, true);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 229
-- Name: proposta_ppcdproposta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proposta_ppcdproposta_seq', 9, true);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 227
-- Name: servicos_srcdservico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.servicos_srcdservico_seq', 15, true);


--
-- TOC entry 3248 (class 2606 OID 16426)
-- Name: cargo cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (cgcdcargo);


--
-- TOC entry 3256 (class 2606 OID 16470)
-- Name: carrocliente carrocliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrocliente
    ADD CONSTRAINT carrocliente_pkey PRIMARY KEY (cccdcarro, cccdcliente);


--
-- TOC entry 3252 (class 2606 OID 16451)
-- Name: carros carros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_pkey PRIMARY KEY (crcdcarro);


--
-- TOC entry 3254 (class 2606 OID 16459)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (clcdcliente);


--
-- TOC entry 3266 (class 2606 OID 16549)
-- Name: contrato contrato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT contrato_pkey PRIMARY KEY (ctcdcontrato);


--
-- TOC entry 3244 (class 2606 OID 16405)
-- Name: enderecos enderecos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos
    ADD CONSTRAINT enderecos_pkey PRIMARY KEY (edcdendereco);


--
-- TOC entry 3250 (class 2606 OID 16434)
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (fncdfunc);


--
-- TOC entry 3246 (class 2606 OID 16414)
-- Name: pessoas pessoas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoas
    ADD CONSTRAINT pessoas_pkey PRIMARY KEY (pscdpessoa);


--
-- TOC entry 3264 (class 2606 OID 16536)
-- Name: processos processos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.processos
    ADD CONSTRAINT processos_pkey PRIMARY KEY (pccdprocesso);


--
-- TOC entry 3260 (class 2606 OID 16498)
-- Name: proposta proposta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposta
    ADD CONSTRAINT proposta_pkey PRIMARY KEY (ppcdproposta);


--
-- TOC entry 3262 (class 2606 OID 16518)
-- Name: propostaservico propostaservico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propostaservico
    ADD CONSTRAINT propostaservico_pkey PRIMARY KEY (prcdproposta, prcdservico);


--
-- TOC entry 3258 (class 2606 OID 16490)
-- Name: servicos servicos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicos
    ADD CONSTRAINT servicos_pkey PRIMARY KEY (srcdservico);


--
-- TOC entry 3278 (class 2606 OID 16537)
-- Name: processos fk_auto_relacionamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.processos
    ADD CONSTRAINT fk_auto_relacionamento FOREIGN KEY (pccdproxprocesso) REFERENCES public.processos(pccdprocesso);


--
-- TOC entry 3271 (class 2606 OID 16476)
-- Name: carrocliente fk_carrocliente_carro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrocliente
    ADD CONSTRAINT fk_carrocliente_carro FOREIGN KEY (cccdcarro) REFERENCES public.carros(crcdcarro);


--
-- TOC entry 3272 (class 2606 OID 16471)
-- Name: carrocliente fk_carrocliente_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrocliente
    ADD CONSTRAINT fk_carrocliente_cliente FOREIGN KEY (cccdcliente) REFERENCES public.cliente(clcdcliente);


--
-- TOC entry 3270 (class 2606 OID 16460)
-- Name: cliente fk_cliente_pessoas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente_pessoas FOREIGN KEY (clcdpessoa) REFERENCES public.pessoas(pscdpessoa);


--
-- TOC entry 3268 (class 2606 OID 16440)
-- Name: funcionarios fk_funcionario_cargo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT fk_funcionario_cargo FOREIGN KEY (fncdcargo) REFERENCES public.cargo(cgcdcargo);


--
-- TOC entry 3269 (class 2606 OID 16435)
-- Name: funcionarios fk_funcionario_pessoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT fk_funcionario_pessoa FOREIGN KEY (fncdpessoa) REFERENCES public.pessoas(pscdpessoa);


--
-- TOC entry 3267 (class 2606 OID 16415)
-- Name: pessoas fk_pessoas_enderecos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoas
    ADD CONSTRAINT fk_pessoas_enderecos FOREIGN KEY (pscdendereco) REFERENCES public.enderecos(edcdendereco);


--
-- TOC entry 3279 (class 2606 OID 16555)
-- Name: contrato fk_processo_contrato; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT fk_processo_contrato FOREIGN KEY (ctcdprocesso) REFERENCES public.processos(pccdprocesso);


--
-- TOC entry 3273 (class 2606 OID 16504)
-- Name: proposta fk_proposta_carros; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposta
    ADD CONSTRAINT fk_proposta_carros FOREIGN KEY (ppcdcarro) REFERENCES public.carros(crcdcarro);


--
-- TOC entry 3274 (class 2606 OID 16499)
-- Name: proposta fk_proposta_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposta
    ADD CONSTRAINT fk_proposta_cliente FOREIGN KEY (ppcdcliente) REFERENCES public.cliente(clcdcliente);


--
-- TOC entry 3280 (class 2606 OID 16550)
-- Name: contrato fk_proposta_contrato; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT fk_proposta_contrato FOREIGN KEY (ctcdproposta) REFERENCES public.proposta(ppcdproposta);


--
-- TOC entry 3275 (class 2606 OID 16509)
-- Name: proposta fk_proposta_funcionarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proposta
    ADD CONSTRAINT fk_proposta_funcionarios FOREIGN KEY (ppcdfuncionario) REFERENCES public.funcionarios(fncdfunc);


--
-- TOC entry 3276 (class 2606 OID 16519)
-- Name: propostaservico fk_propostaservico_proposta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propostaservico
    ADD CONSTRAINT fk_propostaservico_proposta FOREIGN KEY (prcdproposta) REFERENCES public.proposta(ppcdproposta);


--
-- TOC entry 3277 (class 2606 OID 16524)
-- Name: propostaservico fk_propostaservico_servico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propostaservico
    ADD CONSTRAINT fk_propostaservico_servico FOREIGN KEY (prcdservico) REFERENCES public.servicos(srcdservico);


-- Completed on 2023-04-19 02:44:40

--
-- PostgreSQL database dump complete
--

