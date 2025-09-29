--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: m_code; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.m_code VALUES ('D0001', 'Loại hợp đồng', 'CONTT001', 'NDA', 1, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0001', 'Loại hợp đồng', 'CONTT002', 'MSA', 2, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0001', 'Loại hợp đồng', 'CONTT003', 'ORDER', 3, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0002', 'Trạng thài hợp đồng', 'CONTS001', 'Đang tạo', 1, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0002', 'Trạng thài hợp đồng', 'CONTS002', 'Đang thực hiện', 2, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0002', 'Trạng thài hợp đồng', 'CONTS003', 'Hoàn thành', 3, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0004', 'Loại tiền', 'CURR002', 'USD', 2, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0004', 'Loại tiền', 'CURR003', 'JPY', 3, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0004', 'Loại tiền', 'CURR001', 'VND', 1, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0005', 'Trạng thái thanh toán', 'CPS001', 'Chưa tạo biên bản', 1, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0005', 'Trạng thái thanh toán', 'CPS002', 'Đã tạo biên bản', 2, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0005', 'Trạng thái thanh toán', 'CPS003', 'Đã nghiệm thu', 3, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0006', 'Trạng thái biên bản', 'ARS001', 'Đã tạo biên bản', 1, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0006', 'Trạng thái biên bản', 'ARS002', 'Đã nghiệm thu', 2, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0003', 'Loại báo giá', 'QUOTT001', 'Nội bộ', 1, ' ', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0008', 'Độ Ưu Tiên', 'PRIORITY03', 'Thấp', 3, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0008', 'Độ Ưu Tiên', 'PRIORITY01', 'Cao', 1, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0008', 'Độ Ưu Tiên', 'PRIORITY02', 'Trung bình', 2, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0007', 'Trạng Thái Báo Giá RAW', 'RAWTYPE005', 'Khách hàng đã duyệt', 5, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0007', 'Trạng Thái Báo Giá RAW', 'RAWTYPE001', 'Đang Tạo', 1, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0007', 'Trạng Thái Báo Giá RAW', 'RAWTYPE002', 'Chờ kiểm tra', 2, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0007', 'Trạng Thái Báo Giá RAW', 'RAWTYPE003', 'Chờ Duyệt', 3, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0007', 'Trạng Thái Báo Giá RAW', 'RAWTYPE006', 'Bị từ chối', 4, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0007', 'Trạng Thái Báo Giá RAW', 'RAWTYPE004', 'Đã Duyệt', 4, '0', NULL, NULL, NULL, NULL);
INSERT INTO public.m_code VALUES ('D0003', 'Loại báo giá', 'QUOTT002', 'Bên Ngoài', 2, '0', NULL, NULL, NULL, NULL);


--
-- Data for Name: t_acceptance_report; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_acceptance_report VALUES (26, 101, 678, 'ARS001', '2025-09-19', 444, 'CURR002', 'Tiền mặt', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_acceptance_report VALUES (28, 128, 684, 'ARS001', '2025-09-19', 1111111111111, 'CURR002', 'Tiền mặt', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_acceptance_report VALUES (27, 127, 681, 'ARS002', '2025-09-19', 4444, 'CURR002', 'Tiền mặt', '', NULL, NULL, NULL, NULL);
INSERT INTO public.t_acceptance_report VALUES (29, 129, 685, 'ARS002', '2025-09-19', 11111, 'CURR002', 'Tiền mặt', 'Tốt', NULL, NULL, NULL, NULL);


--
-- Data for Name: t_approval_history; Type: TABLE DATA; Schema: public; Owner: liberty
--



--
-- Data for Name: t_contract; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_contract VALUES (127, 16, '2025_3_127', 'CONTT002', 'CONTS001', 'test', 'test', 'test', '2025-09-02', '2025-09-10', 12.00, 1222222, 'CURR002', 'e2c1z7zmhMwK28hZ4fAZKM4cp0lt2sGzXPXxsQ3hkZsf8VTCAdKRM1Q0TKdxXoIFbBBJ0bMZCqQYYnUqXi4DQQp9UQQHVJtWNvUmG3IdZdhm2YKdX8hqzz31m1uadn7a', 0, NULL, NULL, NULL, 3);
INSERT INTO public.t_contract VALUES (129, 17, '2025_2_129', 'CONTT002', 'CONTS001', 'hoa', 'nhat', 'test', '2025-09-10', '2025-09-20', 12.00, 1000000, 'CURR002', 'MUbySFUfbxUGFjGKsBLNn6UFvUa2EiQDDPxivr8k7KLjL4El0At92nXWzOprxpT5FGZiSwgFSbysd3I3qm1uEnyDgBt1wqyguDmU92nsahsmBdOKN8hqzzis0kucrf7a', 0, NULL, NULL, NULL, 2);


--
-- Data for Name: t_contract_payment; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_contract_payment VALUES (683, 128, '2026-09-19', 'CPS001', 10.00, 2000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (684, 128, '2027-09-20', 'CPS002', 20.00, 3000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (696, 127, '2025-09-19', 'CPS001', 10.00, 2000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (697, 127, '2026-09-20', 'CPS001', 20.00, 3000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (698, 127, '2025-09-11', 'CPS001', 20.00, 2000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (699, 127, '2027-09-17', 'CPS001', 12.00, 3000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (703, 129, '2027-09-15', 'CPS001', 10.00, 6000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (704, 129, '2026-09-24', 'CPS001', 10.00, 4000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (705, 129, '2025-09-09', 'CPS001', 20.00, 6000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (681, 127, '2026-09-19', 'CPS001', 10.00, 2000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_contract_payment VALUES (685, 129, '2026-09-19', 'CPS001', 10.00, 2000, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: t_customer; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_customer VALUES (1, '01234', 'nhat', '0943754', 'hanam', 1, NULL, 1, NULL);
INSERT INTO public.t_customer VALUES (2, '1212421', 'hoa', '12213213', 'ninh binh', 1, NULL, 1, NULL);
INSERT INTO public.t_customer VALUES (3, '456', 'nguyen', '01212121', 'phutho', 1, NULL, 1, NULL);


--
-- Data for Name: t_quote; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_quote VALUES (149, 'QUOTT001', 'Draft_20250923142915', 3, NULL, 'RAWTYPE004', 'demo111', NULL, '2025-09-23', '2025-09-26', '', 0.00, 0, '', '', '', NULL, NULL, NULL, NULL, '', '8hr5o90laq1i97a');
INSERT INTO public.t_quote VALUES (150, 'QUOTT001', 'Draft_20250923143125', 3, NULL, 'RAWTYPE004', 'demo112', NULL, '2025-09-16', '2025-09-22', '', 0.00, 0, '', '', '', NULL, NULL, NULL, NULL, '', '8hr5obsu6q1wj7a');
INSERT INTO public.t_quote VALUES (151, 'QUOTT001', 'Draft_20250923161740', 2, NULL, 'RAWTYPE004', '345534', NULL, NULL, '2025-09-27', '345', 345.00, 0, '', '', '3453', NULL, NULL, NULL, NULL, '', '8hr5s4g07qcsj7a');
INSERT INTO public.t_quote VALUES (152, 'QUOTT001', 'Draft_20250923162005', 2, NULL, 'RAWTYPE003', '3453', NULL, NULL, '2025-09-27', '3453', 0.00, 0, '', '', '34534', NULL, NULL, NULL, NULL, '', '8hr5s7kbpqd777a');
INSERT INTO public.t_quote VALUES (153, 'QUOTT001', 'Draft_20250924103242', 1, NULL, 'RAWTYPE004', 'hoadv-test', NULL, '2025-09-16', '2025-09-25', '', 0.00, 0, '', '', '', NULL, NULL, NULL, NULL, '', '8hr6v8oqsh5xv7a');
INSERT INTO public.t_quote VALUES (140, 'QUOTT001', 'Draft_20250919135717', 3, NULL, 'RAWTYPE005', 'test11', NULL, '2025-09-01', '2025-09-19', 'dtsvn', 100.00, 200000, 'CURR002', 'Trung bình', 'báo giá sơ bộ', NULL, NULL, NULL, NULL, 'bob', '8hqzxciklu4ii7a');
INSERT INTO public.t_quote VALUES (154, 'QUOTT002', 'Draft_20250924103945', 1, NULL, 'RAWTYPE004', 'test5', NULL, '2025-09-09', '2025-09-27', '', 0.00, 0, 'CURR002', '', '', NULL, NULL, NULL, NULL, '', '8hr6vhqvqh6au7a');
INSERT INTO public.t_quote VALUES (144, 'QUOTT001', 'Draft_20250919145608', 2, NULL, 'RAWTYPE005', 'test2', NULL, '2025-09-01', '2025-09-19', 'dtsvn', 100.00, 30000, 'CURR002', 'Trung bình', 'test', NULL, NULL, NULL, NULL, 'bob', '8hqzzg6uiuc317a');
INSERT INTO public.t_quote VALUES (145, 'QUOTT002', 'Draft_20250919150139', 3, NULL, 'RAWTYPE001', 'test4', NULL, '2025-09-01', '2025-09-26', 'dtsvn', 50.00, 6000, 'CURR002', 'Trung bình', 'ghi chu', NULL, NULL, NULL, NULL, 'bob', '8hqzznaniudk37a');
INSERT INTO public.t_quote VALUES (146, 'QUOTT001', 'Draft_20250919155135', 3, NULL, 'RAWTYPE003', '2342', NULL, '2025-09-18', '2025-09-26', '1311', 123.00, 12, 'CURR002', '', '', NULL, NULL, NULL, NULL, '', '8hr01fiigue5f7a');
INSERT INTO public.t_quote VALUES (156, 'QUOTT001', 'Draft_20250924133709', 1, NULL, 'RAWTYPE003', 'test3', NULL, NULL, NULL, '', 0.00, 0, '', '', '', NULL, NULL, NULL, NULL, '', '8hr71tv9lhhdf7a');
INSERT INTO public.t_quote VALUES (157, 'QUOTT001', 'Draft_20250924133803', 1, NULL, 'RAWTYPE003', 'test55', NULL, NULL, NULL, '', 0.00, 0, '', '', '', NULL, NULL, NULL, NULL, '', '8hr71v0yphhiq7a');
INSERT INTO public.t_quote VALUES (148, 'QUOTT001', 'Draft_20250922112419', 2, NULL, 'RAWTYPE001', 'test3', NULL, '2025-09-22', '2025-09-24', 'dtsvn', 50.00, 3333, 'CURR002', 'Cao', 'ghi chú', NULL, NULL, NULL, NULL, 'nhatNH', '8hr427bwzmonq7a');
INSERT INTO public.t_quote VALUES (147, 'QUOTT001', 'Draft_20250919155859', 2, NULL, 'RAWTYPE004', 'dfsfd', NULL, '2025-09-18', '2025-09-20', 'sdf', 0.00, 0, '', '', 'sdf', NULL, NULL, NULL, NULL, '', '8hr01p0uhueoi7a');
INSERT INTO public.t_quote VALUES (141, 'QUOTT001', 'Draft_20250919142957', 2, NULL, 'RAWTYPE004', 'Cong 32', NULL, '2025-09-19', '2025-09-27', '234234', 423.00, 23, 'CURR003', 'Cao', '324232423 2 2342 334 34434345 4533 45343 54', NULL, NULL, NULL, NULL, 'max', '8hqzyij3du8ah7a');
INSERT INTO public.t_quote VALUES (158, 'QUOTT002', 'Draft_20250924133945', 3, NULL, 'RAWTYPE002', 'test123', NULL, NULL, NULL, '', 0.00, 0, '', '', '', NULL, NULL, NULL, NULL, '', '8hr71x7y7hhz97a');
INSERT INTO public.t_quote VALUES (155, 'QUOTT001', 'Draft_20250924133534', 2, NULL, 'RAWTYPE004', '232', NULL, NULL, '2025-09-26', '232', 0.00, 0, '', '', '3453', NULL, NULL, NULL, NULL, '', '8hr71rttphh8r7a');
INSERT INTO public.t_quote VALUES (160, 'QUOTT002', 'Draft_20250924134609', 2, NULL, 'RAWTYPE004', '2342', NULL, NULL, '2025-09-26', '234', 0.00, 0, '', '', '234', NULL, NULL, NULL, NULL, '', '8hr725g9hhinq7a');
INSERT INTO public.t_quote VALUES (159, 'QUOTT002', 'Draft_20250924134044', 2, NULL, 'RAWTYPE006', 'test77', NULL, NULL, NULL, '', 0.00, 0, '', '', '', NULL, NULL, NULL, NULL, '', '8hr71yh7nhib07a');


--
-- Data for Name: t_quote_file; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_quote_file VALUES (98, NULL, 59, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (77, NULL, 55, 'LoZQYVHPJl6vNPmTDPdajGUXITYjvMJhO5imfiuvtY1sDTMha3nXapMxH5Z3tZ1J2nfLHooWerhIKrkJ2MJCqaKuxRKJisAuAjA0lJOqMt8gV6XLs8hqzxbm5mu4fr7a');
INSERT INTO public.t_quote_file VALUES (99, NULL, 59, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (100, 141, NULL, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (101, 141, NULL, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (102, NULL, 60, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (103, NULL, 60, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (104, NULL, 61, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (105, NULL, 61, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (128, NULL, 69, '');
INSERT INTO public.t_quote_file VALUES (49, 140, NULL, 'LoZQYVHPJl6vNPmTDPdajGUXITYjvMJhO5imfiuvtY1sDTMha3nXapMxH5Z3tZ1J2nfLHooWerhIKrkJ2MJCqaKuxRKJisAuAjA0lJOqMt8gV6XLs8hqzxbm5mu4fr7a');
INSERT INTO public.t_quote_file VALUES (50, 140, NULL, 'icyYJWTBBQyLlxmWQ7EovVm4zbCjBPLWvMQdPPUkAolfG45CgCfSTPHQFuK4jWaeMmcc6HlmSCnrGNCqBApERjZPSp3Q8hTWOdpPZLElPoj4VttTB8hqzxbm5qu4fv7a');
INSERT INTO public.t_quote_file VALUES (51, 140, NULL, 'GrluosOQ7pJlsq5fQoj7gfL2DCsBfSrhpH7l5MNj0HH7Lehz97Yf5vttWhEP8QJ9MOqcWeZCZaBaPYAvRR1P6e1RFqTA6Mh8zhOYA5plssSMFUvlA8hqzxbm5wu4g07a');
INSERT INTO public.t_quote_file VALUES (52, 140, NULL, 'knvDoqUXhtQQT8mW4rIWnJQf9cjOyiho1IAWT28WQ0T3gKXB82FiSErIoN7RGmq1o0rWQnbovXDHDfYZv1PBuO6eFJrEOUdUx8ErvCJGBIacwoOuf8hqzxbm69u4g57a');
INSERT INTO public.t_quote_file VALUES (53, 140, NULL, 'npCo82HXOC63Acoyou7hqvlDYoFvkVu4sMcAMNkr9m7bVEgIgXLkjJGvb1n0qnH4IhApvH9rvJ2PJEG7qyeEqziGnrrGAqmvGxuu5POAggVSSIz1h8hqzxbm66u4g27a');
INSERT INTO public.t_quote_file VALUES (54, 140, NULL, 'o9NyirrPkDlqLx61ZGsxTYOZMrKJe9pPgLciMGBfWfnDIRrqunLJu3mPltaWFtLI7FYaWb9aY2EZTrFkrEfIqZsL6drXb3JM9tomGPToxtPBClmZ18hqzxbm6mu4g77a');
INSERT INTO public.t_quote_file VALUES (55, 140, NULL, 'R6Ft1bEnmT1a9rd8eKgtboiK4dI2pGH3qfMqd0xIkXsbmuACFXD1pEiWBM08wTgnsi0s4SlnDdANbnpntYlJCaK6mt7y6ZNBTEzDAspsVioTIt3jn8hqzxbm6ou4g97a');
INSERT INTO public.t_quote_file VALUES (56, NULL, 52, NULL);
INSERT INTO public.t_quote_file VALUES (57, NULL, 52, NULL);
INSERT INTO public.t_quote_file VALUES (58, NULL, 52, NULL);
INSERT INTO public.t_quote_file VALUES (59, NULL, 52, NULL);
INSERT INTO public.t_quote_file VALUES (60, NULL, 52, NULL);
INSERT INTO public.t_quote_file VALUES (61, NULL, 52, NULL);
INSERT INTO public.t_quote_file VALUES (62, NULL, 52, NULL);
INSERT INTO public.t_quote_file VALUES (63, NULL, 53, 'LoZQYVHPJl6vNPmTDPdajGUXITYjvMJhO5imfiuvtY1sDTMha3nXapMxH5Z3tZ1J2nfLHooWerhIKrkJ2MJCqaKuxRKJisAuAjA0lJOqMt8gV6XLs8hqzxbm5mu4fr7a');
INSERT INTO public.t_quote_file VALUES (64, NULL, 53, 'icyYJWTBBQyLlxmWQ7EovVm4zbCjBPLWvMQdPPUkAolfG45CgCfSTPHQFuK4jWaeMmcc6HlmSCnrGNCqBApERjZPSp3Q8hTWOdpPZLElPoj4VttTB8hqzxbm5qu4fv7a');
INSERT INTO public.t_quote_file VALUES (65, NULL, 53, 'GrluosOQ7pJlsq5fQoj7gfL2DCsBfSrhpH7l5MNj0HH7Lehz97Yf5vttWhEP8QJ9MOqcWeZCZaBaPYAvRR1P6e1RFqTA6Mh8zhOYA5plssSMFUvlA8hqzxbm5wu4g07a');
INSERT INTO public.t_quote_file VALUES (66, NULL, 53, 'knvDoqUXhtQQT8mW4rIWnJQf9cjOyiho1IAWT28WQ0T3gKXB82FiSErIoN7RGmq1o0rWQnbovXDHDfYZv1PBuO6eFJrEOUdUx8ErvCJGBIacwoOuf8hqzxbm69u4g57a');
INSERT INTO public.t_quote_file VALUES (67, NULL, 53, 'npCo82HXOC63Acoyou7hqvlDYoFvkVu4sMcAMNkr9m7bVEgIgXLkjJGvb1n0qnH4IhApvH9rvJ2PJEG7qyeEqziGnrrGAqmvGxuu5POAggVSSIz1h8hqzxbm66u4g27a');
INSERT INTO public.t_quote_file VALUES (68, NULL, 53, 'o9NyirrPkDlqLx61ZGsxTYOZMrKJe9pPgLciMGBfWfnDIRrqunLJu3mPltaWFtLI7FYaWb9aY2EZTrFkrEfIqZsL6drXb3JM9tomGPToxtPBClmZ18hqzxbm6mu4g77a');
INSERT INTO public.t_quote_file VALUES (69, NULL, 53, 'R6Ft1bEnmT1a9rd8eKgtboiK4dI2pGH3qfMqd0xIkXsbmuACFXD1pEiWBM08wTgnsi0s4SlnDdANbnpntYlJCaK6mt7y6ZNBTEzDAspsVioTIt3jn8hqzxbm6ou4g97a');
INSERT INTO public.t_quote_file VALUES (70, NULL, 54, 'LoZQYVHPJl6vNPmTDPdajGUXITYjvMJhO5imfiuvtY1sDTMha3nXapMxH5Z3tZ1J2nfLHooWerhIKrkJ2MJCqaKuxRKJisAuAjA0lJOqMt8gV6XLs8hqzxbm5mu4fr7a');
INSERT INTO public.t_quote_file VALUES (71, NULL, 54, 'icyYJWTBBQyLlxmWQ7EovVm4zbCjBPLWvMQdPPUkAolfG45CgCfSTPHQFuK4jWaeMmcc6HlmSCnrGNCqBApERjZPSp3Q8hTWOdpPZLElPoj4VttTB8hqzxbm5qu4fv7a');
INSERT INTO public.t_quote_file VALUES (72, NULL, 54, 'GrluosOQ7pJlsq5fQoj7gfL2DCsBfSrhpH7l5MNj0HH7Lehz97Yf5vttWhEP8QJ9MOqcWeZCZaBaPYAvRR1P6e1RFqTA6Mh8zhOYA5plssSMFUvlA8hqzxbm5wu4g07a');
INSERT INTO public.t_quote_file VALUES (73, NULL, 54, 'knvDoqUXhtQQT8mW4rIWnJQf9cjOyiho1IAWT28WQ0T3gKXB82FiSErIoN7RGmq1o0rWQnbovXDHDfYZv1PBuO6eFJrEOUdUx8ErvCJGBIacwoOuf8hqzxbm69u4g57a');
INSERT INTO public.t_quote_file VALUES (74, NULL, 54, 'npCo82HXOC63Acoyou7hqvlDYoFvkVu4sMcAMNkr9m7bVEgIgXLkjJGvb1n0qnH4IhApvH9rvJ2PJEG7qyeEqziGnrrGAqmvGxuu5POAggVSSIz1h8hqzxbm66u4g27a');
INSERT INTO public.t_quote_file VALUES (75, NULL, 54, 'o9NyirrPkDlqLx61ZGsxTYOZMrKJe9pPgLciMGBfWfnDIRrqunLJu3mPltaWFtLI7FYaWb9aY2EZTrFkrEfIqZsL6drXb3JM9tomGPToxtPBClmZ18hqzxbm6mu4g77a');
INSERT INTO public.t_quote_file VALUES (76, NULL, 54, 'R6Ft1bEnmT1a9rd8eKgtboiK4dI2pGH3qfMqd0xIkXsbmuACFXD1pEiWBM08wTgnsi0s4SlnDdANbnpntYlJCaK6mt7y6ZNBTEzDAspsVioTIt3jn8hqzxbm6ou4g97a');
INSERT INTO public.t_quote_file VALUES (78, NULL, 55, 'icyYJWTBBQyLlxmWQ7EovVm4zbCjBPLWvMQdPPUkAolfG45CgCfSTPHQFuK4jWaeMmcc6HlmSCnrGNCqBApERjZPSp3Q8hTWOdpPZLElPoj4VttTB8hqzxbm5qu4fv7a');
INSERT INTO public.t_quote_file VALUES (79, NULL, 55, 'GrluosOQ7pJlsq5fQoj7gfL2DCsBfSrhpH7l5MNj0HH7Lehz97Yf5vttWhEP8QJ9MOqcWeZCZaBaPYAvRR1P6e1RFqTA6Mh8zhOYA5plssSMFUvlA8hqzxbm5wu4g07a');
INSERT INTO public.t_quote_file VALUES (80, NULL, 55, 'knvDoqUXhtQQT8mW4rIWnJQf9cjOyiho1IAWT28WQ0T3gKXB82FiSErIoN7RGmq1o0rWQnbovXDHDfYZv1PBuO6eFJrEOUdUx8ErvCJGBIacwoOuf8hqzxbm69u4g57a');
INSERT INTO public.t_quote_file VALUES (81, NULL, 55, 'npCo82HXOC63Acoyou7hqvlDYoFvkVu4sMcAMNkr9m7bVEgIgXLkjJGvb1n0qnH4IhApvH9rvJ2PJEG7qyeEqziGnrrGAqmvGxuu5POAggVSSIz1h8hqzxbm66u4g27a');
INSERT INTO public.t_quote_file VALUES (82, NULL, 55, 'o9NyirrPkDlqLx61ZGsxTYOZMrKJe9pPgLciMGBfWfnDIRrqunLJu3mPltaWFtLI7FYaWb9aY2EZTrFkrEfIqZsL6drXb3JM9tomGPToxtPBClmZ18hqzxbm6mu4g77a');
INSERT INTO public.t_quote_file VALUES (83, NULL, 55, 'R6Ft1bEnmT1a9rd8eKgtboiK4dI2pGH3qfMqd0xIkXsbmuACFXD1pEiWBM08wTgnsi0s4SlnDdANbnpntYlJCaK6mt7y6ZNBTEzDAspsVioTIt3jn8hqzxbm6ou4g97a');
INSERT INTO public.t_quote_file VALUES (88, NULL, 56, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (89, NULL, 56, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (90, NULL, 57, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (91, NULL, 57, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (96, NULL, 58, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (97, NULL, 58, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (106, NULL, 62, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (107, NULL, 62, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (108, NULL, 62, 'Z8PKOhGN6MSORxYCmakmF6fPuIJZwWpmcVoOweND3PT5708mqXTTNYNLrzjcCnZCXSyWFbRWEWufdV2nMoRUE5KeBwXtvg4nRL6tsbN1XsCRr2KV18hqzzbhy7ubfa7a');
INSERT INTO public.t_quote_file VALUES (109, 144, NULL, 'GlaUU2aQ31FVlfIFQa2vWLkBQBulCEeDEZG7a98N3dY8cNVhewBuf1SzNO6W36z4CFcVx6JZAkdQ6UUxivam4ZoMS917UpgLXNrZOELaGerdjpfsI8hqzzciahubqe7a');
INSERT INTO public.t_quote_file VALUES (110, 144, NULL, '5cULlXPmMqtkv1N1v3iyMvW2vxGE5bk5OR5ayi3ANydRejnTcoPCMTumSBvjrRMdR0xTgLEwH5W4KF3weWVB4gAxKRRgK7QoT7aEW2ozjAU2pw8rn8hqzzclabubri7a');
INSERT INTO public.t_quote_file VALUES (111, NULL, 63, 'GlaUU2aQ31FVlfIFQa2vWLkBQBulCEeDEZG7a98N3dY8cNVhewBuf1SzNO6W36z4CFcVx6JZAkdQ6UUxivam4ZoMS917UpgLXNrZOELaGerdjpfsI8hqzzciahubqe7a');
INSERT INTO public.t_quote_file VALUES (112, NULL, 63, '5cULlXPmMqtkv1N1v3iyMvW2vxGE5bk5OR5ayi3ANydRejnTcoPCMTumSBvjrRMdR0xTgLEwH5W4KF3weWVB4gAxKRRgK7QoT7aEW2ozjAU2pw8rn8hqzzclabubri7a');
INSERT INTO public.t_quote_file VALUES (113, NULL, 64, 'GlaUU2aQ31FVlfIFQa2vWLkBQBulCEeDEZG7a98N3dY8cNVhewBuf1SzNO6W36z4CFcVx6JZAkdQ6UUxivam4ZoMS917UpgLXNrZOELaGerdjpfsI8hqzzciahubqe7a');
INSERT INTO public.t_quote_file VALUES (114, NULL, 64, '5cULlXPmMqtkv1N1v3iyMvW2vxGE5bk5OR5ayi3ANydRejnTcoPCMTumSBvjrRMdR0xTgLEwH5W4KF3weWVB4gAxKRRgK7QoT7aEW2ozjAU2pw8rn8hqzzclabubri7a');
INSERT INTO public.t_quote_file VALUES (115, NULL, 65, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (116, NULL, 65, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (117, NULL, 66, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (118, NULL, 66, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (119, NULL, 66, 'o2UW9CNzTNTvawQwOIzO5ZBkj4mIhQnn0VPTh1Ih3ZfACezearmcRw4QMCzS2lNIxLI8ITE62nUhFenEPrqiqhReXgJ9dhpvb7u5ecIgJtHh2DnQ68hqzzj0vsucyx7a');
INSERT INTO public.t_quote_file VALUES (120, 145, NULL, '3dTvKwdrTQmnVIlZJDrkTnx2pvAKKUyC3V5h59xAbdYKKCWRpGXm1ENTZ6y0jBMUG4b8wDYpzjmu5eCz2AdYtOm7jHW6XFjp4bjQssl9I3sTlfAj38hqzzmusdudjf7a');
INSERT INTO public.t_quote_file VALUES (121, 145, NULL, 'GFbiuwHxRE2qyL6EqVDP2Ji5QzLw9QJtGHBU1SA83RgpClyXsHirhfWDFEttLqg7wvlRoEgQojFe7697Tot8qZJ5apdfxQTaJJ5Z6NdtwXa9VxMxd8hqzzmx40udjl7a');
INSERT INTO public.t_quote_file VALUES (124, 146, NULL, 'UUuFR2fHdXEoFoaKti495idNAuanF7S12mTEGDqHr4Ws5D1nDnHxlKy7doCD2GV80qf23MUv2WNtiov2SfgnJiQZVZ16JNIUZ91VhsI6chP7bT3368hr019mb5ue3h7a');
INSERT INTO public.t_quote_file VALUES (125, 146, NULL, '6G570IcSmfq6b9k4zxViM3zPZjmjG8gKHpvYCqmMESPF22ARwfR5znjx4fofHnFKhduVxgiENK0vMKAlx8QNJIWIxDCOpm0Cais01WsKeMfcvghcV8hr019mc7ue3j7a');
INSERT INTO public.t_quote_file VALUES (126, NULL, 67, 'UUuFR2fHdXEoFoaKti495idNAuanF7S12mTEGDqHr4Ws5D1nDnHxlKy7doCD2GV80qf23MUv2WNtiov2SfgnJiQZVZ16JNIUZ91VhsI6chP7bT3368hr019mb5ue3h7a');
INSERT INTO public.t_quote_file VALUES (127, NULL, 67, '6G570IcSmfq6b9k4zxViM3zPZjmjG8gKHpvYCqmMESPF22ARwfR5znjx4fofHnFKhduVxgiENK0vMKAlx8QNJIWIxDCOpm0Cais01WsKeMfcvghcV8hr019mc7ue3j7a');
INSERT INTO public.t_quote_file VALUES (129, 147, NULL, 'Dwc5rFBJJUKD0jochBAKXykoIuJGhujmQ8yBhJ7k5Phi01fWYND5aXNAxQlSBctt8PFXYbHD5GEx3fOLjUFaqDb0FpRjQJps4wru7CD2AmELn3Y318hr01pxamuf2y7a');
INSERT INTO public.t_quote_file VALUES (130, NULL, 70, 'Dwc5rFBJJUKD0jochBAKXykoIuJGhujmQ8yBhJ7k5Phi01fWYND5aXNAxQlSBctt8PFXYbHD5GEx3fOLjUFaqDb0FpRjQJps4wru7CD2AmELn3Y318hr01pxamuf2y7a');
INSERT INTO public.t_quote_file VALUES (132, NULL, 71, 'XFw3KewZhJR6C14KNd0BoI42une9ePG9YWWZabnvtyix0ZLON0Ifeb60WnAUALHgULOCxcMfk2XfHiNZaPCD342NDhvVUYFZWyw2fqsGVkBQGjjEy8hr426ttmmoms7a');
INSERT INTO public.t_quote_file VALUES (133, 148, NULL, 'XFw3KewZhJR6C14KNd0BoI42une9ePG9YWWZabnvtyix0ZLON0Ifeb60WnAUALHgULOCxcMfk2XfHiNZaPCD342NDhvVUYFZWyw2fqsGVkBQGjjEy8hr426ttmmoms7a');
INSERT INTO public.t_quote_file VALUES (134, NULL, 72, 'Dwc5rFBJJUKD0jochBAKXykoIuJGhujmQ8yBhJ7k5Phi01fWYND5aXNAxQlSBctt8PFXYbHD5GEx3fOLjUFaqDb0FpRjQJps4wru7CD2AmELn3Y318hr01pxamuf2y7a');
INSERT INTO public.t_quote_file VALUES (135, NULL, 73, 'c5QMbJulWrS4C9dnlfJqdI9sLJN1ecoe0aLHr89fN4wmA3wsQAk1C9EPLRNYCPO7gCYznj9OfRVcxzoHPzg4FQnWiZecmDo5S8YisRlhcKIRZA9kN8hqzyhu7au88u7a');
INSERT INTO public.t_quote_file VALUES (136, NULL, 73, 'pfbpqZTY9cG3IY2z2FEDOYhMk5Ou5wEoUv7yIimY6GuRqKa8U1b2SFIRsihp3q6iPzZRVMVJnoduxwS8ksuSY9EldLIu85ejh332CrbzOKzreJtEU8hqzyhxjlu89k7a');
INSERT INTO public.t_quote_file VALUES (137, NULL, 75, '');
INSERT INTO public.t_quote_file VALUES (138, NULL, 77, '');
INSERT INTO public.t_quote_file VALUES (139, 151, NULL, 'zvi018pCkIWHp6aNrrN0sfamjMNGnKkgsAGN97uwnIDsb2vu8OQmXPX78PA8bM9FJugjsBWlkaDWgBXjQwoQJmv9eixt2bUmErKg00DegWVGO0owj8hr5s46j9qcrb7a');
INSERT INTO public.t_quote_file VALUES (140, NULL, 78, 'zvi018pCkIWHp6aNrrN0sfamjMNGnKkgsAGN97uwnIDsb2vu8OQmXPX78PA8bM9FJugjsBWlkaDWgBXjQwoQJmv9eixt2bUmErKg00DegWVGO0owj8hr5s46j9qcrb7a');
INSERT INTO public.t_quote_file VALUES (141, NULL, 79, 'zvi018pCkIWHp6aNrrN0sfamjMNGnKkgsAGN97uwnIDsb2vu8OQmXPX78PA8bM9FJugjsBWlkaDWgBXjQwoQJmv9eixt2bUmErKg00DegWVGO0owj8hr5s46j9qcrb7a');
INSERT INTO public.t_quote_file VALUES (142, 153, NULL, '0dFzeL8M8bNZvMNry4HDK4ChnFdtrYoIguKdhPyGcCD8mnSns8yguvml1eg06St8vSiHCLDXYlT3Wrf9FzoGsvu9eqRV91gfm0GlK9VEuPgk3SBa58hr6vbu9vh60r7a');
INSERT INTO public.t_quote_file VALUES (143, NULL, 81, '0dFzeL8M8bNZvMNry4HDK4ChnFdtrYoIguKdhPyGcCD8mnSns8yguvml1eg06St8vSiHCLDXYlT3Wrf9FzoGsvu9eqRV91gfm0GlK9VEuPgk3SBa58hr6vbu9vh60r7a');
INSERT INTO public.t_quote_file VALUES (144, NULL, 82, '0dFzeL8M8bNZvMNry4HDK4ChnFdtrYoIguKdhPyGcCD8mnSns8yguvml1eg06St8vSiHCLDXYlT3Wrf9FzoGsvu9eqRV91gfm0GlK9VEuPgk3SBa58hr6vbu9vh60r7a');
INSERT INTO public.t_quote_file VALUES (145, NULL, 83, 'G0LRxTsOOaAS6lRdcsSSUWJ2vVpqNJAtfOIv4mcWmhjmBN2rbTs6p9ONEZ591S86PCoSfo3voBUzWjdYEqTQQdk8fETF12JPIUuzRyuqm2pn3DWBv8hr6vhoadh6ag7a');
INSERT INTO public.t_quote_file VALUES (146, NULL, 84, '');
INSERT INTO public.t_quote_file VALUES (147, NULL, 85, 'tyhUF4uijMDFZn58MYREuI1U1luFWszc6F4oxJxlqOM0CXi651O0VqB4Wl6rGWLV6jurhdDGYBRxHTDKQrDIDbFFKJcDsGKEkzAUfqlFnr17UJcjH8hr6vkc0eh6h57a');
INSERT INTO public.t_quote_file VALUES (148, NULL, 86, '');
INSERT INTO public.t_quote_file VALUES (150, NULL, 87, 'Ns0NnJkkPzcrPJ5yrbVxojmgDfgBU7pXvaJcqYRwOTL1pEeuaDY6ofAOKiPhzWXKxCDRevvgn9KDK8VViz1JHPhjAxLEvUNebDu6PDQ8YuRTGppta8hr6vnuefh6ox7a');
INSERT INTO public.t_quote_file VALUES (151, 154, NULL, 'Ns0NnJkkPzcrPJ5yrbVxojmgDfgBU7pXvaJcqYRwOTL1pEeuaDY6ofAOKiPhzWXKxCDRevvgn9KDK8VViz1JHPhjAxLEvUNebDu6PDQ8YuRTGppta8hr6vnuefh6ox7a');
INSERT INTO public.t_quote_file VALUES (152, NULL, 88, 'Ns0NnJkkPzcrPJ5yrbVxojmgDfgBU7pXvaJcqYRwOTL1pEeuaDY6ofAOKiPhzWXKxCDRevvgn9KDK8VViz1JHPhjAxLEvUNebDu6PDQ8YuRTGppta8hr6vnuefh6ox7a');
INSERT INTO public.t_quote_file VALUES (153, NULL, 89, 'Ns0NnJkkPzcrPJ5yrbVxojmgDfgBU7pXvaJcqYRwOTL1pEeuaDY6ofAOKiPhzWXKxCDRevvgn9KDK8VViz1JHPhjAxLEvUNebDu6PDQ8YuRTGppta8hr6vnuefh6ox7a');
INSERT INTO public.t_quote_file VALUES (155, NULL, 90, 'LOlTo2IDIkGLEJ0uyTOU7iWlWgUjFPwA8AZ5pywk5zJaiVVBYl8z0AiCBhSV9BmzzHtzwXkonoPoMvpoDdEPJz3sPEM671DEpw8qYB1A7IOO2iGyH8hr71rjuzhh887a');
INSERT INTO public.t_quote_file VALUES (156, 156, NULL, 'eifHuKDxcfZhD6SLMflua0R65uXP8aIALJBm99CerwPmMNaXtPKNV7EIl3w0yhDcEQJxzcjS2ekSoMw4TlNAVwMqI8b8rfpiFs5qS1vnMYwTWOsfU8hr71trzhhhd17a');
INSERT INTO public.t_quote_file VALUES (157, NULL, 91, 'eifHuKDxcfZhD6SLMflua0R65uXP8aIALJBm99CerwPmMNaXtPKNV7EIl3w0yhDcEQJxzcjS2ekSoMw4TlNAVwMqI8b8rfpiFs5qS1vnMYwTWOsfU8hr71trzhhhd17a');
INSERT INTO public.t_quote_file VALUES (158, 157, NULL, 'qEJr9WUzjDNsLJcK4tgX101s5BotpnSy5pjxi1lGkcbbRaXolXgPuKwDE5Mwaed92ytBjIDk4HLMyXbeZV5fcGLOFXjYPdNTgia4jiighc1TcDwlp8hr71uxb6hhib7a');
INSERT INTO public.t_quote_file VALUES (159, NULL, 92, 'qEJr9WUzjDNsLJcK4tgX101s5BotpnSy5pjxi1lGkcbbRaXolXgPuKwDE5Mwaed92ytBjIDk4HLMyXbeZV5fcGLOFXjYPdNTgia4jiighc1TcDwlp8hr71uxb6hhib7a');
INSERT INTO public.t_quote_file VALUES (160, NULL, 93, 'LOlTo2IDIkGLEJ0uyTOU7iWlWgUjFPwA8AZ5pywk5zJaiVVBYl8z0AiCBhSV9BmzzHtzwXkonoPoMvpoDdEPJz3sPEM671DEpw8qYB1A7IOO2iGyH8hr71rjuzhh887a');
INSERT INTO public.t_quote_file VALUES (163, 155, NULL, 'LOlTo2IDIkGLEJ0uyTOU7iWlWgUjFPwA8AZ5pywk5zJaiVVBYl8z0AiCBhSV9BmzzHtzwXkonoPoMvpoDdEPJz3sPEM671DEpw8qYB1A7IOO2iGyH8hr71rjuzhh887a');
INSERT INTO public.t_quote_file VALUES (164, 155, NULL, 'kRwv1XUYu9yQv2GxgKEhW4txzfsLnilgrIpOWeoUtfv0qdwR4IPL5PeGICPUwyQchuuAMFfI99Hwz6QlE8gAbv3ZIUZJOWmJqcuHZsuYvHNnY1jFg8hr71wnndhhsd7a');
INSERT INTO public.t_quote_file VALUES (165, NULL, 94, 'LOlTo2IDIkGLEJ0uyTOU7iWlWgUjFPwA8AZ5pywk5zJaiVVBYl8z0AiCBhSV9BmzzHtzwXkonoPoMvpoDdEPJz3sPEM671DEpw8qYB1A7IOO2iGyH8hr71rjuzhh887a');
INSERT INTO public.t_quote_file VALUES (166, NULL, 94, 'kRwv1XUYu9yQv2GxgKEhW4txzfsLnilgrIpOWeoUtfv0qdwR4IPL5PeGICPUwyQchuuAMFfI99Hwz6QlE8gAbv3ZIUZJOWmJqcuHZsuYvHNnY1jFg8hr71wnndhhsd7a');
INSERT INTO public.t_quote_file VALUES (167, NULL, 95, 'FLnF2H9nM0fGY4H2X3zQMDNUplYS5zhhiXzLFepmTWUbs6Yy73E7eeMghCSPmcp8wWpUJNL0r8ivuhBeHEusQNXX6kW3THlmB6ZHEtogbJWAD6ONz8hr71x238hhxj7a');
INSERT INTO public.t_quote_file VALUES (168, NULL, 96, 'LOlTo2IDIkGLEJ0uyTOU7iWlWgUjFPwA8AZ5pywk5zJaiVVBYl8z0AiCBhSV9BmzzHtzwXkonoPoMvpoDdEPJz3sPEM671DEpw8qYB1A7IOO2iGyH8hr71rjuzhh887a');
INSERT INTO public.t_quote_file VALUES (169, NULL, 96, 'kRwv1XUYu9yQv2GxgKEhW4txzfsLnilgrIpOWeoUtfv0qdwR4IPL5PeGICPUwyQchuuAMFfI99Hwz6QlE8gAbv3ZIUZJOWmJqcuHZsuYvHNnY1jFg8hr71wnndhhsd7a');
INSERT INTO public.t_quote_file VALUES (170, NULL, 97, 'GAslUXMm5toz5JdFxQXR6ztI72qmpxtF4IJlPSMbvPakoTtd4MxqkWNadrKXXhpONGEZlog6epzQ5DS1iUcIzbEQYPbRAIiudR0JkeyxfE6kzTz5O8hr71yesvhiam7a');
INSERT INTO public.t_quote_file VALUES (171, NULL, 98, 'bEym85MoC5KFNaIRc8CcJyWqDiFQWQEcK7jVogBWzXIxePVqN7ZKyHU2ywitSXAJsU1IKCe8tzLHVd61ohCzAxxnowTuSXUgaBS9IZMCRzSZOJwkI8hr72599ahimu7a');
INSERT INTO public.t_quote_file VALUES (172, NULL, 98, 'L9l2RAnweCR4mtUUdvbCTvnTEPkVOPbJMcJNXEqZxEPTSzQUm3E2UL3d852HGp8ikGFeyruK5LPqdFFI67fDWZNA56BjOD9E4pqroy5j9d4Ipz3068hr725cxlhimx7a');
INSERT INTO public.t_quote_file VALUES (173, NULL, 99, '');
INSERT INTO public.t_quote_file VALUES (178, NULL, 100, 'XAL4OUEjZBZJlzGZ4gtxQrjjWKxQBaDcY5VjUMleAcd6E3m2fuG50XfS2L5oLA9TmkPmx2fq4s5h1YHotbgmHeyJl1z7klbwOiuW0ph89LAsN1T7o8hr728mm3hj047a');
INSERT INTO public.t_quote_file VALUES (179, NULL, 100, 'BxyGevSUsID9b4xY3xJXkr54SSsWa29lWkbV9cBMPKtkLvHAMFc76Qnb4BmZgwKFWLlIKKtw3RQFxzqwMNnXN45aGa8eRVKa2STE3iMI9uDG897Bk8hr728pihhj077a');
INSERT INTO public.t_quote_file VALUES (180, 160, NULL, 'XAL4OUEjZBZJlzGZ4gtxQrjjWKxQBaDcY5VjUMleAcd6E3m2fuG50XfS2L5oLA9TmkPmx2fq4s5h1YHotbgmHeyJl1z7klbwOiuW0ph89LAsN1T7o8hr728mm3hj047a');
INSERT INTO public.t_quote_file VALUES (181, 160, NULL, 'BxyGevSUsID9b4xY3xJXkr54SSsWa29lWkbV9cBMPKtkLvHAMFc76Qnb4BmZgwKFWLlIKKtw3RQFxzqwMNnXN45aGa8eRVKa2STE3iMI9uDG897Bk8hr728pihhj077a');
INSERT INTO public.t_quote_file VALUES (182, NULL, 101, 'XAL4OUEjZBZJlzGZ4gtxQrjjWKxQBaDcY5VjUMleAcd6E3m2fuG50XfS2L5oLA9TmkPmx2fq4s5h1YHotbgmHeyJl1z7klbwOiuW0ph89LAsN1T7o8hr728mm3hj047a');
INSERT INTO public.t_quote_file VALUES (183, NULL, 101, 'BxyGevSUsID9b4xY3xJXkr54SSsWa29lWkbV9cBMPKtkLvHAMFc76Qnb4BmZgwKFWLlIKKtw3RQFxzqwMNnXN45aGa8eRVKa2STE3iMI9uDG897Bk8hr728pihhj077a');
INSERT INTO public.t_quote_file VALUES (184, NULL, 102, 'XAL4OUEjZBZJlzGZ4gtxQrjjWKxQBaDcY5VjUMleAcd6E3m2fuG50XfS2L5oLA9TmkPmx2fq4s5h1YHotbgmHeyJl1z7klbwOiuW0ph89LAsN1T7o8hr728mm3hj047a');
INSERT INTO public.t_quote_file VALUES (185, NULL, 102, 'BxyGevSUsID9b4xY3xJXkr54SSsWa29lWkbV9cBMPKtkLvHAMFc76Qnb4BmZgwKFWLlIKKtw3RQFxzqwMNnXN45aGa8eRVKa2STE3iMI9uDG897Bk8hr728pihhj077a');
INSERT INTO public.t_quote_file VALUES (186, NULL, 103, '');


--
-- Data for Name: t_quote_final; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_quote_final VALUES (16, 140, '2025_456_OFFICIAL_1', 'QUOTT001', 3, 'test11', '2025-09-01', '2025-09-19', 'dtsvn', NULL, 100.00, 200000, 'CURR002', NULL, '', '', false, '', NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_final VALUES (17, 144, '2025_1212421_OFFICIAL_2', 'QUOTT001', 2, 'test2', '2025-09-01', '2025-09-19', 'dtsvn', NULL, 100.00, 30000, 'CURR002', 't3sFWvfbBt4wx1syvwsPmtxevwN0j7SW84t561yG3HE3eJAs0NhVmsc88WfuMRknl8iSZDjWV5i1SokukNy9Zg7C7NVLhta2avyhWTerLjub3l49s8hqzzi0hvucla7a', '', '', false, '', NULL, NULL, NULL, NULL);


--
-- Data for Name: t_quote_payment; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_quote_payment VALUES (113, 140, '2025-09-19', 10.00, 2000, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (114, 140, '2025-09-20', 20.00, 3000, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (119, 14, '2025-09-19', 10.00, 2000, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO public.t_quote_payment VALUES (120, 14, '2025-09-20', 20.00, 3000, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO public.t_quote_payment VALUES (121, 15, '2025-09-19', 10.00, 2000, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO public.t_quote_payment VALUES (122, 15, '2025-09-20', 20.00, 3000, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO public.t_quote_payment VALUES (123, 16, '2025-09-19', 10.00, 2000, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO public.t_quote_payment VALUES (124, 16, '2025-09-20', 20.00, 3000, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO public.t_quote_payment VALUES (136, 144, '2025-09-15', 10.00, 200, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (137, 17, '2025-09-15', 10.00, 200, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO public.t_quote_payment VALUES (140, 145, '2025-09-18', 2.00, 100, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (145, 146, '2025-09-19', 234.00, 234, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (149, 2, '2025-09-19', 234.00, 234, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (150, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (151, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (152, 2, '2025-09-02', 6.00, 666, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (153, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (154, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (155, 2, '2025-09-18', 23.00, 2342, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (156, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (157, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (158, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (159, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (160, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (161, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (162, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (163, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (166, 1, '2025-09-16', 11.00, 11, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (167, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (168, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (170, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (171, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (173, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (174, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (175, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (176, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (177, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (178, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (179, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (180, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (181, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (182, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (183, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (184, 3, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (185, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (186, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (187, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (188, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (189, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (190, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (191, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (192, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO public.t_quote_payment VALUES (193, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');


--
-- Data for Name: t_quote_version; Type: TABLE DATA; Schema: public; Owner: liberty
--

INSERT INTO public.t_quote_version VALUES (1, 57, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (2, 2, 1, 'test1', NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (3, 2, 1, 'test 2', NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (4, 2, 2, 'test 2', NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (5, 57, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (6, 58, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (7, 58, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (8, 58, 3, 'công số dự kiến quá cao', 'hoadv', NULL, NULL, '2025-08-19 00:00:00');
INSERT INTO public.t_quote_version VALUES (9, 52, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (12, 61, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (13, 61, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (14, 61, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (10, 60, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (44, 122, 1, 'Xin phê duyệt', 'tenant', '2025-09-05 15:24:25.608', 'tenant', '2025-09-05 15:24:25.608');
INSERT INTO public.t_quote_version VALUES (11, 60, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (15, 63, 1, 'Xin phê duyệt', NULL, NULL, NULL, NULL);
INSERT INTO public.t_quote_version VALUES (16, 65, 1, 'Xin kiểm tra', 'tenant', '2025-08-25 09:10:28.306', 'tenant', '2025-08-25 09:10:28.306');
INSERT INTO public.t_quote_version VALUES (17, 65, 2, 'Xin phê duyệt', 'tenant', '2025-08-25 09:15:45.841', 'tenant', '2025-08-25 09:15:45.841');
INSERT INTO public.t_quote_version VALUES (18, 65, 3, 'Đã duyệt', 'tenant', '2025-08-25 09:16:20.869', 'tenant', '2025-08-25 09:16:20.869');
INSERT INTO public.t_quote_version VALUES (19, 59, 1, 'Xin kiểm tra', 'tenant', '2025-08-25 09:37:03.433', 'tenant', '2025-08-25 09:37:03.433');
INSERT INTO public.t_quote_version VALUES (20, 59, 2, 'Xin kiểm tra', 'tenant', '2025-08-25 09:40:53.497', 'tenant', '2025-08-25 09:40:53.497');
INSERT INTO public.t_quote_version VALUES (21, 59, 3, 'Xin kiểm tra', 'tenant', '2025-08-25 09:47:47.892', 'tenant', '2025-08-25 09:47:47.892');
INSERT INTO public.t_quote_version VALUES (22, 59, 4, 'Xin kiểm tra', 'tenant', '2025-08-25 09:47:59.21', 'tenant', '2025-08-25 09:47:59.21');
INSERT INTO public.t_quote_version VALUES (23, 59, 5, 'Xin kiểm tra', 'tenant', '2025-08-25 09:52:17.11', 'tenant', '2025-08-25 09:52:17.11');
INSERT INTO public.t_quote_version VALUES (24, 59, 6, 'Xin kiểm tra', 'tenant', '2025-08-25 09:52:24.286', 'tenant', '2025-08-25 09:52:24.286');
INSERT INTO public.t_quote_version VALUES (25, 59, 7, 'Xin kiểm tra', 'tenant', '2025-08-25 09:54:16.521', 'tenant', '2025-08-25 09:54:16.521');
INSERT INTO public.t_quote_version VALUES (26, 59, 8, NULL, 'tenant', '2025-08-25 09:55:33.627', 'tenant', '2025-08-25 09:55:33.627');
INSERT INTO public.t_quote_version VALUES (27, 59, 9, 'Xin kiểm tra', 'tenant', '2025-08-25 09:56:44.387', 'tenant', '2025-08-25 09:56:44.387');
INSERT INTO public.t_quote_version VALUES (28, 68, 1, 'Xin kiểm tra', 'tenant', '2025-08-25 13:18:17.332', 'tenant', '2025-08-25 13:18:17.332');
INSERT INTO public.t_quote_version VALUES (29, 68, 2, 'Xin phê duyệt', 'tenant', '2025-08-25 13:18:34.396', 'tenant', '2025-08-25 13:18:34.396');
INSERT INTO public.t_quote_version VALUES (30, 68, 3, 'Đã duyệt', 'tenant', '2025-08-25 13:18:49.245', 'tenant', '2025-08-25 13:18:49.245');
INSERT INTO public.t_quote_version VALUES (31, 59, 10, 'Xin phê duyệt', 'tenant', '2025-08-26 13:08:13.193', 'tenant', '2025-08-26 13:08:13.193');
INSERT INTO public.t_quote_version VALUES (32, 69, 1, 'Xin phê duyệt', 'tenant', '2025-08-26 13:17:02.307', 'tenant', '2025-08-26 13:17:02.307');
INSERT INTO public.t_quote_version VALUES (33, 69, 2, 'Đã duyệt', 'tenant', '2025-08-26 13:17:46.451', 'tenant', '2025-08-26 13:17:46.451');
INSERT INTO public.t_quote_version VALUES (34, 74, 1, 'Xin kiểm tra', 'tenant', '2025-08-29 09:14:52.114', 'tenant', '2025-08-29 09:14:52.114');
INSERT INTO public.t_quote_version VALUES (35, 78, 1, 'Xin kiểm tra', 'tenant', '2025-08-29 13:22:50.119', 'tenant', '2025-08-29 13:22:50.119');
INSERT INTO public.t_quote_version VALUES (36, 81, 1, 'Xin kiểm tra', 'tenant', '2025-08-29 13:57:28.721', 'tenant', '2025-08-29 13:57:28.721');
INSERT INTO public.t_quote_version VALUES (37, 83, 1, 'Xin kiểm tra', 'tenant', '2025-08-29 14:04:20.879', 'tenant', '2025-08-29 14:04:20.879');
INSERT INTO public.t_quote_version VALUES (38, 85, 1, 'Xin kiểm tra', 'tenant', '2025-08-29 14:11:45.887', 'tenant', '2025-08-29 14:11:45.887');
INSERT INTO public.t_quote_version VALUES (39, 119, 1, 'Xin kiểm tra', 'tenant', '2025-09-05 14:18:39.624', 'tenant', '2025-09-05 14:18:39.624');
INSERT INTO public.t_quote_version VALUES (40, 120, 1, 'Xin phê duyệt', 'tenant', '2025-09-05 14:40:20.651', 'tenant', '2025-09-05 14:40:20.651');
INSERT INTO public.t_quote_version VALUES (41, 120, 2, 'Đã duyệt', 'tenant', '2025-09-05 15:02:27.941', 'tenant', '2025-09-05 15:02:27.941');
INSERT INTO public.t_quote_version VALUES (42, 121, 1, 'Xin phê duyệt', 'tenant', '2025-09-05 15:12:14.968', 'tenant', '2025-09-05 15:12:14.968');
INSERT INTO public.t_quote_version VALUES (43, 121, 2, 'Đã duyệt', 'tenant', '2025-09-05 15:12:30.736', 'tenant', '2025-09-05 15:12:30.736');
INSERT INTO public.t_quote_version VALUES (45, 131, 2, 'Đã duyệt', 'tenant', '2025-09-05 15:24:42.388', 'tenant', '2025-09-05 15:24:42.388');
INSERT INTO public.t_quote_version VALUES (46, 132, 1, 'Xin phê duyệt', 'tenant', '2025-09-09 08:26:08.49', 'tenant', '2025-09-09 08:26:08.491');
INSERT INTO public.t_quote_version VALUES (47, 132, 2, 'Đã duyệt', 'tenant', '2025-09-09 08:26:43.347', 'tenant', '2025-09-09 08:26:43.347');
INSERT INTO public.t_quote_version VALUES (48, 138, 1, 'Xin kiểm tra', 'tenant', '2025-09-19 09:05:03.542', 'tenant', '2025-09-19 09:05:03.542');
INSERT INTO public.t_quote_version VALUES (49, 139, 1, 'Xin kiểm tra', 'tenant', '2025-09-19 11:19:18.091', 'tenant', '2025-09-19 11:19:18.091');
INSERT INTO public.t_quote_version VALUES (50, 139, 2, 'Xin phê duyệt', 'tenant', '2025-09-19 13:28:05.792', 'tenant', '2025-09-19 13:28:05.792');
INSERT INTO public.t_quote_version VALUES (51, 139, 3, 'Đã duyệt', 'tenant', '2025-09-19 13:28:38.786', 'tenant', '2025-09-19 13:28:38.786');
INSERT INTO public.t_quote_version VALUES (52, 140, 1, 'Xin phê duyệt', 'tenant', '2025-09-19 13:57:52.629', 'tenant', '2025-09-19 13:57:52.629');
INSERT INTO public.t_quote_version VALUES (53, 140, 2, NULL, 'tenant', '2025-09-19 14:00:28.789', 'tenant', '2025-09-19 14:00:28.789');
INSERT INTO public.t_quote_version VALUES (54, 140, 3, 'Xin phê duyệt', 'tenant', '2025-09-19 14:01:02.598', 'tenant', '2025-09-19 14:01:02.598');
INSERT INTO public.t_quote_version VALUES (55, 140, 4, 'Đã duyệt', 'tenant', '2025-09-19 14:01:30.855', 'tenant', '2025-09-19 14:01:30.855');
INSERT INTO public.t_quote_version VALUES (56, 141, 1, 'Xin phê duyệt', 'tenant', '2025-09-19 14:30:09.431', 'tenant', '2025-09-19 14:30:09.431');
INSERT INTO public.t_quote_version VALUES (57, 141, 2, 'Từ chối duyệt', 'tenant', '2025-09-19 14:32:34.573', 'tenant', '2025-09-19 14:32:34.573');
INSERT INTO public.t_quote_version VALUES (58, 141, 3, 'Xin phê duyệt', 'tenant', '2025-09-19 14:44:21.669', 'tenant', '2025-09-19 14:44:21.669');
INSERT INTO public.t_quote_version VALUES (59, 141, 4, 'Từ chối duyệt', 'tenant', '2025-09-19 14:51:21.912', 'tenant', '2025-09-19 14:51:21.912');
INSERT INTO public.t_quote_version VALUES (60, 141, 5, 'Xin phê duyệt', 'tenant', '2025-09-19 14:51:47.393', 'tenant', '2025-09-19 14:51:47.393');
INSERT INTO public.t_quote_version VALUES (61, 141, 6, 'Từ chối duyệt', 'tenant', '2025-09-19 14:52:17.123', 'tenant', '2025-09-19 14:52:17.123');
INSERT INTO public.t_quote_version VALUES (62, 141, 7, 'Xin phê duyệt', 'tenant', '2025-09-19 14:52:31.648', 'tenant', '2025-09-19 14:52:31.648');
INSERT INTO public.t_quote_version VALUES (63, 144, 1, 'Xin phê duyệt', 'tenant', '2025-09-19 14:56:23.646', 'tenant', '2025-09-19 14:56:23.646');
INSERT INTO public.t_quote_version VALUES (64, 144, 2, 'Đã duyệt', 'tenant', '2025-09-19 14:56:33.286', 'tenant', '2025-09-19 14:56:33.286');
INSERT INTO public.t_quote_version VALUES (65, 141, 8, 'Từ chối duyệt', 'tenant', '2025-09-19 14:58:10.461', 'tenant', '2025-09-19 14:58:10.461');
INSERT INTO public.t_quote_version VALUES (66, 141, 9, 'Xin phê duyệt', 'tenant', '2025-09-19 14:58:25.762', 'tenant', '2025-09-19 14:58:25.762');
INSERT INTO public.t_quote_version VALUES (71, 148, 1, 'Xin phê duyệt', 'tenant', '2025-09-22 11:24:19.466', 'tenant', '2025-09-22 11:24:19.467');
INSERT INTO public.t_quote_version VALUES (68, 147, 1, 'Xin phê duyệt', 'tenant', '2025-09-19 15:58:59.942', 'tenant', '2025-09-19 15:58:59.942');
INSERT INTO public.t_quote_version VALUES (69, 147, 2, 'Từ chối duyệt', 'tenant', '2025-09-19 15:59:27.606', 'tenant', '2025-09-19 15:59:27.606');
INSERT INTO public.t_quote_version VALUES (70, 147, 3, 'Xin phê duyệt', 'tenant', '2025-09-19 15:59:43.981', 'tenant', '2025-09-19 15:59:43.981');
INSERT INTO public.t_quote_version VALUES (67, 146, 1, 'Xin phê duyệt', 'tenant', '2025-09-19 15:51:46.952', 'tenant', '2025-09-19 15:51:46.952');
INSERT INTO public.t_quote_version VALUES (72, 147, 4, 'Đã duyệt', 'tenant', '2025-09-22 15:22:28.808', 'tenant', '2025-09-22 15:22:28.808');
INSERT INTO public.t_quote_version VALUES (73, 141, 10, 'Đã duyệt', 'tenant', '2025-09-23 10:30:55.632', 'tenant', '2025-09-23 10:30:55.632');
INSERT INTO public.t_quote_version VALUES (74, 149, 1, 'Xin phê duyệt', 'tenant', '2025-09-23 14:29:15.197', 'tenant', '2025-09-23 14:29:15.197');
INSERT INTO public.t_quote_version VALUES (75, 149, 2, 'Đã duyệt', 'tenant', '2025-09-23 14:29:42.841', 'tenant', '2025-09-23 14:29:42.841');
INSERT INTO public.t_quote_version VALUES (76, 150, 1, 'Xin phê duyệt', 'tenant', '2025-09-23 14:31:25.073', 'tenant', '2025-09-23 14:31:25.073');
INSERT INTO public.t_quote_version VALUES (77, 150, 2, 'Đã duyệt', 'tenant', '2025-09-23 14:31:37.693', 'tenant', '2025-09-23 14:31:37.693');
INSERT INTO public.t_quote_version VALUES (78, 151, 1, 'Xin phê duyệt', 'tenant', '2025-09-23 16:17:40.383', 'tenant', '2025-09-23 16:17:40.383');
INSERT INTO public.t_quote_version VALUES (79, 151, 2, 'Đã duyệt', 'tenant', '2025-09-23 16:18:34.748', 'tenant', '2025-09-23 16:18:34.748');
INSERT INTO public.t_quote_version VALUES (80, 152, 1, 'Xin phê duyệt', 'tenant', '2025-09-23 16:20:05.877', 'tenant', '2025-09-23 16:20:05.877');
INSERT INTO public.t_quote_version VALUES (81, 153, 1, 'Xin phê duyệt', 'hoa.dv', '2025-09-24 10:35:14.804', 'hoa.dv', '2025-09-24 10:35:14.804');
INSERT INTO public.t_quote_version VALUES (82, 153, 2, 'Đã duyệt', 'nhatNH', '2025-09-24 10:36:49.844', 'nhatNH', '2025-09-24 10:36:49.844');
INSERT INTO public.t_quote_version VALUES (83, 154, 1, 'Xin kiểm tra', 'hoa.dv', '2025-09-24 10:39:45.922', 'hoa.dv', '2025-09-24 10:39:45.923');
INSERT INTO public.t_quote_version VALUES (84, 154, 2, 'Từ chối duyệt', 'nhatNH', '2025-09-24 10:41:25.407', 'nhatNH', '2025-09-24 10:41:25.407');
INSERT INTO public.t_quote_version VALUES (85, 154, 3, 'Xin kiểm tra', 'hoa.dv', '2025-09-24 10:41:48.092', 'hoa.dv', '2025-09-24 10:41:48.092');
INSERT INTO public.t_quote_version VALUES (86, 154, 4, 'Từ chối duyệt', 'nhatNH', '2025-09-24 10:44:16.634', 'nhatNH', '2025-09-24 10:44:16.634');
INSERT INTO public.t_quote_version VALUES (87, 154, 5, 'Xin kiểm tra', 'hoa.dv', '2025-09-24 10:44:41.273', 'hoa.dv', '2025-09-24 10:44:41.273');
INSERT INTO public.t_quote_version VALUES (88, 154, 6, 'Xin phê duyệt', 'nhatNH', '2025-09-24 10:45:14.564', 'nhatNH', '2025-09-24 10:45:14.564');
INSERT INTO public.t_quote_version VALUES (89, 154, 7, 'Đã duyệt', 'hoa.dv', '2025-09-24 10:46:19.63', 'hoa.dv', '2025-09-24 10:46:19.63');
INSERT INTO public.t_quote_version VALUES (90, 155, 1, 'Xin phê duyệt', 'tenant', '2025-09-24 13:35:34.44', 'tenant', '2025-09-24 13:35:34.44');
INSERT INTO public.t_quote_version VALUES (91, 156, 1, 'Xin phê duyệt', 'tenant', '2025-09-24 13:37:09.222', 'tenant', '2025-09-24 13:37:09.222');
INSERT INTO public.t_quote_version VALUES (92, 157, 1, 'Xin phê duyệt', 'hoa.dv', '2025-09-24 13:38:03.197', 'hoa.dv', '2025-09-24 13:38:03.197');
INSERT INTO public.t_quote_version VALUES (93, 155, 2, 'Từ chối duyệt', 'tenant', '2025-09-24 13:38:54.217', 'tenant', '2025-09-24 13:38:54.217');
INSERT INTO public.t_quote_version VALUES (94, 155, 3, 'Xin phê duyệt', 'tenant', '2025-09-24 13:39:36.008', 'tenant', '2025-09-24 13:39:36.008');
INSERT INTO public.t_quote_version VALUES (95, 158, 1, 'Xin kiểm tra', 'hoa.dv', '2025-09-24 13:39:45.536', 'hoa.dv', '2025-09-24 13:39:45.536');
INSERT INTO public.t_quote_version VALUES (96, 155, 4, 'Đã duyệt', 'tenant', '2025-09-24 13:39:55.63', 'tenant', '2025-09-24 13:39:55.63');
INSERT INTO public.t_quote_version VALUES (97, 159, 1, 'Xin kiểm tra', 'hoa.dv', '2025-09-24 13:40:44.279', 'hoa.dv', '2025-09-24 13:40:44.279');
INSERT INTO public.t_quote_version VALUES (98, 160, 1, 'Xin kiểm tra', 'tenant', '2025-09-24 13:46:09.668', 'tenant', '2025-09-24 13:46:09.668');
INSERT INTO public.t_quote_version VALUES (99, 160, 2, 'Từ chối duyệt', 'tenant', '2025-09-24 13:48:21.308', 'tenant', '2025-09-24 13:48:21.308');
INSERT INTO public.t_quote_version VALUES (100, 160, 3, 'Xin kiểm tra', 'tenant', '2025-09-24 13:48:54.616', 'tenant', '2025-09-24 13:48:54.616');
INSERT INTO public.t_quote_version VALUES (101, 160, 4, 'Xin phê duyệt', 'tenant', '2025-09-24 13:49:13.79', 'tenant', '2025-09-24 13:49:13.79');
INSERT INTO public.t_quote_version VALUES (102, 160, 5, 'Đã duyệt', 'tenant', '2025-09-24 13:49:29.5', 'tenant', '2025-09-24 13:49:29.5');
INSERT INTO public.t_quote_version VALUES (103, 159, 2, 'Từ chối duyệt', 'nhatNH', '2025-09-24 15:21:41.786', 'nhatNH', '2025-09-24 15:21:41.786');


--
-- Name: t_acceptance_report_acceptance_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_acceptance_report_acceptance_report_id_seq', 29, true);


--
-- Name: t_approval_history_app_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_approval_history_app_history_id_seq', 1, false);


--
-- Name: t_contract_contract_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_contract_contract_id_seq', 129, true);


--
-- Name: t_contract_payment_contract_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_contract_payment_contract_payment_id_seq', 705, true);


--
-- Name: t_customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_customer_customer_id_seq', 2, true);


--
-- Name: t_quote_file_quote_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_quote_file_quote_file_id_seq', 186, true);


--
-- Name: t_quote_final_quote_final_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_quote_final_quote_final_id_seq', 17, true);


--
-- Name: t_quote_payment_quote_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_quote_payment_quote_payment_id_seq', 193, true);


--
-- Name: t_quote_quote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_quote_quote_id_seq', 160, true);


--
-- Name: t_quote_version_quote_version_id_seq; Type: SEQUENCE SET; Schema: public; Owner: liberty
--

SELECT pg_catalog.setval('public.t_quote_version_quote_version_id_seq', 103, true);


--
-- PostgreSQL database dump complete
--

