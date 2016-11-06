use hospital;

-- insert countries intro countries table
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
INSERT INTO `countries` (`id`, `iso`, `iso3`, `fips`, `name`, `continent`, `currency_code`, `currency_name`, `phone_prefix`, `postal_code`, `languages`, `geonameid`) VALUES
(4, 'AF', 'AFG', 'AF', 'Afghanistan', 'AS', 'AFN', 'Afghani', '93', '', 'fa-AF,ps,uz-AF,tk', '1149361'),
(8, 'AL', 'ALB', 'AL', 'Albania', 'EU', 'ALL', 'Lek', '355', '', 'sq,el', '783754'),
(10, 'AQ', 'ATA', 'AY', 'Antarctica', 'AN', '', '', '', '', '', '6697173'),
(12, 'DZ', 'DZA', 'AG', 'Algeria', 'AF', 'DZD', 'Dinar', '213', '^(d{5})$', 'ar-DZ', '2589581'),
(16, 'AS', 'ASM', 'AQ', 'American Samoa', 'OC', 'USD', 'Dollar', '+1-684', '', 'en-AS,sm,to', '5880801'),
(20, 'AD', 'AND', 'AN', 'Andorra', 'EU', 'EUR', 'Euro', '376', '^(?:AD)*(d{3})$', 'ca,fr-AD,pt', '3041565'),
(24, 'AO', 'AGO', 'AO', 'Angola', 'AF', 'AOA', 'Kwanza', '244', '', 'pt-AO', '3351879'),
(28, 'AG', 'ATG', 'AC', 'Antigua and Barbuda', 'NA', 'XCD', 'Dollar', '+1-268', '', 'en-AG', '3576396'),
(31, 'AZ', 'AZE', 'AJ', 'Azerbaijan', 'AS', 'AZN', 'Manat', '994', '^(?:AZ)*(d{4})$', 'az,ru,hy', '587116'),
(32, 'AR', 'ARG', 'AR', 'Argentina', 'SA', 'ARS', 'Peso', '54', '^([A-Z]d{4}[A-Z]{3})$', 'es-AR,en,it,de,fr', '3865483'),
(36, 'AU', 'AUS', 'AS', 'Australia', 'OC', 'AUD', 'Dollar', '61', '^(d{4})$', 'en-AU', '2077456'),
(40, 'AT', 'AUT', 'AU', 'Austria', 'EU', 'EUR', 'Euro', '43', '^(d{4})$', 'de-AT,hr,hu,sl', '2782113'),
(44, 'BS', 'BHS', 'BF', 'Bahamas', 'NA', 'BSD', 'Dollar', '+1-242', '', 'en-BS', '3572887'),
(48, 'BH', 'BHR', 'BA', 'Bahrain', 'AS', 'BHD', 'Dinar', '973', '^(d{3}d?)$', 'ar-BH,en,fa,ur', '290291'),
(50, 'BD', 'BGD', 'BG', 'Bangladesh', 'AS', 'BDT', 'Taka', '880', '^(d{4})$', 'bn-BD,en', '1210997'),
(51, 'AM', 'ARM', 'AM', 'Armenia', 'AS', 'AMD', 'Dram', '374', '^(d{6})$', 'hy', '174982'),
(52, 'BB', 'BRB', 'BB', 'Barbados', 'NA', 'BBD', 'Dollar', '+1-246', '^(?:BB)*(d{5})$', 'en-BB', '3374084'),
(56, 'BE', 'BEL', 'BE', 'Belgium', 'EU', 'EUR', 'Euro', '32', '^(d{4})$', 'nl-BE,fr-BE,de-BE', '2802361'),
(60, 'BM', 'BMU', 'BD', 'Bermuda', 'NA', 'BMD', 'Dollar', '+1-441', '^([A-Z]{2}d{2})$', 'en-BM,pt', '3573345'),
(64, 'BT', 'BTN', 'BT', 'Bhutan', 'AS', 'BTN', 'Ngultrum', '975', '', 'dz', '1252634'),
(68, 'BO', 'BOL', 'BL', 'Bolivia', 'SA', 'BOB', 'Boliviano', '591', '', 'es-BO,qu,ay', '3923057'),
(70, 'BA', 'BIH', 'BK', 'Bosnia and Herzegovina', 'EU', 'BAM', 'Marka', '387', '^(d{5})$', 'bs,hr-BA,sr-BA', '3277605'),
(72, 'BW', 'BWA', 'BC', 'Botswana', 'AF', 'BWP', 'Pula', '267', '', 'en-BW,tn-BW', '933860'),
(74, 'BV', 'BVT', 'BV', 'Bouvet Island', 'AN', 'NOK', 'Krone', '', '', '', '3371123'),
(76, 'BR', 'BRA', 'BR', 'Brazil', 'SA', 'BRL', 'Real', '55', '^(d{8})$', 'pt-BR,es,en,fr', '3469034'),
(84, 'BZ', 'BLZ', 'BH', 'Belize', 'NA', 'BZD', 'Dollar', '501', '', 'en-BZ,es', '3582678'),
(86, 'IO', 'IOT', 'IO', 'British Indian Ocean Territory', 'AS', 'USD', 'Dollar', '246', '', 'en-IO', '1282588'),
(90, 'SB', 'SLB', 'BP', 'Solomon Islands', 'OC', 'SBD', 'Dollar', '677', '', 'en-SB,tpi', '2103350'),
(92, 'VG', 'VGB', 'VI', 'British Virgin Islands', 'NA', 'USD', 'Dollar', '+1-284', '', 'en-VG', '3577718'),
(96, 'BN', 'BRN', 'BX', 'Brunei', 'AS', 'BND', 'Dollar', '673', '^([A-Z]{2}d{4})$', 'ms-BN,en-BN', '1820814'),
(100, 'BG', 'BGR', 'BU', 'Bulgaria', 'EU', 'BGN', 'Lev', '359', '^(d{4})$', 'bg,tr-BG', '732800'),
(104, 'MM', 'MMR', 'BM', 'Myanmar', 'AS', 'MMK', 'Kyat', '95', '^(d{5})$', 'my', '1327865'),
(108, 'BI', 'BDI', 'BY', 'Burundi', 'AF', 'BIF', 'Franc', '257', '', 'fr-BI,rn', '433561'),
(112, 'BY', 'BLR', 'BO', 'Belarus', 'EU', 'BYR', 'Ruble', '375', '^(d{6})$', 'be,ru', '630336'),
(116, 'KH', 'KHM', 'CB', 'Cambodia', 'AS', 'KHR', 'Riels', '855', '^(d{5})$', 'km,fr,en', '1831722'),
(120, 'CM', 'CMR', 'CM', 'Cameroon', 'AF', 'XAF', 'Franc', '237', '', 'en-CM,fr-CM', '2233387'),
(124, 'CA', 'CAN', 'CA', 'Canada', 'NA', 'CAD', 'Dollar', '1', '^([a-zA-Z]d[a-zA-Z]d[a-zA-Z]d)$', 'en-CA,fr-CA', '6251999'),
(132, 'CV', 'CPV', 'CV', 'Cape Verde', 'AF', 'CVE', 'Escudo', '238', '^(d{4})$', 'pt-CV', '3374766'),
(136, 'KY', 'CYM', 'CJ', 'Cayman Islands', 'NA', 'KYD', 'Dollar', '+1-345', '', 'en-KY', '3580718'),
(140, 'CF', 'CAF', 'CT', 'Central African Republic', 'AF', 'XAF', 'Franc', '236', '', 'fr-CF,ln,kg', '239880'),
(144, 'LK', 'LKA', 'CE', 'Sri Lanka', 'AS', 'LKR', 'Rupee', '94', '^(d{5})$', 'si,ta,en', '1227603'),
(148, 'TD', 'TCD', 'CD', 'Chad', 'AF', 'XAF', 'Franc', '235', '', 'fr-TD,ar-TD,sre', '2434508'),
(152, 'CL', 'CHL', 'CI', 'Chile', 'SA', 'CLP', 'Peso', '56', '^(d{7})$', 'es-CL', '3895114'),
(156, 'CN', 'CHN', 'CH', 'China', 'AS', 'CNY', 'Yuan Renminbi', '86', '^(d{6})$', 'zh-CN,yue,wuu', '1814991'),
(158, 'TW', 'TWN', 'TW', 'Taiwan', 'AS', 'TWD', 'Dollar', '886', '^(d{5})$', 'zh-TW,zh,nan,hak', '1668284'),
(162, 'CX', 'CXR', 'KT', 'Christmas Island', 'AS', 'AUD', 'Dollar', '61', '^(d{4})$', 'en,zh,ms-CC', '2078138'),
(166, 'CC', 'CCK', 'CK', 'Cocos Islands', 'AS', 'AUD', 'Dollar', '61', '', 'ms-CC,en', '1547376'),
(170, 'CO', 'COL', 'CO', 'Colombia', 'SA', 'COP', 'Peso', '57', '', 'es-CO', '3686110'),
(174, 'KM', 'COM', 'CN', 'Comoros', 'AF', 'KMF', 'Franc', '269', '', 'ar,fr-KM', '921929'),
(175, 'YT', 'MYT', 'MF', 'Mayotte', 'AF', 'EUR', 'Euro', '269', '^(d{5})$', 'fr-YT', '1024031'),
(178, 'CG', 'COG', 'CF', 'Republic of the Congo', 'AF', 'XAF', 'Franc', '242', '', 'fr-CG,kg,ln-CG', '2260494'),
(180, 'CD', 'COD', 'CG', 'Democratic Republic of the Congo', 'AF', 'CDF', 'Franc', '243', '', 'fr-CD,ln,kg', '203312'),
(184, 'CK', 'COK', 'CW', 'Cook Islands', 'OC', 'NZD', 'Dollar', '682', '', 'en-CK,mi', '1899402'),
(188, 'CR', 'CRI', 'CS', 'Costa Rica', 'NA', 'CRC', 'Colon', '506', '^(d{4})$', 'es-CR,en', '3624060'),
(191, 'HR', 'HRV', 'HR', 'Croatia', 'EU', 'HRK', 'Kuna', '385', '^(?:HR)*(d{5})$', 'hr-HR,sr', '3202326'),
(192, 'CU', 'CUB', 'CU', 'Cuba', 'NA', 'CUP', 'Peso', '53', '^(?:CP)*(d{5})$', 'es-CU', '3562981'),
(196, 'CY', 'CYP', 'CY', 'Cyprus', 'EU', 'EUR', 'Euro', '357', '^(d{4})$', 'el-CY,tr-CY,en', '146669'),
(203, 'CZ', 'CZE', 'EZ', 'Czech Republic', 'EU', 'CZK', 'Koruna', '420', '^(d{5})$', 'cs,sk', '3077311'),
(204, 'BJ', 'BEN', 'BN', 'Benin', 'AF', 'XOF', 'Franc', '229', '', 'fr-BJ', '2395170'),
(208, 'DK', 'DNK', 'DA', 'Denmark', 'EU', 'DKK', 'Krone', '45', '^(d{4})$', 'da-DK,en,fo,de-DK', '2623032'),
(212, 'DM', 'DMA', 'DO', 'Dominica', 'NA', 'XCD', 'Dollar', '+1-767', '', 'en-DM', '3575830'),
(214, 'DO', 'DOM', 'DR', 'Dominican Republic', 'NA', 'DOP', 'Peso', '+1-809 and 1-829', '^(d{5})$', 'es-DO', '3508796'),
(218, 'EC', 'ECU', 'EC', 'Ecuador', 'SA', 'USD', 'Dollar', '593', '^([a-zA-Z]d{4}[a-zA-Z])$', 'es-EC', '3658394'),
(222, 'SV', 'SLV', 'ES', 'El Salvador', 'NA', 'USD', 'Dollar', '503', '^(?:CP)*(d{4})$', 'es-SV', '3585968'),
(226, 'GQ', 'GNQ', 'EK', 'Equatorial Guinea', 'AF', 'XAF', 'Franc', '240', '', 'es-GQ,fr', '2309096'),
(231, 'ET', 'ETH', 'ET', 'Ethiopia', 'AF', 'ETB', 'Birr', '251', '^(d{4})$', 'am,en-ET,om-ET,ti-ET,so-ET,sid', '337996'),
(232, 'ER', 'ERI', 'ER', 'Eritrea', 'AF', 'ERN', 'Nakfa', '291', '', 'aa-ER,ar,tig,kun,ti-ER', '338010'),
(233, 'EE', 'EST', 'EN', 'Estonia', 'EU', 'EEK', 'Kroon', '372', '^(d{5})$', 'et,ru', '453733'),
(234, 'FO', 'FRO', 'FO', 'Faroe Islands', 'EU', 'DKK', 'Krone', '298', '^(?:FO)*(d{3})$', 'fo,da-FO', '2622320'),
(238, 'FK', 'FLK', 'FK', 'Falkland Islands', 'SA', 'FKP', 'Pound', '500', '', 'en-FK', '3474414'),
(239, 'GS', 'SGS', 'SX', 'South Georgia and the South Sandwich Islands', 'AN', 'GBP', 'Pound', '', '', 'en', '3474415'),
(242, 'FJ', 'FJI', 'FJ', 'Fiji', 'OC', 'FJD', 'Dollar', '679', '', 'en-FJ,fj', '2205218'),
(246, 'FI', 'FIN', 'FI', 'Finland', 'EU', 'EUR', 'Euro', '358', '^(?:FI)*(d{5})$', 'fi-FI,sv-FI,smn', '660013'),
(248, 'AX', 'ALA', '', 'Aland Islands', 'EU', 'EUR', 'Euro', '+358-18', '', 'sv-AX', '661882'),
(250, 'FR', 'FRA', 'FR', 'France', 'EU', 'EUR', 'Euro', '33', '^(d{5})$', 'fr-FR,frp,br,co,ca,eu', '3017382'),
(254, 'GF', 'GUF', 'FG', 'French Guiana', 'SA', 'EUR', 'Euro', '594', '^((97)|(98)3d{2})$', 'fr-GF', '3381670'),
(258, 'PF', 'PYF', 'FP', 'French Polynesia', 'OC', 'XPF', 'Franc', '689', '^((97)|(98)7d{2})$', 'fr-PF,ty', '4020092'),
(260, 'TF', 'ATF', 'FS', 'French Southern Territories', 'AN', 'EUR', 'Euro  ', '', '', 'fr', '1546748'),
(262, 'DJ', 'DJI', 'DJ', 'Djibouti', 'AF', 'DJF', 'Franc', '253', '', 'fr-DJ,ar,so-DJ,aa', '223816'),
(266, 'GA', 'GAB', 'GB', 'Gabon', 'AF', 'XAF', 'Franc', '241', '', 'fr-GA', '2400553'),
(268, 'GE', 'GEO', 'GG', 'Georgia', 'AS', 'GEL', 'Lari', '995', '^(d{4})$', 'ka,ru,hy,az', '614540'),
(270, 'GM', 'GMB', 'GA', 'Gambia', 'AF', 'GMD', 'Dalasi', '220', '', 'en-GM,mnk,wof,wo,ff', '2413451'),
(275, 'PS', 'PSE', 'WE', 'Palestinian Territory', 'AS', 'ILS', 'Shekel', '970', '', 'ar-PS', '6254930'),
(276, 'DE', 'DEU', 'GM', 'Germany', 'EU', 'EUR', 'Euro', '49', '^(d{5})$', 'de', '2921044'),
(288, 'GH', 'GHA', 'GH', 'Ghana', 'AF', 'GHS', 'Cedi', '233', '', 'en-GH,ak,ee,tw', '2300660'),
(292, 'GI', 'GIB', 'GI', 'Gibraltar', 'EU', 'GIP', 'Pound', '350', '', 'en-GI,es,it,pt', '2411586'),
(296, 'KI', 'KIR', 'KR', 'Kiribati', 'OC', 'AUD', 'Dollar', '686', '', 'en-KI,gil', '4030945'),
(300, 'GR', 'GRC', 'GR', 'Greece', 'EU', 'EUR', 'Euro', '30', '^(d{5})$', 'el-GR,en,fr', '390903'),
(304, 'GL', 'GRL', 'GL', 'Greenland', 'NA', 'DKK', 'Krone', '299', '^(d{4})$', 'kl,da-GL,en', '3425505'),
(308, 'GD', 'GRD', 'GJ', 'Grenada', 'NA', 'XCD', 'Dollar', '+1-473', '', 'en-GD', '3580239'),
(312, 'GP', 'GLP', 'GP', 'Guadeloupe', 'NA', 'EUR', 'Euro', '590', '^((97)|(98)d{3})$', 'fr-GP', '3579143'),
(316, 'GU', 'GUM', 'GQ', 'Guam', 'OC', 'USD', 'Dollar', '+1-671', '^(969d{2})$', 'en-GU,ch-GU', '4043988'),
(320, 'GT', 'GTM', 'GT', 'Guatemala', 'NA', 'GTQ', 'Quetzal', '502', '^(d{5})$', 'es-GT', '3595528'),
(324, 'GN', 'GIN', 'GV', 'Guinea', 'AF', 'GNF', 'Franc', '224', '', 'fr-GN', '2420477'),
(328, 'GY', 'GUY', 'GY', 'Guyana', 'SA', 'GYD', 'Dollar', '592', '', 'en-GY', '3378535'),
(332, 'HT', 'HTI', 'HA', 'Haiti', 'NA', 'HTG', 'Gourde', '509', '^(?:HT)*(d{4})$', 'ht,fr-HT', '3723988'),
(334, 'HM', 'HMD', 'HM', 'Heard Island and McDonald Islands', 'AN', 'AUD', 'Dollar', ' ', '', '', '1547314'),
(336, 'VA', 'VAT', 'VT', 'Vatican', 'EU', 'EUR', 'Euro', '379', '', 'la,it,fr', '3164670'),
(340, 'HN', 'HND', 'HO', 'Honduras', 'NA', 'HNL', 'Lempira', '504', '^([A-Z]{2}d{4})$', 'es-HN', '3608932'),
(344, 'HK', 'HKG', 'HK', 'Hong Kong', 'AS', 'HKD', 'Dollar', '852', '', 'zh-HK,yue,zh,en', '1819730'),
(348, 'HU', 'HUN', 'HU', 'Hungary', 'EU', 'HUF', 'Forint', '36', '^(d{4})$', 'hu-HU', '719819'),
(352, 'IS', 'ISL', 'IC', 'Iceland', 'EU', 'ISK', 'Krona', '354', '^(d{3})$', 'is,en,de,da,sv,no', '2629691'),
(356, 'IN', 'IND', 'IN', 'India', 'AS', 'INR', 'Rupee', '91', '^(d{6})$', 'en-IN,hi,bn,te,mr,ta,ur,gu,ml,kn,or,pa,as,ks,', '1269750'),
(360, 'ID', 'IDN', 'ID', 'Indonesia', 'AS', 'IDR', 'Rupiah', '62', '^(d{5})$', 'id,en,nl,jv', '1643084'),
(364, 'IR', 'IRN', 'IR', 'Iran', 'AS', 'IRR', 'Rial', '98', '^(d{10})$', 'fa-IR,ku', '130758'),
(368, 'IQ', 'IRQ', 'IZ', 'Iraq', 'AS', 'IQD', 'Dinar', '964', '^(d{5})$', 'ar-IQ,ku,hy', '99237'),
(372, 'IE', 'IRL', 'EI', 'Ireland', 'EU', 'EUR', 'Euro', '353', '', 'en-IE,ga-IE', '2963597'),
(376, 'IL', 'ISR', 'IS', 'Israel', 'AS', 'ILS', 'Shekel', '972', '^(d{5})$', 'he,ar-IL,en-IL,', '294640'),
(380, 'IT', 'ITA', 'IT', 'Italy', 'EU', 'EUR', 'Euro', '39', '^(d{5})$', 'it-IT,de-IT,fr-IT,sl', '3175395'),
(384, 'CI', 'CIV', 'IV', 'Ivory Coast', 'AF', 'XOF', 'Franc', '225', '', 'fr-CI', '2287781'),
(388, 'JM', 'JAM', 'JM', 'Jamaica', 'NA', 'JMD', 'Dollar', '+1-876', '', 'en-JM', '3489940'),
(392, 'JP', 'JPN', 'JA', 'Japan', 'AS', 'JPY', 'Yen', '81', '^(d{7})$', 'ja', '1861060'),
(398, 'KZ', 'KAZ', 'KZ', 'Kazakhstan', 'AS', 'KZT', 'Tenge', '7', '^(d{6})$', 'kk,ru', '1522867'),
(400, 'JO', 'JOR', 'JO', 'Jordan', 'AS', 'JOD', 'Dinar', '962', '^(d{5})$', 'ar-JO,en', '248816'),
(404, 'KE', 'KEN', 'KE', 'Kenya', 'AF', 'KES', 'Shilling', '254', '^(d{5})$', 'en-KE,sw-KE', '192950'),
(408, 'KP', 'PRK', 'KN', 'North Korea', 'AS', 'KPW', 'Won', '850', '^(d{6})$', 'ko-KP', '1873107'),
(410, 'KR', 'KOR', 'KS', 'South Korea', 'AS', 'KRW', 'Won', '82', '^(?:SEOUL)*(d{6})$', 'ko-KR,en', '1835841'),
(414, 'KW', 'KWT', 'KU', 'Kuwait', 'AS', 'KWD', 'Dinar', '965', '^(d{5})$', 'ar-KW,en', '285570'),
(417, 'KG', 'KGZ', 'KG', 'Kyrgyzstan', 'AS', 'KGS', 'Som', '996', '^(d{6})$', 'ky,uz,ru', '1527747'),
(418, 'LA', 'LAO', 'LA', 'Laos', 'AS', 'LAK', 'Kip', '856', '^(d{5})$', 'lo,fr,en', '1655842'),
(422, 'LB', 'LBN', 'LE', 'Lebanon', 'AS', 'LBP', 'Pound', '961', '^(d{4}(d{4})?)$', 'ar-LB,fr-LB,en,hy', '272103'),
(426, 'LS', 'LSO', 'LT', 'Lesotho', 'AF', 'LSL', 'Loti', '266', '^(d{3})$', 'en-LS,st,zu,xh', '932692'),
(428, 'LV', 'LVA', 'LG', 'Latvia', 'EU', 'LVL', 'Lat', '371', '^(?:LV)*(d{4})$', 'lv,ru,lt', '458258'),
(430, 'LR', 'LBR', 'LI', 'Liberia', 'AF', 'LRD', 'Dollar', '231', '^(d{4})$', 'en-LR', '2275384'),
(434, 'LY', 'LBY', 'LY', 'Libya', 'AF', 'LYD', 'Dinar', '218', '', 'ar-LY,it,en', '2215636'),
(438, 'LI', 'LIE', 'LS', 'Liechtenstein', 'EU', 'CHF', 'Franc', '423', '^(d{4})$', 'de-LI', '3042058'),
(440, 'LT', 'LTU', 'LH', 'Lithuania', 'EU', 'LTL', 'Litas', '370', '^(?:LT)*(d{5})$', 'lt,ru,pl', '597427'),
(442, 'LU', 'LUX', 'LU', 'Luxembourg', 'EU', 'EUR', 'Euro', '352', '^(d{4})$', 'lb,de-LU,fr-LU', '2960313'),
(446, 'MO', 'MAC', 'MC', 'Macao', 'AS', 'MOP', 'Pataca', '853', '', 'zh,zh-MO', '1821275'),
(450, 'MG', 'MDG', 'MA', 'Madagascar', 'AF', 'MGA', 'Ariary', '261', '^(d{3})$', 'fr-MG,mg', '1062947'),
(454, 'MW', 'MWI', 'MI', 'Malawi', 'AF', 'MWK', 'Kwacha', '265', '', 'ny,yao,tum,swk', '927384'),
(458, 'MY', 'MYS', 'MY', 'Malaysia', 'AS', 'MYR', 'Ringgit', '60', '^(d{5})$', 'ms-MY,en,zh,ta,te,ml,pa,th', '1733045'),
(462, 'MV', 'MDV', 'MV', 'Maldives', 'AS', 'MVR', 'Rufiyaa', '960', '^(d{5})$', 'dv,en', '1282028'),
(466, 'ML', 'MLI', 'ML', 'Mali', 'AF', 'XOF', 'Franc', '223', '', 'fr-ML,bm', '2453866'),
(470, 'MT', 'MLT', 'MT', 'Malta', 'EU', 'EUR', 'Euro', '356', '^([A-Z]{3}d{2}d?)$', 'mt,en-MT', '2562770'),
(474, 'MQ', 'MTQ', 'MB', 'Martinique', 'NA', 'EUR', 'Euro', '596', '^(d{5})$', 'fr-MQ', '3570311'),
(478, 'MR', 'MRT', 'MR', 'Mauritania', 'AF', 'MRO', 'Ouguiya', '222', '', 'ar-MR,fuc,snk,fr,mey,wo', '2378080'),
(480, 'MU', 'MUS', 'MP', 'Mauritius', 'AF', 'MUR', 'Rupee', '230', '', 'en-MU,bho,fr', '934292'),
(484, 'MX', 'MEX', 'MX', 'Mexico', 'NA', 'MXN', 'Peso', '52', '^(d{5})$', 'es-MX', '3996063'),
(492, 'MC', 'MCO', 'MN', 'Monaco', 'EU', 'EUR', 'Euro', '377', '^(d{5})$', 'fr-MC,en,it', '2993457'),
(496, 'MN', 'MNG', 'MG', 'Mongolia', 'AS', 'MNT', 'Tugrik', '976', '^(d{6})$', 'mn,ru', '2029969'),
(498, 'MD', 'MDA', 'MD', 'Moldova', 'EU', 'MDL', 'Leu', '373', '^(?:MD)*(d{4})$', 'ro,ru,gag,tr', '617790'),
(499, 'ME', 'MNE', 'MJ', 'Montenegro', 'EU', 'EUR', 'Euro', '381', '^(d{5})$', 'sr,hu,bs,sq,hr,rom', '3194884'),
(500, 'MS', 'MSR', 'MH', 'Montserrat', 'NA', 'XCD', 'Dollar', '+1-664', '', 'en-MS', '3578097'),
(504, 'MA', 'MAR', 'MO', 'Morocco', 'AF', 'MAD', 'Dirham', '212', '^(d{5})$', 'ar-MA,fr', '2542007'),
(508, 'MZ', 'MOZ', 'MZ', 'Mozambique', 'AF', 'MZN', 'Meticail', '258', '^(d{4})$', 'pt-MZ,vmw', '1036973'),
(512, 'OM', 'OMN', 'MU', 'Oman', 'AS', 'OMR', 'Rial', '968', '^(d{3})$', 'ar-OM,en,bal,ur', '286963'),
(516, 'NA', 'NAM', 'WA', 'Namibia', 'AF', 'NAD', 'Dollar', '264', '', 'en-NA,af,de,hz,naq', '3355338'),
(520, 'NR', 'NRU', 'NR', 'Nauru', 'OC', 'AUD', 'Dollar', '674', '', 'na,en-NR', '2110425'),
(524, 'NP', 'NPL', 'NP', 'Nepal', 'AS', 'NPR', 'Rupee', '977', '^(d{5})$', 'ne,en', '1282988'),
(528, 'NL', 'NLD', 'NL', 'Netherlands', 'EU', 'EUR', 'Euro', '31', '^(d{4}[A-Z]{2})$', 'nl-NL,fy-NL', '2750405'),
(530, 'AN', 'ANT', 'NT', 'Netherlands Antilles', 'NA', 'ANG', 'Guilder', '599', '', 'nl-AN,en,es', '3513447'),
(533, 'AW', 'ABW', 'AA', 'Aruba', 'NA', 'AWG', 'Guilder', '297', '', 'nl-AW,es,en', '3577279'),
(540, 'NC', 'NCL', 'NC', 'New Caledonia', 'OC', 'XPF', 'Franc', '687', '^(d{5})$', 'fr-NC', '2139685'),
(548, 'VU', 'VUT', 'NH', 'Vanuatu', 'OC', 'VUV', 'Vatu', '678', '', 'bi,en-VU,fr-VU', '2134431'),
(554, 'NZ', 'NZL', 'NZ', 'New Zealand', 'OC', 'NZD', 'Dollar', '64', '^(d{4})$', 'en-NZ,mi', '2186224'),
(558, 'NI', 'NIC', 'NU', 'Nicaragua', 'NA', 'NIO', 'Cordoba', '505', '^(d{7})$', 'es-NI,en', '3617476'),
(562, 'NE', 'NER', 'NG', 'Niger', 'AF', 'XOF', 'Franc', '227', '^(d{4})$', 'fr-NE,ha,kr,dje', '2440476'),
(566, 'NG', 'NGA', 'NI', 'Nigeria', 'AF', 'NGN', 'Naira', '234', '^(d{6})$', 'en-NG,ha,yo,ig,ff', '2328926'),
(570, 'NU', 'NIU', 'NE', 'Niue', 'OC', 'NZD', 'Dollar', '683', '', 'niu,en-NU', '4036232'),
(574, 'NF', 'NFK', 'NF', 'Norfolk Island', 'OC', 'AUD', 'Dollar', '672', '', 'en-NF', '2155115'),
(578, 'NO', 'NOR', 'NO', 'Norway', 'EU', 'NOK', 'Krone', '47', '^(d{4})$', 'no,nb,nn', '3144096'),
(580, 'MP', 'MNP', 'CQ', 'Northern Mariana Islands', 'OC', 'USD', 'Dollar', '+1-670', '', 'fil,tl,zh,ch-MP,en-MP', '4041467'),
(581, 'UM', 'UMI', '', 'United States Minor Outlying Islands', 'OC', 'USD', 'Dollar ', '', '', 'en-UM', '5854968'),
(583, 'FM', 'FSM', 'FM', 'Micronesia', 'OC', 'USD', 'Dollar', '691', '^(d{5})$', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', '2081918'),
(584, 'MH', 'MHL', 'RM', 'Marshall Islands', 'OC', 'USD', 'Dollar', '692', '', 'mh,en-MH', '2080185'),
(585, 'PW', 'PLW', 'PS', 'Palau', 'OC', 'USD', 'Dollar', '680', '^(96940)$', 'pau,sov,en-PW,tox,ja,fil,zh', '1559582'),
(586, 'PK', 'PAK', 'PK', 'Pakistan', 'AS', 'PKR', 'Rupee', '92', '^(d{5})$', 'ur-PK,en-PK,pa,sd,ps,brh', '1168579'),
(591, 'PA', 'PAN', 'PM', 'Panama', 'NA', 'PAB', 'Balboa', '507', '', 'es-PA,en', '3703430'),
(598, 'PG', 'PNG', 'PP', 'Papua New Guinea', 'OC', 'PGK', 'Kina', '675', '^(d{3})$', 'en-PG,ho,meu,tpi', '2088628'),
(600, 'PY', 'PRY', 'PA', 'Paraguay', 'SA', 'PYG', 'Guarani', '595', '^(d{4})$', 'es-PY,gn', '3437598'),
(604, 'PE', 'PER', 'PE', 'Peru', 'SA', 'PEN', 'Sol', '51', '', 'es-PE,qu,ay', '3932488'),
(608, 'PH', 'PHL', 'RP', 'Philippines', 'AS', 'PHP', 'Peso', '63', '^(d{4})$', 'tl,en-PH,fil', '1694008'),
(612, 'PN', 'PCN', 'PC', 'Pitcairn', 'OC', 'NZD', 'Dollar', '', '', 'en-PN', '4030699'),
(616, 'PL', 'POL', 'PL', 'Poland', 'EU', 'PLN', 'Zloty', '48', '^(d{5})$', 'pl', '798544'),
(620, 'PT', 'PRT', 'PO', 'Portugal', 'EU', 'EUR', 'Euro', '351', '^(d{7})$', 'pt-PT,mwl', '2264397'),
(624, 'GW', 'GNB', 'PU', 'Guinea-Bissau', 'AF', 'XOF', 'Franc', '245', '^(d{4})$', 'pt-GW,pov', '2372248'),
(626, 'TL', 'TLS', 'TT', 'East Timor', 'OC', 'USD', 'Dollar', '670', '', 'tet,pt-TL,id,en', '1966436'),
(630, 'PR', 'PRI', 'RQ', 'Puerto Rico', 'NA', 'USD', 'Dollar', '+1-787 and 1-939', '^(d{9})$', 'en-PR,es-PR', '4566966'),
(634, 'QA', 'QAT', 'QA', 'Qatar', 'AS', 'QAR', 'Rial', '974', '', 'ar-QA,es', '289688'),
(638, 'RE', 'REU', 'RE', 'Reunion', 'AF', 'EUR', 'Euro', '262', '^((97)|(98)(4|7|8)d{2})$', 'fr-RE', '935317'),
(642, 'RO', 'ROU', 'RO', 'Romania', 'EU', 'RON', 'Leu', '40', '^(d{6})$', 'ro,hu,rom', '798549'),
(643, 'RU', 'RUS', 'RS', 'Russia', 'EU', 'RUB', 'Ruble', '7', '^(d{6})$', 'ru-RU', '2017370'),
(646, 'RW', 'RWA', 'RW', 'Rwanda', 'AF', 'RWF', 'Franc', '250', '', 'rw,en-RW,fr-RW,sw', '49518'),
(652, 'BL', 'BLM', 'TB', 'Saint Barthélemy', 'NA', 'EUR', 'Euro', '590', '', 'fr', '3578476'),
(654, 'SH', 'SHN', 'SH', 'Saint Helena', 'AF', 'SHP', 'Pound', '290', '^(STHL1ZZ)$', 'en-SH', '3370751'),
(659, 'KN', 'KNA', 'SC', 'Saint Kitts and Nevis', 'NA', 'XCD', 'Dollar', '+1-869', '', 'en-KN', '3575174'),
(660, 'AI', 'AIA', 'AV', 'Anguilla', 'NA', 'XCD', 'Dollar', '+1-264', '', 'en-AI', '3573511'),
(662, 'LC', 'LCA', 'ST', 'Saint Lucia', 'NA', 'XCD', 'Dollar', '+1-758', '', 'en-LC', '3576468'),
(663, 'MF', 'MAF', 'RN', 'Saint Martin', 'NA', 'EUR', 'Euro', '590', '', 'fr', '3578421'),
(666, 'PM', 'SPM', 'SB', 'Saint Pierre and Miquelon', 'NA', 'EUR', 'Euro', '508', '^(97500)$', 'fr-PM', '3424932'),
(670, 'VC', 'VCT', 'VC', 'Saint Vincent and the Grenadines', 'NA', 'XCD', 'Dollar', '+1-784', '', 'en-VC,fr', '3577815'),
(674, 'SM', 'SMR', 'SM', 'San Marino', 'EU', 'EUR', 'Euro', '378', '^(4789d)$', 'it-SM', '3168068'),
(678, 'ST', 'STP', 'TP', 'Sao Tome and Principe', 'AF', 'STD', 'Dobra', '239', '', 'pt-ST', '2410758'),
(682, 'SA', 'SAU', 'SA', 'Saudi Arabia', 'AS', 'SAR', 'Rial', '966', '^(d{5})$', 'ar-SA', '102358'),
(686, 'SN', 'SEN', 'SG', 'Senegal', 'AF', 'XOF', 'Franc', '221', '^(d{5})$', 'fr-SN,wo,fuc,mnk', '2245662'),
(688, 'RS', 'SRB', 'RB', 'Serbia', 'EU', 'RSD', 'Dinar', '381', '^(d{6})$', 'sr,hu,bs,rom', '6290252'),
(690, 'SC', 'SYC', 'SE', 'Seychelles', 'AF', 'SCR', 'Rupee', '248', '', 'en-SC,fr-SC', '241170'),
(694, 'SL', 'SLE', 'SL', 'Sierra Leone', 'AF', 'SLL', 'Leone', '232', '', 'en-SL,men,tem', '2403846'),
(702, 'SG', 'SGP', 'SN', 'Singapore', 'AS', 'SGD', 'Dollar', '65', '^(d{6})$', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', '1880251'),
(703, 'SK', 'SVK', 'LO', 'Slovakia', 'EU', 'EUR', 'Euro', '421', '^(d{5})$', 'sk,hu', '3057568'),
(704, 'VN', 'VNM', 'VM', 'Vietnam', 'AS', 'VND', 'Dong', '84', '^(d{6})$', 'vi,en,fr,zh,km', '1562822'),
(705, 'SI', 'SVN', 'SI', 'Slovenia', 'EU', 'EUR', 'Euro', '386', '^(?:SI)*(d{4})$', 'sl,sh', '3190538'),
(706, 'SO', 'SOM', 'SO', 'Somalia', 'AF', 'SOS', 'Shilling', '252', '^([A-Z]{2}d{5})$', 'so-SO,ar-SO,it,en-SO', '51537'),
(710, 'ZA', 'ZAF', 'SF', 'South Africa', 'AF', 'ZAR', 'Rand', '27', '^(d{4})$', 'zu,xh,af,nso,en-ZA,tn,st,ts', '953987'),
(716, 'ZW', 'ZWE', 'ZI', 'Zimbabwe', 'AF', 'ZWL', 'Dollar', '263', '', 'en-ZW,sn,nr,nd', '878675'),
(724, 'ES', 'ESP', 'SP', 'Spain', 'EU', 'EUR', 'Euro', '34', '^(d{5})$', 'es-ES,ca,gl,eu', '2510769'),
(732, 'EH', 'ESH', 'WI', 'Western Sahara', 'AF', 'MAD', 'Dirham', '212', '', 'ar,mey', '2461445'),
(736, 'SD', 'SDN', 'SU', 'Sudan', 'AF', 'SDG', 'Dinar', '249', '^(d{5})$', 'ar-SD,en,fia', '366755'),
(740, 'SR', 'SUR', 'NS', 'Suriname', 'SA', 'SRD', 'Dollar', '597', '', 'nl-SR,en,srn,hns,jv', '3382998'),
(744, 'SJ', 'SJM', 'SV', 'Svalbard and Jan Mayen', 'EU', 'NOK', 'Krone', '47', '', 'no,ru', '607072'),
(748, 'SZ', 'SWZ', 'WZ', 'Swaziland', 'AF', 'SZL', 'Lilangeni', '268', '^([A-Z]d{3})$', 'en-SZ,ss-SZ', '934841'),
(752, 'SE', 'SWE', 'SW', 'Sweden', 'EU', 'SEK', 'Krona', '46', '^(?:SE)*(d{5})$', 'sv-SE,se,sma,fi-SE', '2661886'),
(756, 'CH', 'CHE', 'SZ', 'Switzerland', 'EU', 'CHF', 'Franc', '41', '^(d{4})$', 'de-CH,fr-CH,it-CH,rm', '2658434'),
(760, 'SY', 'SYR', 'SY', 'Syria', 'AS', 'SYP', 'Pound', '963', '', 'ar-SY,ku,hy,arc,fr,en', '163843'),
(762, 'TJ', 'TJK', 'TI', 'Tajikistan', 'AS', 'TJS', 'Somoni', '992', '^(d{6})$', 'tg,ru', '1220409'),
(764, 'TH', 'THA', 'TH', 'Thailand', 'AS', 'THB', 'Baht', '66', '^(d{5})$', 'th,en', '1605651'),
(768, 'TG', 'TGO', 'TO', 'Togo', 'AF', 'XOF', 'Franc', '228', '', 'fr-TG,ee,hna,kbp,dag,ha', '2363686'),
(772, 'TK', 'TKL', 'TL', 'Tokelau', 'OC', 'NZD', 'Dollar', '690', '', 'tkl,en-TK', '4031074'),
(776, 'TO', 'TON', 'TN', 'Tonga', 'OC', 'TOP', 'Pa''anga', '676', '', 'to,en-TO', '4032283'),
(780, 'TT', 'TTO', 'TD', 'Trinidad and Tobago', 'NA', 'TTD', 'Dollar', '+1-868', '', 'en-TT,hns,fr,es,zh', '3573591'),
(784, 'AE', 'ARE', 'AE', 'United Arab Emirates', 'AS', 'AED', 'Dirham', '971', '', 'ar-AE,fa,en,hi,ur', '290557'),
(788, 'TN', 'TUN', 'TS', 'Tunisia', 'AF', 'TND', 'Dinar', '216', '^(d{4})$', 'ar-TN,fr', '2464461'),
(792, 'TR', 'TUR', 'TU', 'Turkey', 'AS', 'TRY', 'Lira', '90', '^(d{5})$', 'tr-TR,ku,diq,az,av', '298795'),
(795, 'TM', 'TKM', 'TX', 'Turkmenistan', 'AS', 'TMT', 'Manat', '993', '^(d{6})$', 'tk,ru,uz', '1218197'),
(796, 'TC', 'TCA', 'TK', 'Turks and Caicos Islands', 'NA', 'USD', 'Dollar', '+1-649', '^(TKCA 1ZZ)$', 'en-TC', '3576916'),
(798, 'TV', 'TUV', 'TV', 'Tuvalu', 'OC', 'AUD', 'Dollar', '688', '', 'tvl,en,sm,gil', '2110297'),
(800, 'UG', 'UGA', 'UG', 'Uganda', 'AF', 'UGX', 'Shilling', '256', '', 'en-UG,lg,sw,ar', '226074'),
(804, 'UA', 'UKR', 'UP', 'Ukraine', 'EU', 'UAH', 'Hryvnia', '380', '^(d{5})$', 'uk,ru-UA,rom,pl,hu', '690791'),
(807, 'MK', 'MKD', 'MK', 'Macedonia', 'EU', 'MKD', 'Denar', '389', '^(d{4})$', 'mk,sq,tr,rmm,sr', '718075'),
(818, 'EG', 'EGY', 'EG', 'Egypt', 'AF', 'EGP', 'Pound', '20', '^(d{5})$', 'ar-EG,en,fr', '357994'),
(826, 'GB', 'GBR', 'UK', 'United Kingdom', 'EU', 'GBP', 'Pound', '44', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A', 'en-GB,cy-GB,gd', '2635167'),
(831, 'GG', 'GGY', 'GK', 'Guernsey', 'EU', 'GBP', 'Pound', '+44-1481', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A', 'en,fr', '3042362'),
(832, 'JE', 'JEY', 'JE', 'Jersey', 'EU', 'GBP', 'Pound', '+44-1534', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A', 'en,pt', '3042142'),
(833, 'IM', 'IMN', 'IM', 'Isle of Man', 'EU', 'GBP', 'Pound', '+44-1624', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A', 'en,gv', '3042225'),
(834, 'TZ', 'TZA', 'TZ', 'Tanzania', 'AF', 'TZS', 'Shilling', '255', '', 'sw-TZ,en,ar', '149590'),
(840, 'US', 'USA', 'US', 'United States', 'NA', 'USD', 'Dollar', '1', '^(d{9})$', 'en-US,es-US,haw', '6252001'),
(850, 'VI', 'VIR', 'VQ', 'U.S. Virgin Islands', 'NA', 'USD', 'Dollar', '+1-340', '', 'en-VI', '4796775'),
(854, 'BF', 'BFA', 'UV', 'Burkina Faso', 'AF', 'XOF', 'Franc', '226', '', 'fr-BF', '2361809'),
(855, 'XK', 'XKX', 'KV', 'Kosovo', 'EU', 'EUR', 'Euro', '', '', 'sq,sr', '831053'),
(858, 'UY', 'URY', 'UY', 'Uruguay', 'SA', 'UYU', 'Peso', '598', '^(d{5})$', 'es-UY', '3439705'),
(860, 'UZ', 'UZB', 'UZ', 'Uzbekistan', 'AS', 'UZS', 'Som', '998', '^(d{6})$', 'uz,ru,tg', '1512440'),
(862, 'VE', 'VEN', 'VE', 'Venezuela', 'SA', 'VEF', 'Bolivar', '58', '^(d{4})$', 'es-VE', '3625428'),
(876, 'WF', 'WLF', 'WF', 'Wallis and Futuna', 'OC', 'XPF', 'Franc', '681', '^(986d{2})$', 'wls,fud,fr-WF', '4034749'),
(882, 'WS', 'WSM', 'WS', 'Samoa', 'OC', 'WST', 'Tala', '685', '', 'sm,en-WS', '4034894'),
(887, 'YE', 'YEM', 'YM', 'Yemen', 'AS', 'YER', 'Rial', '967', '', 'ar-YE', '69543'),
(891, 'CS', 'SCG', 'YI', 'Serbia and Montenegro', 'EU', 'RSD', 'Dinar', '381', '^(d{5})$', 'cu,hu,sq,sr', '863038'),
(894, 'ZM', 'ZMB', 'ZA', 'Zambia', 'AF', 'ZMK', 'Kwacha', '260', '^(d{5})$', 'en-ZM,bem,loz,lun,lue,ny,toi', '895949');

-- --------------------------------------------------------

--
-- Table structure for table `subregions`
--

--
-- Dumping data for table `subregions`
--

INSERT INTO `country_region` (`id`, `country_id`, `name`, `timezone`) VALUES
(1, 4, 'Badakhshan', 'Asia/Kabul'),
(2, 4, 'Badghis Province', 'Asia/Kabul'),
(3, 4, 'Baghlān', 'Asia/Kabul'),
(4, 4, 'Bāmīān', 'Asia/Kabul'),
(5, 4, 'Farah', 'Asia/Kabul'),
(6, 4, 'Faryab Province', 'Asia/Kabul'),
(7, 4, 'Ghaznī', 'Asia/Kabul'),
(8, 4, 'Ghowr', 'Asia/Kabul'),
(9, 4, 'Helmand Province', 'Asia/Kabul'),
(10, 4, 'Herat Province', 'Asia/Kabul'),
(11, 4, 'Kabul', 'Asia/Kabul'),
(12, 4, 'Kāpīsā', 'Asia/Kabul'),
(13, 4, 'Lowgar', 'Asia/Kabul'),
(14, 4, 'Nangarhār', 'Asia/Kabul'),
(15, 4, 'Nīmrūz', 'Asia/Kabul'),
(16, 4, 'Orūzgān', 'Asia/Kabul'),
(17, 4, 'Kandahār', 'Asia/Kabul'),
(18, 4, 'Kunduz Province', 'Asia/Kabul'),
(19, 4, 'Takhār', 'Asia/Kabul'),
(20, 4, 'Vardak', 'Asia/Kabul'),
(21, 4, 'Zabul Province', 'Asia/Kabul'),
(22, 4, 'Paktīkā', 'Asia/Kabul'),
(23, 4, 'Balkh', 'Asia/Kabul'),
(24, 4, 'Jowzjān', 'Asia/Kabul'),
(25, 4, 'Samangān', 'Asia/Kabul'),
(26, 4, 'Sar-e Pol', 'Asia/Kabul'),
(27, 4, 'Konar', 'Asia/Kabul'),
(28, 4, 'Laghmān', 'Asia/Kabul'),
(29, 4, 'Paktia Province', 'Asia/Kabul'),
(30, 4, 'Khowst', 'Asia/Kabul'),
(31, 4, 'Nūrestān', 'Asia/Kabul'),
(32, 4, 'Parvān', 'Asia/Kabul'),
(33, 4, 'Dāykondī', 'Asia/Kabul'),
(34, 4, 'Panjshīr', 'Asia/Kabul'),
(35, 8, 'Berat', 'Europe/Tirane'),
(36, 8, 'Dibër', 'Europe/Tirane'),
(37, 8, 'Durrës', 'Europe/Tirane'),
(38, 8, 'Elbasan', 'Europe/Tirane'),
(39, 8, 'Fier', 'Europe/Tirane'),
(40, 8, 'Gjirokastër', 'Europe/Tirane'),
(41, 8, 'Korçë', 'Europe/Tirane'),
(42, 8, 'Kukës', 'Europe/Tirane'),
(43, 8, 'Lezhë', 'Europe/Tirane'),
(44, 8, 'Shkodër', 'Europe/Tirane'),
(45, 8, 'Tiranë', 'Europe/Tirane'),
(46, 8, 'Vlorë', 'Europe/Tirane'),
(47, 12, 'Alger', 'Africa/Algiers'),
(48, 12, 'Batna', 'Africa/Algiers'),
(49, 12, 'Constantine', 'Africa/Algiers'),
(50, 12, 'Médéa', 'Africa/Algiers'),
(51, 12, 'Mostaganem', 'Africa/Algiers'),
(52, 12, 'Oran', 'Africa/Algiers'),
(53, 12, 'Saïda', 'Africa/Algiers'),
(54, 12, 'Sétif', 'Africa/Algiers'),
(55, 12, 'Tiaret', 'Africa/Algiers'),
(56, 12, 'Tizi Ouzou', 'Africa/Algiers'),
(57, 12, 'Tlemcen', 'Africa/Algiers'),
(58, 12, 'Bejaïa', 'Africa/Algiers'),
(59, 12, 'Biskra', 'Africa/Algiers'),
(60, 12, 'Blida', 'Africa/Algiers'),
(61, 12, 'Bouira', 'Africa/Algiers'),
(62, 12, 'Djelfa', 'Africa/Algiers'),
(63, 12, 'Guelma', 'Africa/Algiers'),
(64, 12, 'Jijel', 'Africa/Algiers'),
(65, 12, 'Laghouat', 'Africa/Algiers'),
(66, 12, 'Mascara', 'Africa/Algiers'),
(67, 12, 'Mʼsila', 'Africa/Algiers'),
(68, 12, 'Oum el Bouaghi', 'Africa/Algiers'),
(69, 12, 'Sidi Bel Abbès', 'Africa/Algiers'),
(70, 12, 'Skikda', 'Africa/Algiers'),
(71, 12, 'Tébessa', 'Africa/Algiers'),
(72, 12, 'Adrar', 'Africa/Algiers'),
(73, 12, 'Aïn Defla', 'Africa/Algiers'),
(74, 12, 'Aïn Temouchent', 'Africa/Algiers'),
(75, 12, 'Annaba', 'Africa/Algiers'),
(76, 12, 'Béchar', 'Africa/Algiers'),
(77, 12, 'Bordj Bou Arréridj', 'Africa/Algiers'),
(78, 12, 'Boumerdes', 'Africa/Algiers'),
(79, 12, 'Chlef', 'Africa/Algiers'),
(80, 12, 'El Bayadh', 'Africa/Algiers'),
(81, 12, 'El Oued', 'Africa/Algiers'),
(82, 12, 'El Tarf', 'Africa/Algiers'),
(83, 12, 'Ghardaïa', 'Africa/Algiers'),
(84, 12, 'Illizi', 'Africa/Algiers'),
(85, 12, 'Khenchela', 'Africa/Algiers'),
(86, 12, 'Mila', 'Africa/Algiers'),
(87, 12, 'Naama النعامة', 'Africa/Algiers'),
(88, 12, 'Ouargla', 'Africa/Algiers'),
(89, 12, 'Relizane', 'Africa/Algiers'),
(90, 12, 'Souk Ahras', 'Africa/Algiers'),
(91, 12, 'Tamanghasset', 'Africa/Algiers'),
(92, 12, 'Tindouf', 'Africa/Algiers'),
(93, 12, 'Tipaza', 'Africa/Algiers'),
(94, 12, 'Tissemsilt', 'Africa/Algiers'),
(95, 16, 'American Samoa', 'Pacific/Pago_Pago'),
(96, 20, 'Parròquia de Canillo', 'Europe/Andorra'),
(97, 20, 'Parròquia dʼEncamp', 'Europe/Andorra'),
(98, 20, 'Parròquia de la Massana', 'Europe/Andorra'),
(99, 20, 'Parròquia dʼOrdino', 'Europe/Andorra'),
(100, 20, 'Parròquia de Sant Julià de Lòria', 'Europe/Andorra'),
(101, 20, 'Parròquia dʼAndorra la Vella', 'Europe/Andorra'),
(102, 20, 'Parròquia dʼEscaldes-Engordany', 'Europe/Andorra'),
(103, 24, 'Benguela', 'Africa/Luanda'),
(104, 24, 'Bié', 'Africa/Luanda'),
(105, 24, 'Cabinda', 'Africa/Luanda'),
(106, 24, 'Cuando Cubango', 'Africa/Luanda'),
(107, 24, 'Cuanza Norte', 'Africa/Luanda'),
(108, 24, 'Cuanza Sul', 'Africa/Luanda'),
(109, 24, 'Cunene', 'Africa/Luanda'),
(110, 24, 'Huambo', 'Africa/Luanda'),
(111, 24, 'Huíla', 'Africa/Luanda'),
(112, 24, 'Luanda', 'Africa/Luanda'),
(113, 24, 'Malanje', 'Africa/Luanda'),
(114, 24, 'Namibe', 'Africa/Luanda'),
(115, 24, 'Moxico', 'Africa/Luanda'),
(116, 24, 'Uíge', 'Africa/Luanda'),
(117, 24, 'Zaire', 'Africa/Luanda'),
(118, 24, 'Lunda Norte', 'Africa/Luanda'),
(119, 24, 'Lunda Sul', 'Africa/Luanda'),
(120, 24, 'Bengo', 'Africa/Luanda'),
(121, 28, 'Redonda', 'America/Antigua'),
(122, 28, 'Barbuda', 'America/Antigua'),
(123, 28, 'Saint George', 'America/Antigua'),
(124, 28, 'Saint John', 'America/Antigua'),
(125, 28, 'Saint Mary', 'America/Antigua'),
(126, 28, 'Saint Paul', 'America/Antigua'),
(127, 28, 'Saint Peter', 'America/Antigua'),
(128, 28, 'Saint Philip', 'America/Antigua'),
(129, 31, 'Abşeron', 'Asia/Baku'),
(130, 31, 'Ağcabǝdi', 'Asia/Baku'),
(131, 31, 'Ağdam', 'Asia/Baku'),
(132, 31, 'Ağdaş', 'Asia/Baku'),
(133, 31, 'Ağstafa', 'Asia/Baku'),
(134, 31, 'Ağsu', 'Asia/Baku'),
(135, 31, 'Əli Bayramli', 'Asia/Baku'),
(136, 31, 'Astara', 'Asia/Baku'),
(137, 31, 'Baki', 'Asia/Baku'),
(138, 31, 'Balakǝn', 'Asia/Baku'),
(139, 31, 'Bǝrdǝ', 'Asia/Baku'),
(140, 31, 'Beylǝqan', 'Asia/Baku'),
(141, 31, 'Bilǝsuvar', 'Asia/Baku'),
(142, 31, 'Cǝbrayıl', 'Asia/Baku'),
(143, 31, 'Cǝlilabad', 'Asia/Baku'),
(144, 31, 'Daşkǝsǝn', 'Asia/Baku'),
(145, 31, 'Dǝvǝçi', 'Asia/Baku'),
(146, 31, 'Füzuli', 'Asia/Baku'),
(147, 31, 'Gǝdǝbǝy', 'Asia/Baku'),
(148, 31, 'Gǝncǝ', 'Asia/Baku'),
(149, 31, 'Goranboy', 'Asia/Baku'),
(150, 31, 'Göyçay', 'Asia/Baku'),
(151, 31, 'Hacıqabul', 'Asia/Baku'),
(152, 31, 'İmişli', 'Asia/Baku'),
(153, 31, 'İsmayıllı', 'Asia/Baku'),
(154, 31, 'Kǝlbǝcǝr', 'Asia/Baku'),
(155, 31, 'Kürdǝmir', 'Asia/Baku'),
(156, 31, 'Laçın', 'Asia/Baku'),
(157, 31, 'Lǝnkǝran', 'Asia/Baku'),
(158, 31, 'Lǝnkǝran Şǝhǝri', 'Asia/Baku'),
(159, 31, 'Lerik', 'Asia/Baku'),
(160, 31, 'Masallı', 'Asia/Baku'),
(161, 31, 'Mingǝcevir', 'Asia/Baku'),
(162, 31, 'Naftalan', 'Asia/Baku'),
(163, 31, 'Nakhichevan', 'Asia/Baku'),
(164, 31, 'Neftçala', 'Asia/Baku'),
(165, 31, 'Oğuz', 'Asia/Baku'),
(166, 31, 'Qǝbǝlǝ', 'Asia/Baku'),
(167, 31, 'Qǝx', 'Asia/Baku'),
(168, 31, 'Qazax', 'Asia/Baku'),
(169, 31, 'Qobustan', 'Asia/Baku'),
(170, 31, 'Quba', 'Asia/Baku'),
(171, 31, 'Qubadlı', 'Asia/Baku'),
(172, 31, 'Qusar', 'Asia/Baku'),
(173, 31, 'Saatlı', 'Asia/Baku'),
(174, 31, 'Sabirabad', 'Asia/Baku'),
(175, 31, 'Şǝki', 'Asia/Baku'),
(176, 31, 'Şǝki', 'Asia/Baku'),
(177, 31, 'Salyan', 'Asia/Baku'),
(178, 31, 'Şamaxı', 'Asia/Baku'),
(179, 31, 'Şǝmkir', 'Asia/Baku'),
(180, 31, 'Samux', 'Asia/Baku'),
(181, 31, 'Siyǝzǝn', 'Asia/Baku'),
(182, 31, 'Sumqayit', 'Asia/Baku'),
(183, 31, 'Şuşa', 'Asia/Baku'),
(184, 31, 'Şuşa Şəhəri', 'Asia/Baku'),
(185, 31, 'Tǝrtǝr', 'Asia/Baku'),
(186, 31, 'Tovuz', 'Asia/Baku'),
(187, 31, 'Ucar', 'Asia/Baku'),
(188, 31, 'Xaçmaz', 'Asia/Baku'),
(189, 31, 'Xankǝndi', 'Asia/Baku'),
(190, 31, 'Xanlar', 'Asia/Baku'),
(191, 31, 'Xızı', 'Asia/Baku'),
(192, 31, 'Xocalı', 'Asia/Baku'),
(193, 31, 'Xocavǝnd', 'Asia/Baku'),
(194, 31, 'Yardımlı', 'Asia/Baku'),
(195, 31, 'Yevlax', 'Asia/Baku'),
(196, 31, 'Yevlax', 'Asia/Baku'),
(197, 31, 'Zǝngilan', 'Asia/Baku'),
(198, 31, 'Zaqatala', 'Asia/Baku'),
(199, 31, 'Zǝrdab', 'Asia/Baku'),
(200, 32, 'Buenos Aires', 'America/Argentina/Buenos_Aires'),
(201, 32, 'Catamarca', 'America/Argentina/Catamarca'),
(202, 32, 'Chaco', 'America/Argentina/Cordoba'),
(203, 32, 'Chubut', 'America/Argentina/Catamarca'),
(204, 32, 'Córdoba', 'America/Argentina/Cordoba'),
(205, 32, 'Corrientes', 'America/Argentina/Cordoba'),
(206, 32, 'Distrito Federal', 'America/Argentina/Buenos_Aires'),
(207, 32, 'Entre Ríos', 'America/Argentina/Cordoba'),
(208, 32, 'Formosa', 'America/Argentina/Cordoba'),
(209, 32, 'Jujuy', 'America/Argentina/Jujuy'),
(210, 32, 'La Pampa', 'America/Argentina/Cordoba'),
(211, 32, 'La Rioja', 'America/Argentina/La_Rioja'),
(212, 32, 'Mendoza', 'America/Argentina/Mendoza'),
(213, 32, 'Misiones', 'America/Argentina/Cordoba'),
(214, 32, 'Neuquén', 'America/Argentina/Cordoba'),
(215, 32, 'Río Negro', 'America/Argentina/Cordoba'),
(216, 32, 'Salta', 'America/Argentina/Cordoba'),
(217, 32, 'San Juan', 'America/Argentina/San_Juan'),
(218, 32, 'San Luis', 'America/Argentina/Cordoba'),
(219, 32, 'Santa Cruz', 'America/Argentina/Rio_Gallegos'),
(220, 32, 'Santa Fe', 'America/Argentina/Cordoba'),
(221, 32, 'Santiago del Estero', 'America/Argentina/Cordoba'),
(222, 32, 'Tierra del Fuego, Antártida e Islas del Atlán', 'America/Argentina/Ushuaia'),
(223, 32, 'Tucumán', 'America/Argentina/Tucuman'),
(224, 36, 'Australian Capital Territory', 'Australia/Sydney'),
(225, 36, 'New South Wales', 'Australia/Sydney'),
(226, 36, 'Northern Territory', 'Australia/Darwin'),
(227, 36, 'Queensland', 'Australia/Brisbane'),
(228, 36, 'South Australia', 'Australia/Adelaide'),
(229, 36, 'Tasmania', 'Australia/Hobart'),
(230, 36, 'Victoria', 'Australia/Melbourne'),
(231, 36, 'Western Australia', 'Australia/Perth'),
(232, 40, 'Burgenland', 'Europe/Vienna'),
(233, 40, 'Carinthia', 'Europe/Vienna'),
(234, 40, 'Lower Austria', 'Europe/Vienna'),
(235, 40, 'Upper Austria', 'Europe/Vienna'),
(236, 40, 'Salzburg', 'Europe/Vienna'),
(237, 40, 'Styria', 'Europe/Vienna'),
(238, 40, 'Tyrol', 'Europe/Vienna'),
(239, 40, 'Vorarlberg', 'Europe/Vienna'),
(240, 40, 'Vienna', 'Europe/Vienna'),
(241, 44, 'Bimini', 'America/Nassau'),
(242, 44, 'Cat Island', 'America/Nassau'),
(243, 44, 'Inagua', 'America/Nassau'),
(244, 44, 'Long Island', 'America/Nassau'),
(245, 44, 'Mayaguana', 'America/Nassau'),
(246, 44, 'Ragged Island', 'America/Nassau'),
(247, 44, 'Harbour Island, Eleuthera', 'America/Nassau'),
(248, 44, 'North Abaco', 'America/Nassau'),
(249, 44, 'Acklins', 'America/Nassau'),
(250, 44, 'City of Freeport, Grand Bahama', 'America/Nassau'),
(251, 44, 'South Andros', 'America/Nassau'),
(252, 44, 'Hope Town, Abaco', 'America/Nassau'),
(253, 44, 'Mangrove Cay, Andros', 'America/Nassau'),
(254, 44, 'Mooreʼs Island, Abaco', 'America/Nassau'),
(255, 44, 'Rum Cay', 'America/Nassau'),
(256, 44, 'North Andros', 'America/Nassau'),
(257, 44, 'North Eleuthera', 'America/Nassau'),
(258, 44, 'South Eleuthera', 'America/Nassau'),
(259, 44, 'South Abaco', 'America/Nassau'),
(260, 44, 'San Salvador', 'America/Nassau'),
(261, 44, 'Berry Islands', 'America/Nassau'),
(262, 44, 'Black Point, Exuma', 'America/Nassau'),
(263, 44, 'Central Abaco', 'America/Nassau'),
(264, 44, 'Central Andros', 'America/Nassau'),
(265, 44, 'Central Eleuthera', 'America/Nassau'),
(266, 44, 'Crooked Island', 'America/Nassau'),
(267, 44, 'East Grand Bahama', 'America/Nassau'),
(268, 44, 'Exuma', 'America/Nassau'),
(269, 44, 'Grand Cay, Abaco', 'America/Nassau'),
(270, 44, 'Spanish Wells, Eleuthera', 'America/Nassau'),
(271, 44, 'West Grand Bahama', 'America/Nassau'),
(272, 48, 'Southern Governate', 'Asia/Bahrain'),
(273, 48, 'Northern Governate', 'Asia/Bahrain'),
(274, 48, 'Capital Governate', 'Asia/Bahrain'),
(275, 48, 'Central Governate', 'Asia/Bahrain'),
(276, 48, 'Muharraq Governate', 'Asia/Bahrain'),
(277, 50, 'BG80', 'Asia/Dhaka'),
(278, 50, 'Dhaka', 'Asia/Dhaka'),
(279, 50, 'Khulna', 'Asia/Dhaka'),
(280, 50, 'Rājshāhi', 'Asia/Dhaka'),
(281, 50, 'Chittagong', 'Asia/Dhaka'),
(282, 50, 'Barisāl', 'Asia/Dhaka'),
(283, 50, 'Sylhet', 'Asia/Dhaka'),
(284, 51, 'Aragatsotn', 'Asia/Yerevan'),
(285, 51, 'Ararat', 'Asia/Yerevan'),
(286, 51, 'Armavir', 'Asia/Yerevan'),
(287, 51, 'Gegharkʼunikʼ', 'Asia/Yerevan'),
(288, 51, 'Kotaykʼ', 'Asia/Yerevan'),
(289, 51, 'Lorri', 'Asia/Yerevan'),
(290, 51, 'Shirak', 'Asia/Yerevan'),
(291, 51, 'Syunikʼ', 'Asia/Yerevan'),
(292, 51, 'Tavush', 'Asia/Yerevan'),
(293, 51, 'Vayotsʼ Dzor', 'Asia/Yerevan'),
(294, 51, 'Yerevan', 'Asia/Yerevan'),
(295, 52, 'Christ Church', 'America/Barbados'),
(296, 52, 'Saint Andrew', 'America/Barbados'),
(297, 52, 'Saint George', 'America/Barbados'),
(298, 52, 'Saint James', 'America/Barbados'),
(299, 52, 'Saint John', 'America/Barbados'),
(300, 52, 'Saint Joseph', 'America/Barbados'),
(301, 52, 'Saint Lucy', 'America/Barbados'),
(302, 52, 'Saint Michael', 'America/Barbados'),
(303, 52, 'Saint Peter', 'America/Barbados'),
(304, 52, 'Saint Philip', 'America/Barbados'),
(305, 52, 'Saint Thomas', 'America/Barbados'),
(306, 56, 'Bruxelles-Capitale', 'Europe/Brussels'),
(307, 56, 'Flanders', 'Europe/Brussels'),
(308, 56, 'Wallonia', 'Europe/Brussels'),
(309, 60, 'Devonshire', 'Atlantic/Bermuda'),
(310, 60, 'Hamilton (parish)', 'Atlantic/Bermuda'),
(311, 60, 'Hamilton (city)', 'Atlantic/Bermuda'),
(312, 60, 'Paget', 'Atlantic/Bermuda'),
(313, 60, 'Pembroke', 'Atlantic/Bermuda'),
(314, 60, 'Saint Georgeʼs (parish)', 'Atlantic/Bermuda'),
(315, 60, 'Saint Georgeʼs (city)', 'Atlantic/Bermuda'),
(316, 60, 'Sandys', 'Atlantic/Bermuda'),
(317, 60, 'Smithʼs', 'Atlantic/Bermuda'),
(318, 60, 'Southampton', 'Atlantic/Bermuda'),
(319, 60, 'Warwick', 'Atlantic/Bermuda'),
(320, 64, 'Bumthang', 'Asia/Thimphu'),
(321, 64, 'Chhukha', 'Asia/Thimphu'),
(322, 64, 'Chirang', 'Asia/Thimphu'),
(323, 64, 'Daga', 'Asia/Thimphu'),
(324, 64, 'Geylegphug', 'Asia/Thimphu'),
(325, 64, 'Ha', 'Asia/Thimphu'),
(326, 64, 'Lhuntshi', 'Asia/Thimphu'),
(327, 64, 'Mongar', 'Asia/Thimphu'),
(328, 64, 'Paro District', 'Asia/Thimphu'),
(329, 64, 'Pemagatsel', 'Asia/Thimphu'),
(330, 64, 'Samchi', 'Asia/Thimphu'),
(331, 64, 'Samdrup Jongkhar District', 'Asia/Thimphu'),
(332, 64, 'Shemgang', 'Asia/Thimphu'),
(333, 64, 'Tashigang', 'Asia/Thimphu'),
(334, 64, 'Thimphu', 'Asia/Thimphu'),
(335, 64, 'Tongsa', 'Asia/Thimphu'),
(336, 64, 'Wangdi Phodrang', 'Asia/Thimphu'),
(337, 68, 'Chuquisaca', 'America/La_Paz'),
(338, 68, 'Cochabamba', 'America/La_Paz'),
(339, 68, 'El Beni', 'America/La_Paz'),
(340, 68, 'La Paz', 'America/La_Paz'),
(341, 68, 'Oruro', 'America/La_Paz'),
(342, 68, 'Pando', 'America/La_Paz'),
(343, 68, 'Potosí', 'America/La_Paz'),
(344, 68, 'Santa Cruz', 'America/La_Paz'),
(345, 68, 'Tarija', 'America/La_Paz'),
(346, 70, 'Federation of Bosnia and Herzegovina', 'Europe/Sarajevo'),
(347, 70, 'Republika Srpska', 'Europe/Sarajevo'),
(348, 70, 'Brčko', 'Europe/Sarajevo'),
(349, 72, 'Central', 'Africa/Gaborone'),
(350, 72, 'Chobe', 'Africa/Gaborone'),
(351, 72, 'Ghanzi', 'Africa/Gaborone'),
(352, 72, 'Kgalagadi', 'Africa/Gaborone'),
(353, 72, 'Kgatleng', 'Africa/Gaborone'),
(354, 72, 'Kweneng', 'Africa/Gaborone'),
(355, 72, 'Ngamiland', 'Africa/Gaborone'),
(356, 72, 'North East', 'Africa/Gaborone'),
(357, 72, 'South East', 'Africa/Gaborone'),
(358, 72, 'Southern', 'Africa/Gaborone'),
(359, 72, 'North West', 'Africa/Gaborone'),
(360, 76, 'Acre', 'America/Rio_Branco'),
(361, 76, 'Alagoas', 'America/Maceio'),
(362, 76, 'Amapá', 'America/Belem'),
(363, 76, 'Estado do Amazonas', 'America/Manaus'),
(364, 76, 'Bahia', 'America/Bahia'),
(365, 76, 'Ceará', 'America/Fortaleza'),
(366, 76, 'Distrito Federal', 'America/Sao_Paulo'),
(367, 76, 'Espírito Santo', 'America/Sao_Paulo'),
(368, 76, 'Fernando de Noronha', 'America/Recife'),
(369, 76, 'Goias', 'America/Sao_Paulo'),
(370, 76, 'Mato Grosso do Sul', 'America/Campo_Grande'),
(371, 76, 'Maranhão', 'America/Fortaleza'),
(372, 76, 'Mato Grosso', 'America/Cuiaba'),
(373, 76, 'Minas Gerais', 'America/Sao_Paulo'),
(374, 76, 'Pará', 'America/Belem'),
(375, 76, 'Paraíba', 'America/Fortaleza'),
(376, 76, 'Paraná', 'America/Sao_Paulo'),
(377, 76, 'Pernambuco', 'America/Noronha'),
(378, 76, 'Piauí', 'America/Fortaleza'),
(379, 76, 'State of Rio de Janeiro', 'America/Sao_Paulo'),
(380, 76, 'Rio Grande do Norte', 'America/Fortaleza'),
(381, 76, 'Rio Grande do Sul', 'America/Sao_Paulo'),
(382, 76, 'Rondônia', 'America/Porto_Velho'),
(383, 76, 'Roraima', 'America/Boa_Vista'),
(384, 76, 'Santa Catarina', 'America/Sao_Paulo'),
(385, 76, 'São Paulo', 'America/Sao_Paulo'),
(386, 76, 'Sergipe', 'America/Maceio'),
(387, 76, 'Estado de Goiás', 'America/Sao_Paulo'),
(388, 76, 'Pernambuco', 'America/Noronha'),
(389, 76, 'Tocantins', 'America/Araguaina'),
(390, 84, 'Belize', 'America/Belize'),
(391, 84, 'Cayo', 'America/Belize'),
(392, 84, 'Corozal', 'America/Belize'),
(393, 84, 'Orange Walk', 'America/Belize'),
(394, 84, 'Stann Creek', 'America/Belize'),
(395, 84, 'Toledo', 'America/Belize'),
(396, 86, 'British Indian Ocean Territory', 'Indian/Chagos'),
(397, 90, 'Malaita', 'Pacific/Guadalcanal'),
(398, 90, 'Western', 'Pacific/Guadalcanal'),
(399, 90, 'Central', 'Pacific/Guadalcanal'),
(400, 90, 'Guadalcanal', 'Pacific/Guadalcanal'),
(401, 90, 'Isabel', 'Pacific/Guadalcanal'),
(402, 90, 'Makira', 'Pacific/Guadalcanal'),
(403, 90, 'Temotu', 'Pacific/Guadalcanal'),
(404, 90, 'Central Province', 'Pacific/Guadalcanal'),
(405, 90, 'Choiseul', 'Pacific/Guadalcanal'),
(406, 90, 'Rennell and Bellona', 'Pacific/Guadalcanal'),
(407, 90, 'Rennell and Bellona', 'Pacific/Guadalcanal'),
(408, 92, 'British Virgin Islands', 'America/Tortola'),
(409, 96, 'Belait', 'Asia/Brunei'),
(410, 96, 'Brunei and Muara', 'Asia/Brunei'),
(411, 96, 'Temburong', 'Asia/Brunei'),
(412, 96, 'Tutong', 'Asia/Brunei'),
(413, 100, 'Burgas', 'Europe/Sofia'),
(414, 100, 'Grad', 'Europe/Sofia'),
(415, 100, 'Khaskovo', 'Europe/Sofia'),
(416, 100, 'Lovech', 'Europe/Sofia'),
(417, 100, 'Mikhaylovgrad', 'Europe/Sofia'),
(418, 100, 'Plovdiv', 'Europe/Sofia'),
(419, 100, 'Razgrad', 'Europe/Sofia'),
(420, 100, 'Sofiya', 'Europe/Sofia'),
(421, 100, 'Varna', 'Europe/Sofia'),
(422, 100, 'Blagoevgrad', 'Europe/Sofia'),
(423, 100, 'Burgas', 'Europe/Sofia'),
(424, 100, 'Dobrich', 'Europe/Sofia'),
(425, 100, 'Gabrovo', 'Europe/Sofia'),
(426, 100, 'Oblast Sofiya-Grad', 'Europe/Sofia'),
(427, 100, 'Khaskovo', 'Europe/Sofia'),
(428, 100, 'Kŭrdzhali', 'Europe/Sofia'),
(429, 100, 'Kyustendil', 'Europe/Sofia'),
(430, 100, 'Lovech', 'Europe/Sofia'),
(431, 100, 'Montana', 'Europe/Sofia'),
(432, 100, 'Pazardzhit', 'Europe/Sofia'),
(433, 100, 'Pernik', 'Europe/Sofia'),
(434, 100, 'Pleven', 'Europe/Sofia'),
(435, 100, 'Plovdiv', 'Europe/Sofia'),
(436, 100, 'Razgrad', 'Europe/Sofia'),
(437, 100, 'Ruse', 'Europe/Sofia'),
(438, 100, 'Shumen', 'Europe/Sofia'),
(439, 100, 'Silistra', 'Europe/Sofia'),
(440, 100, 'Sliven', 'Europe/Sofia'),
(441, 100, 'Smolyan', 'Europe/Sofia'),
(442, 100, 'Sofiya', 'Europe/Sofia'),
(443, 100, 'Stara Zagora', 'Europe/Sofia'),
(444, 100, 'Tŭrgovishte', 'Europe/Sofia'),
(445, 100, 'Varna', 'Europe/Sofia'),
(446, 100, 'Veliko Tŭrnovo', 'Europe/Sofia'),
(447, 100, 'Vidin', 'Europe/Sofia'),
(448, 100, 'Vratsa', 'Europe/Sofia'),
(449, 100, 'Yambol', 'Europe/Sofia'),
(450, 104, 'Rakhine State', 'Asia/Rangoon'),
(451, 104, 'Chin State', 'Asia/Rangoon'),
(452, 104, 'Ayeyarwady', 'Asia/Rangoon'),
(453, 104, 'Kachin State', 'Asia/Rangoon'),
(454, 104, 'Kayin State', 'Asia/Rangoon'),
(455, 104, 'Kayah State', 'Asia/Rangoon'),
(456, 104, 'Magwe', 'Asia/Rangoon'),
(457, 104, 'Mandalay', 'Asia/Rangoon'),
(458, 104, 'Pegu', 'Asia/Rangoon'),
(459, 104, 'Sagain', 'Asia/Rangoon'),
(460, 104, 'Shan State', 'Asia/Rangoon'),
(461, 104, 'Tanintharyi', 'Asia/Rangoon'),
(462, 104, 'Mon State', 'Asia/Rangoon'),
(463, 104, 'Rangoon', 'Asia/Rangoon'),
(464, 104, 'Magway', 'Asia/Rangoon'),
(465, 104, 'Bago', 'Asia/Rangoon'),
(466, 104, 'Yangon', 'Asia/Rangoon'),
(467, 108, 'Bujumbura', 'Africa/Bujumbura'),
(468, 108, 'Bubanza', 'Africa/Bujumbura'),
(469, 108, 'Bururi', 'Africa/Bujumbura'),
(470, 108, 'Cankuzo', 'Africa/Bujumbura'),
(471, 108, 'Cibitoke', 'Africa/Bujumbura'),
(472, 108, 'Gitega', 'Africa/Bujumbura'),
(473, 108, 'Karuzi', 'Africa/Bujumbura'),
(474, 108, 'Kayanza', 'Africa/Bujumbura'),
(475, 108, 'Kirundo', 'Africa/Bujumbura'),
(476, 108, 'Makamba', 'Africa/Bujumbura'),
(477, 108, 'Muyinga', 'Africa/Bujumbura'),
(478, 108, 'Ngozi', 'Africa/Bujumbura'),
(479, 108, 'Rutana', 'Africa/Bujumbura'),
(480, 108, 'Ruyigi', 'Africa/Bujumbura'),
(481, 108, 'Muramvya', 'Africa/Bujumbura'),
(482, 108, 'Mwaro', 'Africa/Bujumbura'),
(483, 112, 'Brestskaya Voblastsʼ', 'Europe/Minsk'),
(484, 112, 'Homyelʼskaya Voblastsʼ', 'Europe/Minsk'),
(485, 112, 'Hrodzyenskaya Voblastsʼ', 'Europe/Minsk'),
(486, 112, 'Mahilyowskaya Voblastsʼ', 'Europe/Minsk'),
(487, 112, 'Horad Minsk', 'Europe/Minsk'),
(488, 112, 'Minskaya Voblastsʼ', 'Europe/Minsk'),
(489, 112, 'Vitsyebskaya Voblastsʼ', 'Europe/Minsk'),
(490, 116, 'Krŏng Preăh Seihânŭ', 'Asia/Phnom_Penh'),
(491, 116, 'Kâmpóng Cham', 'Asia/Phnom_Penh'),
(492, 116, 'Kâmpóng Chhnăng', 'Asia/Phnom_Penh'),
(493, 116, 'Khétt Kâmpóng Spœ', 'Asia/Phnom_Penh'),
(494, 116, 'Kâmpóng Thum', 'Asia/Phnom_Penh'),
(495, 116, 'Kândal', 'Asia/Phnom_Penh'),
(496, 116, 'Kaôh Kŏng', 'Asia/Phnom_Penh'),
(497, 116, 'Krâchéh', 'Asia/Phnom_Penh'),
(498, 116, 'Môndól Kiri', 'Asia/Phnom_Penh'),
(499, 116, 'Phnum Penh', 'Asia/Phnom_Penh'),
(500, 116, 'Poŭthĭsăt', 'Asia/Phnom_Penh'),
(501, 116, 'Preăh Vihéar', 'Asia/Phnom_Penh'),
(502, 116, 'Prey Vêng', 'Asia/Phnom_Penh'),
(503, 116, 'Stœ̆ng Trêng', 'Asia/Phnom_Penh'),
(504, 116, 'Svay Riĕng', 'Asia/Phnom_Penh'),
(505, 116, 'Takêv', 'Asia/Phnom_Penh'),
(506, 116, 'Kâmpôt', 'Asia/Phnom_Penh'),
(507, 116, 'Phnum Pénh', 'Asia/Phnom_Penh'),
(508, 116, 'Rôtânăh Kiri', 'Asia/Phnom_Penh'),
(509, 116, 'Siĕm Réab', 'Asia/Phnom_Penh'),
(510, 116, 'Bantéay Méan Cheăy', 'Asia/Phnom_Penh'),
(511, 116, 'Kêb', 'Asia/Phnom_Penh'),
(512, 116, 'Ŏtdâr Méan Cheăy', 'Asia/Phnom_Penh'),
(513, 116, 'Preăh Seihânŭ', 'Asia/Phnom_Penh'),
(514, 116, 'Bătdâmbâng', 'Asia/Phnom_Penh'),
(515, 116, 'Palĭn', 'Asia/Phnom_Penh'),
(516, 120, 'Est', 'Africa/Douala'),
(517, 120, 'Littoral', 'Africa/Douala'),
(518, 120, 'North-West Province', 'Africa/Douala'),
(519, 120, 'Ouest', 'Africa/Douala'),
(520, 120, 'South-West Province', 'Africa/Douala'),
(521, 120, 'Adamaoua', 'Africa/Douala'),
(522, 120, 'Centre', 'Africa/Douala'),
(523, 120, 'Extreme-Nord', 'Africa/Douala'),
(524, 120, 'North Province', 'Africa/Douala'),
(525, 120, 'South Province', 'Africa/Douala'),
(526, 124, 'Alberta', 'America/Edmonton'),
(527, 124, 'British Columbia', 'America/Vancouver'),
(528, 124, 'Manitoba', 'America/Winnipeg'),
(529, 124, 'New Brunswick', 'America/Halifax'),
(530, 124, 'Newfoundland and Labrador', 'America/Goose_Bay'),
(531, 124, 'Nova Scotia', 'America/Halifax'),
(532, 124, 'Ontario', 'America/Toronto'),
(533, 124, 'Prince Edward Island', 'America/Halifax'),
(534, 124, 'Quebec', 'America/Montreal'),
(535, 124, 'Saskatchewan', 'America/Winnipeg'),
(536, 124, 'Yukon', 'America/Whitehorse'),
(537, 124, 'Northwest Territories', 'America/Yellowknife'),
(538, 124, 'Nunavut', 'America/Rankin_Inlet'),
(539, 132, 'Boa Vista', 'Atlantic/Cape_Verde'),
(540, 132, 'Brava', 'Atlantic/Cape_Verde'),
(541, 132, 'Maio', 'Atlantic/Cape_Verde'),
(542, 132, 'Paul', 'Atlantic/Cape_Verde'),
(543, 132, 'Praia', 'Atlantic/Cape_Verde'),
(544, 132, 'Ribeira Grande', 'Atlantic/Cape_Verde'),
(545, 132, 'Sal', 'Atlantic/Cape_Verde'),
(546, 132, 'Santa Catarina   ', 'Atlantic/Cape_Verde'),
(547, 132, 'São Nicolau', 'Atlantic/Cape_Verde'),
(548, 132, 'São Vicente', 'Atlantic/Cape_Verde'),
(549, 132, 'Tarrafal ', 'Atlantic/Cape_Verde'),
(550, 132, 'Mosteiros', 'Atlantic/Cape_Verde'),
(551, 132, 'Praia', 'Atlantic/Cape_Verde'),
(552, 132, 'Santa Catarina', 'Atlantic/Cape_Verde'),
(553, 132, 'Santa Cruz', 'Atlantic/Cape_Verde'),
(554, 132, 'São Domingos', 'Atlantic/Cape_Verde'),
(555, 132, 'São Filipe', 'Atlantic/Cape_Verde'),
(556, 132, 'São Miguel', 'Atlantic/Cape_Verde'),
(557, 132, 'Tarrafal', 'Atlantic/Cape_Verde'),
(558, 136, 'Creek', 'America/Cayman'),
(559, 136, 'Eastern', 'America/Cayman'),
(560, 136, 'Midland', 'America/Cayman'),
(561, 136, 'South Town', 'America/Cayman'),
(562, 136, 'Spot Bay', 'America/Cayman'),
(563, 136, 'Stake Bay', 'America/Cayman'),
(564, 136, 'West End', 'America/Cayman'),
(565, 136, 'Western', 'America/Cayman'),
(566, 140, 'Bamingui-Bangoran', 'Africa/Bangui'),
(567, 140, 'Basse-Kotto', 'Africa/Bangui'),
(568, 140, 'Haute-Kotto', 'Africa/Bangui'),
(569, 140, 'Mambéré-Kadéï', 'Africa/Bangui'),
(570, 140, 'Haut-Mbomou', 'Africa/Bangui'),
(571, 140, 'Kémo', 'Africa/Bangui'),
(572, 140, 'Lobaye', 'Africa/Bangui'),
(573, 140, 'Mbomou', 'Africa/Bangui'),
(574, 140, 'Nana-Mambéré', 'Africa/Bangui'),
(575, 140, 'Ouaka', 'Africa/Bangui'),
(576, 140, 'Ouham', 'Africa/Bangui'),
(577, 140, 'Ouham-Pendé', 'Africa/Bangui'),
(578, 140, 'Vakaga', 'Africa/Bangui'),
(579, 140, 'Nana-Grébizi', 'Africa/Bangui'),
(580, 140, 'Sangha-Mbaéré', 'Africa/Bangui'),
(581, 140, 'Ombella-Mpoko', 'Africa/Bangui'),
(582, 140, 'Bangui', 'Africa/Bangui'),
(583, 144, 'Central', 'Asia/Colombo'),
(584, 144, 'North Central', 'Asia/Colombo'),
(585, 144, 'North Eastern', 'Asia/Colombo'),
(586, 144, 'North Western', 'Asia/Colombo'),
(587, 144, 'Sabaragamuwa', 'Asia/Colombo'),
(588, 144, 'Southern', 'Asia/Colombo'),
(589, 144, 'Uva', 'Asia/Colombo'),
(590, 144, 'Western', 'Asia/Colombo'),
(591, 148, 'Batha', 'Africa/Ndjamena'),
(592, 148, 'Biltine', 'Africa/Ndjamena'),
(593, 148, 'Borkou-Ennedi-Tibesti', 'Africa/Ndjamena'),
(594, 148, 'Chari-Baguirmi', 'Africa/Ndjamena'),
(595, 148, 'Guéra', 'Africa/Ndjamena'),
(596, 148, 'Kanem', 'Africa/Ndjamena'),
(597, 148, 'Lac', 'Africa/Ndjamena'),
(598, 148, 'Logone Occidental', 'Africa/Ndjamena'),
(599, 148, 'Logone Oriental', 'Africa/Ndjamena'),
(600, 148, 'Mayo-Kébbi', 'Africa/Ndjamena'),
(601, 148, 'Moyen-Chari', 'Africa/Ndjamena'),
(602, 148, 'Ouaddaï', 'Africa/Ndjamena'),
(603, 148, 'Salamat', 'Africa/Ndjamena'),
(604, 148, 'Tandjilé', 'Africa/Ndjamena'),
(605, 152, 'Valparaíso', 'America/Santiago'),
(606, 152, 'Aisén del General Carlos Ibáñez del Campo', 'America/Santiago'),
(607, 152, 'Antofagasta', 'America/Santiago'),
(608, 152, 'Araucanía', 'America/Santiago'),
(609, 152, 'Atacama', 'America/Santiago'),
(610, 152, 'Bío-Bío', 'America/Santiago'),
(611, 152, 'Coquimbo', 'America/Santiago'),
(612, 152, 'Libertador General Bernardo OʼHiggins', 'America/Santiago'),
(613, 152, 'Los Lagos', 'America/Santiago'),
(614, 152, 'Magallanes y Antártica Chilena', 'America/Santiago'),
(615, 152, 'Maule', 'America/Santiago'),
(616, 152, 'Región Metropolitana', 'America/Santiago'),
(617, 152, 'Tarapaca', 'America/Santiago'),
(618, 152, 'Los Lagos', 'America/Santiago'),
(619, 152, 'Tarapacá', 'America/Santiago'),
(620, 152, 'Región de Arica y Parinacota', 'America/Santiago'),
(621, 152, 'Región de Los Ríos', 'America/Santiago'),
(622, 156, 'Anhui', 'Asia/Ho_Chi_Minh'),
(623, 156, 'Zhejiang', 'Asia/Ho_Chi_Minh'),
(624, 156, 'Jiangxi', 'Asia/Ho_Chi_Minh'),
(625, 156, 'Jiangsu', 'Asia/Ho_Chi_Minh'),
(626, 156, 'Jilin', 'Asia/Ho_Chi_Minh'),
(627, 156, 'Qinghai', 'Asia/Ho_Chi_Minh'),
(628, 156, 'Fujian', 'Asia/Ho_Chi_Minh'),
(629, 156, 'Heilongjiang', 'Asia/Ho_Chi_Minh'),
(630, 156, 'Henan', 'Asia/Ho_Chi_Minh'),
(631, 156, 'disputed', 'Asia/Ho_Chi_Minh'),
(632, 156, 'Hebei', 'Asia/Ho_Chi_Minh'),
(633, 156, 'Hunan Province', 'Asia/Ho_Chi_Minh'),
(634, 156, 'Hubei', 'Asia/Ho_Chi_Minh'),
(635, 156, 'Xinjiang', 'Asia/Ho_Chi_Minh'),
(636, 156, 'Xizang', 'Asia/Ho_Chi_Minh'),
(637, 156, 'Gansu', 'Asia/Ho_Chi_Minh'),
(638, 156, 'Guangxi', 'Asia/Ho_Chi_Minh'),
(639, 156, 'Guizhou', 'Asia/Ho_Chi_Minh'),
(640, 156, 'Liaoning Province', 'Asia/Ho_Chi_Minh'),
(641, 156, 'Inner Mongolia', 'Asia/Ho_Chi_Minh'),
(642, 156, 'Ningxia', 'Asia/Ho_Chi_Minh'),
(643, 156, 'Beijing', 'Asia/Ho_Chi_Minh'),
(644, 156, 'Shanghai', 'Asia/Ho_Chi_Minh'),
(645, 156, 'Shanxi', 'Asia/Ho_Chi_Minh'),
(646, 156, 'Shandong', 'Asia/Ho_Chi_Minh'),
(647, 156, 'Shaanxi', 'Asia/Ho_Chi_Minh'),
(648, 156, 'Tianjin', 'Asia/Ho_Chi_Minh'),
(649, 156, 'Yunnan Province', 'Asia/Ho_Chi_Minh'),
(650, 156, 'Guangdong', 'Asia/Ho_Chi_Minh'),
(651, 156, 'Hainan Province', 'Asia/Ho_Chi_Minh'),
(652, 156, 'Sichuan', 'Asia/Ho_Chi_Minh'),
(653, 156, 'Chongqing', 'Asia/Ho_Chi_Minh'),
(654, 156, 'PF99', 'Asia/Ho_Chi_Minh'),
(655, 158, 'Fukien', 'Asia/Taipei'),
(656, 158, 'Kaohsiung', 'Asia/Taipei'),
(657, 158, 'Taipei', 'Asia/Taipei'),
(658, 158, 'Taiwan', 'Asia/Taipei'),
(659, 162, 'Christmas Island', 'Indian/Christmas'),
(660, 166, 'Cocos (Keeling) Islands', 'Indian/Cocos'),
(661, 170, 'Amazonas', 'America/Bogota'),
(662, 170, 'Antioquia', 'America/Bogota'),
(663, 170, 'Arauca', 'America/Bogota'),
(664, 170, 'Atlántico', 'America/Bogota'),
(665, 170, 'Bolívar', 'America/Bogota'),
(666, 170, 'Boyacá', 'America/Bogota'),
(667, 170, 'Caldas', 'America/Bogota'),
(668, 170, 'Caquetá', 'America/Bogota'),
(669, 170, 'Cauca', 'America/Bogota'),
(670, 170, 'Cesar', 'America/Bogota'),
(671, 170, 'Chocó', 'America/Bogota'),
(672, 170, 'Córdoba', 'America/Bogota'),
(673, 170, 'Guaviare', 'America/Bogota'),
(674, 170, 'Guainía', 'America/Bogota'),
(675, 170, 'Huila', 'America/Bogota'),
(676, 170, 'La Guajira', 'America/Bogota'),
(677, 170, 'Magdalena', 'America/Bogota'),
(678, 170, 'Meta', 'America/Bogota'),
(679, 170, 'Nariño', 'America/Bogota'),
(680, 170, 'Norte de Santander', 'America/Bogota'),
(681, 170, 'Putumayo', 'America/Bogota'),
(682, 170, 'Quindío', 'America/Bogota'),
(683, 170, 'Risaralda', 'America/Bogota'),
(684, 170, 'Archipiélago de San Andrés, Providencia y San', 'America/Bogota'),
(685, 170, 'Santander', 'America/Bogota'),
(686, 170, 'Sucre', 'America/Bogota'),
(687, 170, 'Tolima', 'America/Bogota'),
(688, 170, 'Valle del Cauca', 'America/Bogota'),
(689, 170, 'Vaupés', 'America/Bogota'),
(690, 170, 'Vichada', 'America/Bogota'),
(691, 170, 'Casanare', 'America/Bogota'),
(692, 170, 'Cundinamarca', 'America/Bogota'),
(693, 170, 'Bogota D.C.', 'America/Bogota'),
(694, 170, 'Bolívar', 'America/Bogota'),
(695, 170, 'Boyacá', 'America/Bogota'),
(696, 170, 'Caldas', 'America/Bogota'),
(697, 170, 'Magdalena', 'America/Bogota'),
(698, 174, 'Anjouan', 'Indian/Comoro'),
(699, 174, 'Grande Comore', 'Indian/Comoro'),
(700, 174, 'Mohéli', 'Indian/Comoro'),
(701, 175, 'Mayotte', 'Indian/Mayotte'),
(702, 178, 'Bouenza', 'Africa/Brazzaville'),
(703, 178, 'CF03', 'Africa/Brazzaville'),
(704, 178, 'Kouilou', 'Africa/Brazzaville'),
(705, 178, 'Lékoumou', 'Africa/Brazzaville'),
(706, 178, 'Likouala', 'Africa/Brazzaville'),
(707, 178, 'Niari', 'Africa/Brazzaville'),
(708, 178, 'Plateaux', 'Africa/Brazzaville'),
(709, 178, 'Sangha', 'Africa/Brazzaville'),
(710, 178, 'Pool', 'Africa/Brazzaville'),
(711, 178, 'Brazzaville', 'Africa/Brazzaville'),
(712, 178, 'Cuvette', 'Africa/Brazzaville'),
(713, 178, 'Cuvette-Ouest', 'Africa/Brazzaville'),
(714, 178, 'Pointe-Noire', 'Africa/Brazzaville'),
(715, 180, 'Bandundu', 'Africa/Kinshasa'),
(716, 180, 'Équateur', 'Africa/Kinshasa'),
(717, 180, 'Kasaï-Occidental', 'Africa/Lubumbashi'),
(718, 180, 'Kasaï-Oriental', 'Africa/Lubumbashi'),
(719, 180, 'Katanga', 'Africa/Lubumbashi'),
(720, 180, 'Kinshasa', 'Africa/Kinshasa'),
(721, 180, 'Bas-Congo', 'Africa/Kinshasa'),
(722, 180, 'Orientale', 'Africa/Lubumbashi'),
(723, 180, 'Maniema', 'Africa/Lubumbashi'),
(724, 180, 'Nord-Kivu', 'Africa/Lubumbashi'),
(725, 180, 'Sud-Kivu', 'Africa/Lubumbashi'),
(726, 184, 'Cook Islands', 'Pacific/Rarotonga'),
(727, 188, 'Alajuela', 'America/Costa_Rica'),
(728, 188, 'Cartago', 'America/Costa_Rica'),
(729, 188, 'Guanacaste', 'America/Costa_Rica'),
(730, 188, 'Heredia', 'America/Costa_Rica'),
(731, 188, 'Limón', 'America/Costa_Rica'),
(732, 188, 'Puntarenas', 'America/Costa_Rica'),
(733, 188, 'San José', 'America/Costa_Rica'),
(734, 191, 'Bjelovarsko-Bilogorska', 'Europe/Zagreb'),
(735, 191, 'Brodsko-Posavska', 'Europe/Zagreb'),
(736, 191, 'Dubrovačko-Neretvanska', 'Europe/Zagreb'),
(737, 191, 'Istarska', 'Europe/Zagreb'),
(738, 191, 'Karlovačka', 'Europe/Zagreb'),
(739, 191, 'Koprivničko-Križevačka', 'Europe/Zagreb'),
(740, 191, 'Krapinsko-Zagorska', 'Europe/Zagreb'),
(741, 191, 'Ličko-Senjska', 'Europe/Zagreb'),
(742, 191, 'Međimurska', 'Europe/Zagreb'),
(743, 191, 'Osječko-Baranjska', 'Europe/Zagreb'),
(744, 191, 'Požeško-Slavonska', 'Europe/Zagreb'),
(745, 191, 'Primorsko-Goranska', 'Europe/Zagreb'),
(746, 191, 'Šibensko-Kniniska', 'Europe/Zagreb'),
(747, 191, 'Sisačko-Moslavačka', 'Europe/Zagreb'),
(748, 191, 'Splitsko-Dalmatinska', 'Europe/Zagreb'),
(749, 191, 'Varaždinska', 'Europe/Zagreb'),
(750, 191, 'Virovitičk-Podravska', 'Europe/Zagreb'),
(751, 191, 'Vukovarsko-Srijemska', 'Europe/Zagreb'),
(752, 191, 'Zadarska', 'Europe/Zagreb'),
(753, 191, 'Zagrebačka', 'Europe/Zagreb'),
(754, 191, 'Grad Zagreb', 'Europe/Zagreb'),
(755, 192, 'Pinar del Río', 'America/Havana'),
(756, 192, 'Ciudad de La Habana', 'America/Havana'),
(757, 192, 'Matanzas', 'America/Havana'),
(758, 192, 'Isla de la Juventud', 'America/Havana'),
(759, 192, 'Camagüey', 'America/Havana'),
(760, 192, 'Ciego de Ávila', 'America/Havana'),
(761, 192, 'Cienfuegos', 'America/Havana'),
(762, 192, 'Granma', 'America/Havana'),
(763, 192, 'Guantánamo', 'America/Havana'),
(764, 192, 'La Habana', 'America/Havana'),
(765, 192, 'Holguín', 'America/Havana'),
(766, 192, 'Las Tunas', 'America/Havana'),
(767, 192, 'Sancti Spíritus', 'America/Havana'),
(768, 192, 'Santiago de Cuba', 'America/Havana'),
(769, 192, 'Villa Clara', 'America/Havana'),
(770, 196, 'Famagusta', 'Asia/Nicosia'),
(771, 196, 'Kyrenia', 'Asia/Nicosia'),
(772, 196, 'Larnaca', 'Asia/Nicosia'),
(773, 196, 'Nicosia', 'Asia/Nicosia'),
(774, 196, 'Limassol', 'Asia/Nicosia'),
(775, 196, 'Paphos', 'Asia/Nicosia'),
(776, 203, 'Hradec Kralove', 'Europe/Prague'),
(777, 203, 'Jablonec nad Nisou', 'Europe/Prague'),
(778, 203, 'Jiein', 'Europe/Prague'),
(779, 203, 'Jihlava', 'Europe/Prague'),
(780, 203, 'Kolin', 'Europe/Prague'),
(781, 203, 'Liberec', 'Europe/Prague'),
(782, 203, 'Melnik', 'Europe/Prague'),
(783, 203, 'Mlada Boleslav', 'Europe/Prague'),
(784, 203, 'Nachod', 'Europe/Prague'),
(785, 203, 'Nymburk', 'Europe/Prague'),
(786, 203, 'Pardubice', 'Europe/Prague'),
(787, 203, 'Hlavní Mesto Praha', 'Europe/Prague'),
(788, 203, 'Semily', 'Europe/Prague'),
(789, 203, 'Trutnov', 'Europe/Prague'),
(790, 203, 'South Moravian Region', 'Europe/Prague'),
(791, 203, 'Jihočeský Kraj', 'Europe/Prague'),
(792, 203, 'Vysočina', 'Europe/Prague'),
(793, 203, 'Karlovarský Kraj', 'Europe/Prague'),
(794, 203, 'Královéhradecký Kraj', 'Europe/Prague'),
(795, 203, 'Liberecký Kraj', 'Europe/Prague'),
(796, 203, 'Olomoucký Kraj', 'Europe/Prague'),
(797, 203, 'Moravskoslezský Kraj', 'Europe/Prague'),
(798, 203, 'Pardubický Kraj', 'Europe/Prague'),
(799, 203, 'Plzeňský Kraj', 'Europe/Prague'),
(800, 203, 'Středočeský Kraj', 'Europe/Prague'),
(801, 203, 'Ústecký Kraj', 'Europe/Prague'),
(802, 203, 'Zlínský Kraj', 'Europe/Prague'),
(803, 204, 'Atakora', 'Africa/Porto-Novo'),
(804, 204, 'Atlantique', 'Africa/Porto-Novo'),
(805, 204, 'Alibori', 'Africa/Porto-Novo'),
(806, 204, 'Borgou', 'Africa/Porto-Novo'),
(807, 204, 'Collines', 'Africa/Porto-Novo'),
(808, 204, 'Kouffo', 'Africa/Porto-Novo'),
(809, 204, 'Donga', 'Africa/Porto-Novo'),
(810, 204, 'Littoral', 'Africa/Porto-Novo'),
(811, 204, 'Mono', 'Africa/Porto-Novo'),
(812, 204, 'Ouémé', 'Africa/Porto-Novo'),
(813, 204, 'Plateau', 'Africa/Porto-Novo'),
(814, 204, 'Zou', 'Africa/Porto-Novo'),
(815, 208, 'Århus', 'Europe/Copenhagen'),
(816, 208, 'Bornholm', 'Europe/Copenhagen'),
(817, 208, 'Frederiksborg', 'Europe/Copenhagen'),
(818, 208, 'Fyn', 'Europe/Copenhagen'),
(819, 208, 'Copenhagen city', 'Europe/Copenhagen'),
(820, 208, 'København', 'Europe/Copenhagen'),
(821, 208, 'Nordjylland', 'Europe/Copenhagen'),
(822, 208, 'Ribe', 'Europe/Copenhagen'),
(823, 208, 'Ringkøbing', 'Europe/Copenhagen'),
(824, 208, 'Roskilde', 'Europe/Copenhagen'),
(825, 208, 'Sønderjylland', 'Europe/Copenhagen'),
(826, 208, 'Storstrøm', 'Europe/Copenhagen'),
(827, 208, 'Vejle', 'Europe/Copenhagen'),
(828, 208, 'Vestsjælland', 'Europe/Copenhagen'),
(829, 208, 'Viborg', 'Europe/Copenhagen'),
(830, 208, 'Fredriksberg', 'Europe/Copenhagen'),
(831, 208, 'Capital Region', 'Europe/Copenhagen'),
(832, 208, 'Central Jutland', 'Europe/Copenhagen'),
(833, 208, 'North Jutland', 'Europe/Copenhagen'),
(834, 208, 'Region Zealand', 'Europe/Copenhagen'),
(835, 208, 'Region South Denmark', 'Europe/Copenhagen'),
(836, 212, 'Saint Andrew', 'America/Dominica'),
(837, 212, 'Saint David', 'America/Dominica'),
(838, 212, 'Saint George', 'America/Dominica'),
(839, 212, 'Saint John', 'America/Dominica'),
(840, 212, 'Saint Joseph', 'America/Dominica'),
(841, 212, 'Saint Luke', 'America/Dominica'),
(842, 212, 'Saint Mark', 'America/Dominica'),
(843, 212, 'Saint Patrick', 'America/Dominica'),
(844, 212, 'Saint Paul', 'America/Dominica'),
(845, 212, 'Saint Peter', 'America/Dominica'),
(846, 214, 'Azua', 'America/Santo_Domingo'),
(847, 214, 'Baoruco', 'America/Santo_Domingo'),
(848, 214, 'Barahona', 'America/Santo_Domingo'),
(849, 214, 'Dajabón', 'America/Santo_Domingo'),
(850, 214, 'Duarte', 'America/Santo_Domingo'),
(851, 214, 'Espaillat', 'America/Santo_Domingo'),
(852, 214, 'Independencia', 'America/Santo_Domingo'),
(853, 214, 'La Altagracia', 'America/Santo_Domingo'),
(854, 214, 'Elías Piña', 'America/Santo_Domingo'),
(855, 214, 'La Romana', 'America/Santo_Domingo'),
(856, 214, 'María Trinidad Sánchez', 'America/Santo_Domingo'),
(857, 214, 'Monte Cristi', 'America/Santo_Domingo'),
(858, 214, 'Pedernales', 'America/Santo_Domingo'),
(859, 214, 'Puerto Plata', 'America/Santo_Domingo'),
(860, 214, 'Salcedo', 'America/Santo_Domingo'),
(861, 214, 'Samaná', 'America/Santo_Domingo'),
(862, 214, 'Sánchez Ramírez', 'America/Santo_Domingo'),
(863, 214, 'San Juan', 'America/Santo_Domingo'),
(864, 214, 'San Pedro de Macorís', 'America/Santo_Domingo'),
(865, 214, 'Santiago', 'America/Santo_Domingo'),
(866, 214, 'Santiago Rodríguez', 'America/Santo_Domingo'),
(867, 214, 'Valverde', 'America/Santo_Domingo'),
(868, 214, 'El Seíbo', 'America/Santo_Domingo'),
(869, 214, 'Hato Mayor', 'America/Santo_Domingo'),
(870, 214, 'La Vega', 'America/Santo_Domingo'),
(871, 214, 'Monseñor Nouel', 'America/Santo_Domingo'),
(872, 214, 'Monte Plata', 'America/Santo_Domingo'),
(873, 214, 'San Cristóbal', 'America/Santo_Domingo'),
(874, 214, 'Distrito Nacional', 'America/Santo_Domingo'),
(875, 214, 'Peravia', 'America/Santo_Domingo'),
(876, 214, 'San José de Ocoa', 'America/Santo_Domingo'),
(877, 214, 'Santo Domingo', 'America/Santo_Domingo'),
(878, 218, 'Galápagos', 'Pacific/Galapagos'),
(879, 218, 'Azuay', 'America/Guayaquil'),
(880, 218, 'Bolívar', 'America/Guayaquil'),
(881, 218, 'Cañar', 'America/Guayaquil'),
(882, 218, 'Carchi', 'America/Guayaquil'),
(883, 218, 'Chimborazo', 'America/Guayaquil'),
(884, 218, 'Cotopaxi', 'America/Guayaquil'),
(885, 218, 'El Oro', 'America/Guayaquil'),
(886, 218, 'Esmeraldas', 'America/Guayaquil'),
(887, 218, 'Guayas', 'America/Guayaquil'),
(888, 218, 'Imbabura', 'America/Guayaquil'),
(889, 218, 'Loja', 'America/Guayaquil'),
(890, 218, 'Los Ríos', 'America/Guayaquil'),
(891, 218, 'Manabí', 'America/Guayaquil'),
(892, 218, 'Morona-Santiago', 'America/Guayaquil'),
(893, 218, 'Napo', 'America/Guayaquil'),
(894, 218, 'Pastaza', 'America/Guayaquil'),
(895, 218, 'Pichincha', 'America/Guayaquil'),
(896, 218, 'Tungurahua', 'America/Guayaquil'),
(897, 218, 'Zamora-Chinchipe', 'America/Guayaquil'),
(898, 218, 'Sucumbios', 'America/Guayaquil'),
(899, 218, 'Napo', 'America/Guayaquil'),
(900, 218, 'Orellana', 'America/Guayaquil'),
(901, 218, 'Provincia de Santa Elena', 'America/Guayaquil'),
(902, 218, 'Provincia de Santo Domingo de los Tsáchilas', 'America/Guayaquil'),
(903, 222, 'Ahuachapán', 'America/El_Salvador'),
(904, 222, 'Cabañas', 'America/El_Salvador'),
(905, 222, 'Chalatenango', 'America/El_Salvador'),
(906, 222, 'Cuscatlán', 'America/El_Salvador'),
(907, 222, 'La Libertad', 'America/El_Salvador'),
(908, 222, 'La Paz', 'America/El_Salvador'),
(909, 222, 'La Unión', 'America/El_Salvador'),
(910, 222, 'Morazán', 'America/El_Salvador'),
(911, 222, 'San Miguel', 'America/El_Salvador'),
(912, 222, 'San Salvador', 'America/El_Salvador'),
(913, 222, 'Santa Ana', 'America/El_Salvador'),
(914, 222, 'San Vicente', 'America/El_Salvador'),
(915, 222, 'Sonsonate', 'America/El_Salvador'),
(916, 222, 'Usulután', 'America/El_Salvador'),
(917, 226, 'Annobón', 'Africa/Malabo'),
(918, 226, 'Bioko Norte', 'Africa/Malabo'),
(919, 226, 'Bioko Sur', 'Africa/Malabo'),
(920, 226, 'Centro Sur', 'Africa/Malabo'),
(921, 226, 'Kié-Ntem', 'Africa/Malabo'),
(922, 226, 'Litoral', 'Africa/Malabo'),
(923, 226, 'Wele-Nzas', 'Africa/Malabo'),
(924, 231, 'Arsi', 'Africa/Addis_Ababa'),
(925, 231, 'Gonder', 'Africa/Addis_Ababa'),
(926, 231, 'Bale', 'Africa/Addis_Ababa'),
(927, 231, 'Eritrea', 'Africa/Addis_Ababa'),
(928, 231, 'Gamo Gofa', 'Africa/Addis_Ababa'),
(929, 231, 'Gojam', 'Africa/Addis_Ababa'),
(930, 231, 'Harerge', 'Africa/Addis_Ababa'),
(931, 231, 'Ilubabor', 'Africa/Addis_Ababa'),
(932, 231, 'Kefa', 'Africa/Addis_Ababa'),
(933, 231, 'Addis Abeba', 'Africa/Addis_Ababa'),
(934, 231, 'Sidamo', 'Africa/Addis_Ababa'),
(935, 231, 'Tigray', 'Africa/Addis_Ababa'),
(936, 231, 'Welega Kifle Hager', 'Africa/Addis_Ababa'),
(937, 231, 'Welo', 'Africa/Addis_Ababa'),
(938, 231, 'Adis Abeba', 'Africa/Addis_Ababa'),
(939, 231, 'Asosa', 'Africa/Addis_Ababa'),
(940, 231, 'Borena ', 'Africa/Addis_Ababa'),
(941, 231, 'Debub Gonder', 'Africa/Addis_Ababa'),
(942, 231, 'Debub Shewa', 'Africa/Addis_Ababa'),
(943, 231, 'Debub Welo', 'Africa/Addis_Ababa'),
(944, 231, 'Dire Dawa', 'Africa/Addis_Ababa'),
(945, 231, 'Gambela', 'Africa/Addis_Ababa'),
(946, 231, 'Metekel', 'Africa/Addis_Ababa'),
(947, 231, 'Mirab Gojam', 'Africa/Addis_Ababa'),
(948, 231, 'Mirab Harerge', 'Africa/Addis_Ababa'),
(949, 231, 'Mirab Shewa', 'Africa/Addis_Ababa'),
(950, 231, 'Misrak Gojam', 'Africa/Addis_Ababa'),
(951, 231, 'Misrak Harerge', 'Africa/Addis_Ababa'),
(952, 231, 'Nazret', 'Africa/Addis_Ababa'),
(953, 231, 'Ogaden', 'Africa/Addis_Ababa'),
(954, 231, 'Omo', 'Africa/Addis_Ababa'),
(955, 231, 'Semen Gonder', 'Africa/Addis_Ababa'),
(956, 231, 'Semen Shewa', 'Africa/Addis_Ababa'),
(957, 231, 'Semen Welo', 'Africa/Addis_Ababa'),
(958, 231, 'Tigray', 'Africa/Addis_Ababa'),
(959, 231, 'Bale', 'Africa/Addis_Ababa'),
(960, 231, 'Gamo Gofa', 'Africa/Addis_Ababa'),
(961, 231, 'Ilubabor', 'Africa/Addis_Ababa'),
(962, 231, 'Kefa', 'Africa/Addis_Ababa'),
(963, 231, 'Sidamo', 'Africa/Addis_Ababa'),
(964, 231, 'Welega', 'Africa/Addis_Ababa'),
(965, 231, 'Ādīs Ābeba', 'Africa/Addis_Ababa'),
(966, 231, 'Āfar', 'Africa/Addis_Ababa'),
(967, 231, 'Āmara', 'Africa/Addis_Ababa'),
(968, 231, 'Bīnshangul Gumuz', 'Africa/Addis_Ababa'),
(969, 231, 'Dirē Dawa', 'Africa/Addis_Ababa'),
(970, 231, 'Gambēla Hizboch', 'Africa/Addis_Ababa'),
(971, 231, 'Hārerī Hizb', 'Africa/Addis_Ababa'),
(972, 231, 'Oromīya', 'Africa/Addis_Ababa'),
(973, 231, 'Sumalē', 'Africa/Addis_Ababa'),
(974, 231, 'Tigray', 'Africa/Addis_Ababa'),
(975, 231, 'YeDebub Bihēroch Bihēreseboch na Hizboch', 'Africa/Addis_Ababa'),
(976, 232, 'Ānseba', 'Africa/Asmara'),
(977, 232, 'Debub', 'Africa/Asmara'),
(978, 232, 'Debubawī Kʼeyih Bahrī', 'Africa/Asmara'),
(979, 232, 'Gash Barka', 'Africa/Asmara'),
(980, 232, 'Maʼākel', 'Africa/Asmara'),
(981, 232, 'Semēnawī Kʼeyih Bahrī', 'Africa/Asmara'),
(982, 233, 'Harjumaa', 'Europe/Tallinn'),
(983, 233, 'Hiiumaa', 'Europe/Tallinn'),
(984, 233, 'Ida-Virumaa', 'Europe/Tallinn'),
(985, 233, 'Järvamaa', 'Europe/Tallinn'),
(986, 233, 'Jõgevamaa', 'Europe/Tallinn'),
(987, 233, 'Läänemaa', 'Europe/Tallinn'),
(988, 233, 'Lääne-Virumaa', 'Europe/Tallinn'),
(989, 233, 'Pärnumaa', 'Europe/Tallinn'),
(990, 233, 'Põlvamaa', 'Europe/Tallinn'),
(991, 233, 'Raplamaa', 'Europe/Tallinn'),
(992, 233, 'Saaremaa', 'Europe/Tallinn'),
(993, 233, 'Tartumaa', 'Europe/Tallinn'),
(994, 233, 'Valgamaa', 'Europe/Tallinn'),
(995, 233, 'Viljandimaa', 'Europe/Tallinn'),
(996, 233, 'Võrumaa', 'Europe/Tallinn'),
(997, 234, 'Norðoyar region', 'Atlantic/Faroe'),
(998, 234, 'Eysturoy region', 'Atlantic/Faroe'),
(999, 234, 'Sandoy region', 'Atlantic/Faroe'),
(1000, 234, 'Streymoy region', 'Atlantic/Faroe'),
(1001, 234, 'Suðuroy region', 'Atlantic/Faroe'),
(1002, 234, 'Vágar region', 'Atlantic/Faroe'),
(1003, 238, 'Falkland Islands (Islas Malvinas)', 'Atlantic/Stanley'),
(1004, 239, 'South Georgia and The South Sandwich Islands ', 'Atlantic/South_Georgia'),
(1005, 242, 'Central', 'Pacific/Fiji'),
(1006, 242, 'Eastern', 'Pacific/Fiji'),
(1007, 242, 'Northern', 'Pacific/Fiji'),
(1008, 242, 'Rotuma', 'Pacific/Fiji'),
(1009, 242, 'Western', 'Pacific/Fiji'),
(1010, 246, 'Åland', 'Europe/Helsinki'),
(1011, 246, 'Hame', 'Europe/Helsinki'),
(1012, 246, 'Keski-Suomi', 'Europe/Helsinki'),
(1013, 246, 'Kuopio', 'Europe/Helsinki'),
(1014, 246, 'Kymi', 'Europe/Helsinki'),
(1015, 246, 'Lapponia', 'Europe/Helsinki'),
(1016, 246, 'Mikkeli', 'Europe/Helsinki'),
(1017, 246, 'Oulu', 'Europe/Helsinki'),
(1018, 246, 'Pohjois-Karjala', 'Europe/Helsinki'),
(1019, 246, 'Turku ja Pori', 'Europe/Helsinki'),
(1020, 246, 'Uusimaa', 'Europe/Helsinki'),
(1021, 246, 'Vaasa', 'Europe/Helsinki'),
(1022, 246, 'Southern Finland', 'Europe/Helsinki'),
(1023, 246, 'Eastern Finland', 'Europe/Helsinki'),
(1024, 246, 'Western Finland', 'Europe/Helsinki'),
(1025, 250, 'Aquitaine', 'Europe/Paris'),
(1026, 250, 'Auvergne', 'Europe/Paris'),
(1027, 250, 'Basse-Normandie', 'Europe/Paris'),
(1028, 250, 'Bourgogne', 'Europe/Paris'),
(1029, 250, 'Brittany', 'Europe/Paris'),
(1030, 250, 'Centre', 'Europe/Paris'),
(1031, 250, 'Champagne-Ardenne', 'Europe/Paris'),
(1032, 250, 'Corsica', 'Europe/Paris'),
(1033, 250, 'Franche-Comté', 'Europe/Paris'),
(1034, 250, 'Haute-Normandie', 'Europe/Paris'),
(1035, 250, 'Île-de-France', 'Europe/Paris'),
(1036, 250, 'Languedoc-Roussillon', 'Europe/Paris'),
(1037, 250, 'Limousin', 'Europe/Paris'),
(1038, 250, 'Lorraine', 'Europe/Paris'),
(1039, 250, 'Midi-Pyrénées', 'Europe/Paris'),
(1040, 250, 'Nord-Pas-de-Calais', 'Europe/Paris'),
(1041, 250, 'Pays de la Loire', 'Europe/Paris'),
(1042, 250, 'Picardie', 'Europe/Paris'),
(1043, 250, 'Poitou-Charentes', 'Europe/Paris'),
(1044, 250, 'Provence-Alpes-Côte dʼAzur', 'Europe/Paris'),
(1045, 250, 'Rhône-Alpes', 'Europe/Paris'),
(1046, 250, 'Alsace', 'Europe/Paris'),
(1047, 254, 'Guyane', 'America/Guyana'),
(1048, 260, 'Saint-Paul-et-Amsterdam', 'Indian/Kerguelen'),
(1049, 260, 'Crozet', 'Indian/Kerguelen'),
(1050, 260, 'Kerguelen', 'Indian/Kerguelen'),
(1051, 260, 'Terre Adélie', 'Indian/Kerguelen'),
(1052, 260, 'Îles Éparses', 'Indian/Kerguelen'),
(1053, 262, 'Ali Sabieh', 'Africa/Djibouti'),
(1054, 262, 'Dikhil   ', 'Africa/Djibouti'),
(1055, 262, 'Djibouti  ', 'Africa/Djibouti'),
(1056, 262, 'Obock', 'Africa/Djibouti'),
(1057, 262, 'Tadjourah', 'Africa/Djibouti'),
(1058, 262, 'Dikhil', 'Africa/Djibouti'),
(1059, 262, 'Djibouti', 'Africa/Djibouti'),
(1060, 262, 'Arta', 'Africa/Djibouti'),
(1061, 266, 'Estuaire', 'Africa/Libreville'),
(1062, 266, 'Haut-Ogooué', 'Africa/Libreville'),
(1063, 266, 'Moyen-Ogooué', 'Africa/Libreville'),
(1064, 266, 'Ngounié', 'Africa/Libreville'),
(1065, 266, 'Nyanga', 'Africa/Libreville'),
(1066, 266, 'Ogooué-Ivindo', 'Africa/Libreville'),
(1067, 266, 'Ogooué-Lolo', 'Africa/Libreville'),
(1068, 266, 'Ogooué-Maritime', 'Africa/Libreville'),
(1069, 266, 'Woleu-Ntem', 'Africa/Libreville'),
(1070, 268, 'Ajaria', 'Asia/Tbilisi'),
(1071, 268, 'Tʼbilisi', 'Asia/Tbilisi'),
(1072, 268, 'Abkhazia', 'Asia/Tbilisi'),
(1073, 268, 'Kvemo Kartli', 'Asia/Tbilisi'),
(1074, 268, 'Kakheti', 'Asia/Tbilisi'),
(1075, 268, 'Guria', 'Asia/Tbilisi'),
(1076, 268, 'Imereti', 'Asia/Tbilisi'),
(1077, 268, 'Shida Kartli', 'Asia/Tbilisi'),
(1078, 268, 'Mtskheta-Mtianeti', 'Asia/Tbilisi'),
(1079, 268, 'Racha-Lechkhumi and Kvemo Svaneti', 'Asia/Tbilisi'),
(1080, 268, 'Samegrelo and Zemo Svaneti', 'Asia/Tbilisi'),
(1081, 268, 'Samtskhe-Javakheti', 'Asia/Tbilisi'),
(1082, 270, 'Banjul', 'Africa/Banjul'),
(1083, 270, 'Lower River', 'Africa/Banjul'),
(1084, 270, 'Central River', 'Africa/Banjul'),
(1085, 270, 'Upper River', 'Africa/Banjul'),
(1086, 270, 'Western', 'Africa/Banjul'),
(1087, 270, 'North Bank', 'Africa/Banjul'),
(1088, 275, 'Gaza Strip', 'Asia/Gaza'),
(1089, 275, 'West Bank', 'Asia/Gaza'),
(1090, 276, 'Baden-Württemberg', 'Europe/Berlin'),
(1091, 276, 'Bavaria', 'Europe/Berlin'),
(1092, 276, 'Bremen', 'Europe/Berlin'),
(1093, 276, 'Hamburg', 'Europe/Berlin'),
(1094, 276, 'Hesse', 'Europe/Berlin'),
(1095, 276, 'Lower Saxony', 'Europe/Berlin'),
(1096, 276, 'North Rhine-Westphalia', 'Europe/Berlin'),
(1097, 276, 'Rhineland-Palatinate', 'Europe/Berlin'),
(1098, 276, 'Saarland', 'Europe/Berlin'),
(1099, 276, 'Schleswig-Holstein', 'Europe/Berlin'),
(1100, 276, 'Brandenburg', 'Europe/Berlin'),
(1101, 276, 'Mecklenburg-Vorpommern', 'Europe/Berlin'),
(1102, 276, 'Saxony', 'Europe/Berlin'),
(1103, 276, 'Saxony-Anhalt', 'Europe/Berlin'),
(1104, 276, 'Thuringia', 'Europe/Berlin'),
(1105, 276, 'Berlin', 'Europe/Berlin'),
(1106, 288, 'Greater Accra', 'Africa/Accra'),
(1107, 288, 'Ashanti', 'Africa/Accra'),
(1108, 288, 'Brong-Ahafo Region', 'Africa/Accra'),
(1109, 288, 'Central', 'Africa/Accra'),
(1110, 288, 'Eastern', 'Africa/Accra'),
(1111, 288, 'Northern', 'Africa/Accra'),
(1112, 288, 'Volta', 'Africa/Accra'),
(1113, 288, 'Western', 'Africa/Accra'),
(1114, 288, 'Upper East', 'Africa/Accra'),
(1115, 288, 'Upper West', 'Africa/Accra'),
(1116, 292, 'Gibraltar', 'Europe/Gibraltar'),
(1117, 296, 'Line Islands', 'Pacific/Kiritimati'),
(1118, 296, 'Gilbert Islands', 'Pacific/Tarawa'),
(1119, 296, 'Phoenix Islands', 'Pacific/Enderbury'),
(1120, 300, 'Mount Athos', 'Europe/Athens'),
(1121, 300, 'East Macedonia and Thrace', 'Europe/Athens'),
(1122, 300, 'Central Macedonia', 'Europe/Athens'),
(1123, 300, 'West Macedonia', 'Europe/Athens'),
(1124, 300, 'Thessaly', 'Europe/Athens'),
(1125, 300, 'Epirus', 'Europe/Athens'),
(1126, 300, 'Ionian Islands', 'Europe/Athens'),
(1127, 300, 'West Greece', 'Europe/Athens'),
(1128, 300, 'Central Greece', 'Europe/Athens'),
(1129, 300, 'Peloponnese', 'Europe/Athens'),
(1130, 300, 'Attica', 'Europe/Athens'),
(1131, 300, 'North Aegean', 'Europe/Athens'),
(1132, 300, 'South Aegean', 'Europe/Athens'),
(1133, 300, 'Crete', 'Europe/Athens'),
(1134, 304, 'Nordgrønland', 'America/Godthab'),
(1135, 304, 'Østgrønland', 'America/Godthab'),
(1136, 304, 'Vestgrønland', 'America/Godthab'),
(1137, 308, 'Saint Andrew', 'America/Grenada'),
(1138, 308, 'Saint David', 'America/Grenada'),
(1139, 308, 'Saint George', 'America/Grenada'),
(1140, 308, 'Saint John', 'America/Grenada'),
(1141, 308, 'Saint Mark', 'America/Grenada'),
(1142, 308, 'Saint Patrick', 'America/Grenada'),
(1143, 312, 'Guadeloupe', 'America/Guadeloupe'),
(1144, 316, 'Guam', 'Pacific/Guam'),
(1145, 320, 'Alta Verapaz', 'America/Guatemala'),
(1146, 320, 'Baja Verapaz', 'America/Guatemala'),
(1147, 320, 'Chimaltenango', 'America/Guatemala'),
(1148, 320, 'Chiquimula', 'America/Guatemala'),
(1149, 320, 'El Progreso', 'America/Guatemala'),
(1150, 320, 'Escuintla', 'America/Guatemala'),
(1151, 320, 'Guatemala', 'America/Guatemala'),
(1152, 320, 'Huehuetenango', 'America/Guatemala'),
(1153, 320, 'Izabal', 'America/Guatemala'),
(1154, 320, 'Jalapa', 'America/Guatemala'),
(1155, 320, 'Jutiapa', 'America/Guatemala'),
(1156, 320, 'Petén', 'America/Guatemala'),
(1157, 320, 'Quetzaltenango', 'America/Guatemala'),
(1158, 320, 'Quiché', 'America/Guatemala'),
(1159, 320, 'Retalhuleu', 'America/Guatemala'),
(1160, 320, 'Sacatepéquez', 'America/Guatemala'),
(1161, 320, 'San Marcos', 'America/Guatemala'),
(1162, 320, 'Santa Rosa', 'America/Guatemala'),
(1163, 320, 'Sololá', 'America/Guatemala'),
(1164, 320, 'Suchitepéquez', 'America/Guatemala'),
(1165, 320, 'Totonicapán', 'America/Guatemala'),
(1166, 320, 'Zacapa', 'America/Guatemala'),
(1167, 324, 'Beyla', 'Africa/Conakry'),
(1168, 324, 'Boffa', 'Africa/Conakry'),
(1169, 324, 'Boké', 'Africa/Conakry'),
(1170, 324, 'Conakry', 'Africa/Conakry'),
(1171, 324, 'Dabola', 'Africa/Conakry'),
(1172, 324, 'Dalaba', 'Africa/Conakry');
INSERT INTO `country_region` (`id`, `country_id`, `name`, `timezone`) VALUES
(1173, 324, 'Dinguiraye', 'Africa/Conakry'),
(1174, 324, 'Faranah', 'Africa/Conakry'),
(1175, 324, 'Forécariah', 'Africa/Conakry'),
(1176, 324, 'Fria', 'Africa/Conakry'),
(1177, 324, 'Gaoual', 'Africa/Conakry'),
(1178, 324, 'Guéckédou', 'Africa/Conakry'),
(1179, 324, 'Kankan', 'Africa/Conakry'),
(1180, 324, 'Kérouané', 'Africa/Conakry'),
(1181, 324, 'Kindia', 'Africa/Conakry'),
(1182, 324, 'Kissidougou', 'Africa/Conakry'),
(1183, 324, 'Koundara', 'Africa/Conakry'),
(1184, 324, 'Kouroussa', 'Africa/Conakry'),
(1185, 324, 'Macenta', 'Africa/Conakry'),
(1186, 324, 'Mali', 'Africa/Conakry'),
(1187, 324, 'Mamou', 'Africa/Conakry'),
(1188, 324, 'Pita', 'Africa/Conakry'),
(1189, 324, 'Siguiri', 'Africa/Conakry'),
(1190, 324, 'Télimélé', 'Africa/Conakry'),
(1191, 324, 'Tougué', 'Africa/Conakry'),
(1192, 324, 'Yomou', 'Africa/Conakry'),
(1193, 324, 'Coyah', 'Africa/Conakry'),
(1194, 324, 'Dubréka', 'Africa/Conakry'),
(1195, 324, 'Kankan', 'Africa/Conakry'),
(1196, 324, 'Koubia', 'Africa/Conakry'),
(1197, 324, 'Labé', 'Africa/Conakry'),
(1198, 324, 'Lélouma', 'Africa/Conakry'),
(1199, 324, 'Lola', 'Africa/Conakry'),
(1200, 324, 'Mandiana', 'Africa/Conakry'),
(1201, 324, 'Nzérékoré', 'Africa/Conakry'),
(1202, 324, 'Siguiri', 'Africa/Conakry'),
(1203, 328, 'Barima-Waini', 'America/Guyana'),
(1204, 328, 'Cuyuni-Mazaruni', 'America/Guyana'),
(1205, 328, 'Demerara-Mahaica', 'America/Guyana'),
(1206, 328, 'East Berbice-Corentyne', 'America/Guyana'),
(1207, 328, 'Essequibo Islands-West Demerara', 'America/Guyana'),
(1208, 328, 'Mahaica-Berbice', 'America/Guyana'),
(1209, 328, 'Pomeroon-Supenaam', 'America/Guyana'),
(1210, 328, 'Potaro-Siparuni', 'America/Guyana'),
(1211, 328, 'Upper Demerara-Berbice', 'America/Guyana'),
(1212, 328, 'Upper Takutu-Upper Essequibo', 'America/Guyana'),
(1213, 332, 'Nord-Ouest', 'America/Port-au-Prince'),
(1214, 332, 'Artibonite', 'America/Port-au-Prince'),
(1215, 332, 'Centre', 'America/Port-au-Prince'),
(1216, 332, 'Nord', 'America/Port-au-Prince'),
(1217, 332, 'Nord-Est', 'America/Port-au-Prince'),
(1218, 332, 'Ouest', 'America/Port-au-Prince'),
(1219, 332, 'Sud', 'America/Port-au-Prince'),
(1220, 332, 'Sud-Est', 'America/Port-au-Prince'),
(1221, 332, 'GrandʼAnse', 'America/Port-au-Prince'),
(1222, 332, 'Nippes', 'America/Port-au-Prince'),
(1223, 336, 'Vatican City', 'Europe/Vatican'),
(1224, 340, 'Atlántida', 'America/Tegucigalpa'),
(1225, 340, 'Choluteca', 'America/Tegucigalpa'),
(1226, 340, 'Colón', 'America/Tegucigalpa'),
(1227, 340, 'Comayagua', 'America/Tegucigalpa'),
(1228, 340, 'Copán', 'America/Tegucigalpa'),
(1229, 340, 'Cortés', 'America/Tegucigalpa'),
(1230, 340, 'El Paraíso', 'America/Tegucigalpa'),
(1231, 340, 'Francisco Morazán', 'America/Tegucigalpa'),
(1232, 340, 'Gracias a Dios', 'America/Tegucigalpa'),
(1233, 340, 'Intibucá', 'America/Tegucigalpa'),
(1234, 340, 'Islas de la Bahía', 'America/Tegucigalpa'),
(1235, 340, 'La Paz', 'America/Tegucigalpa'),
(1236, 340, 'Lempira', 'America/Tegucigalpa'),
(1237, 340, 'Ocotepeque', 'America/Tegucigalpa'),
(1238, 340, 'Olancho', 'America/Tegucigalpa'),
(1239, 340, 'Santa Bárbara', 'America/Tegucigalpa'),
(1240, 340, 'Valle', 'America/Tegucigalpa'),
(1241, 340, 'Yoro', 'America/Tegucigalpa'),
(1242, 344, 'Hong Kong', 'Asia/Hong_Kong'),
(1243, 348, 'Bács-Kiskun', 'Europe/Budapest'),
(1244, 348, 'Baranya', 'Europe/Budapest'),
(1245, 348, 'Békés', 'Europe/Budapest'),
(1246, 348, 'Borsod-Abaúj-Zemplén', 'Europe/Budapest'),
(1247, 348, 'Budapest', 'Europe/Budapest'),
(1248, 348, 'Csongrád', 'Europe/Budapest'),
(1249, 348, 'Fejér', 'Europe/Budapest'),
(1250, 348, 'Győr-Moson-Sopron', 'Europe/Budapest'),
(1251, 348, 'Hajdú-Bihar', 'Europe/Budapest'),
(1252, 348, 'Heves', 'Europe/Budapest'),
(1253, 348, 'Komárom-Esztergom', 'Europe/Budapest'),
(1254, 348, 'Nógrád', 'Europe/Budapest'),
(1255, 348, 'Pest', 'Europe/Budapest'),
(1256, 348, 'Somogy', 'Europe/Budapest'),
(1257, 348, 'Szabolcs-Szatmár-Bereg', 'Europe/Budapest'),
(1258, 348, 'Jász-Nagykun-Szolnok', 'Europe/Budapest'),
(1259, 348, 'Tolna', 'Europe/Budapest'),
(1260, 348, 'Vas', 'Europe/Budapest'),
(1261, 348, 'Veszprém', 'Europe/Budapest'),
(1262, 348, 'Zala', 'Europe/Budapest'),
(1263, 352, 'Borgarfjardarsysla', 'Atlantic/Reykjavik'),
(1264, 352, 'Dalasysla', 'Atlantic/Reykjavik'),
(1265, 352, 'Eyjafjardarsysla', 'Atlantic/Reykjavik'),
(1266, 352, 'Gullbringusysla', 'Atlantic/Reykjavik'),
(1267, 352, 'Hafnarfjördur', 'Atlantic/Reykjavik'),
(1268, 352, 'Husavik', 'Atlantic/Reykjavik'),
(1269, 352, 'Isafjördur', 'Atlantic/Reykjavik'),
(1270, 352, 'Keflavik', 'Atlantic/Reykjavik'),
(1271, 352, 'Kjosarsysla', 'Atlantic/Reykjavik'),
(1272, 352, 'Kopavogur', 'Atlantic/Reykjavik'),
(1273, 352, 'Myrasysla', 'Atlantic/Reykjavik'),
(1274, 352, 'Neskaupstadur', 'Atlantic/Reykjavik'),
(1275, 352, 'Nordur-Isafjardarsysla', 'Atlantic/Reykjavik'),
(1276, 352, 'Nordur-Mulasysla', 'Atlantic/Reykjavik'),
(1277, 352, 'Nordur-Tingeyjarsysla', 'Atlantic/Reykjavik'),
(1278, 352, 'Olafsfjördur', 'Atlantic/Reykjavik'),
(1279, 352, 'Rangarvallasysla', 'Atlantic/Reykjavik'),
(1280, 352, 'Reykjavík', 'Atlantic/Reykjavik'),
(1281, 352, 'Saudarkrokur', 'Atlantic/Reykjavik'),
(1282, 352, 'Seydisfjordur', 'Atlantic/Reykjavik'),
(1283, 352, 'Siglufjordur', 'Atlantic/Reykjavik'),
(1284, 352, 'Skagafjardarsysla', 'Atlantic/Reykjavik'),
(1285, 352, 'Snafellsnes- og Hnappadalssysla', 'Atlantic/Reykjavik'),
(1286, 352, 'Strandasysla', 'Atlantic/Reykjavik'),
(1287, 352, 'Sudur-Mulasysla', 'Atlantic/Reykjavik'),
(1288, 352, 'Sudur-Tingeyjarsysla', 'Atlantic/Reykjavik'),
(1289, 352, 'Vestmannaeyjar', 'Atlantic/Reykjavik'),
(1290, 352, 'Vestur-Bardastrandarsysla', 'Atlantic/Reykjavik'),
(1291, 352, 'Vestur-Hunavatnssysla', 'Atlantic/Reykjavik'),
(1292, 352, 'Vestur-Isafjardarsysla', 'Atlantic/Reykjavik'),
(1293, 352, 'Vestur-Skaftafellssysla', 'Atlantic/Reykjavik'),
(1294, 352, 'East', 'Atlantic/Reykjavik'),
(1295, 352, 'Capital Region', 'Atlantic/Reykjavik'),
(1296, 352, 'Northeast', 'Atlantic/Reykjavik'),
(1297, 352, 'Northwest', 'Atlantic/Reykjavik'),
(1298, 352, 'South', 'Atlantic/Reykjavik'),
(1299, 352, 'Southern Peninsula', 'Atlantic/Reykjavik'),
(1300, 352, 'Westfjords', 'Atlantic/Reykjavik'),
(1301, 352, 'West', 'Atlantic/Reykjavik'),
(1302, 356, 'Andaman and Nicobar Islands', 'Asia/Kolkata'),
(1303, 356, 'Andhra Pradesh', 'Asia/Kolkata'),
(1304, 356, 'Assam', 'Asia/Kolkata'),
(1305, 356, 'Bihar', 'Asia/Kolkata'),
(1306, 356, 'Chandīgarh', 'Asia/Kolkata'),
(1307, 356, 'Dādra and Nagar Haveli', 'Asia/Kolkata'),
(1308, 356, 'NCT', 'Asia/Kolkata'),
(1309, 356, 'Gujarāt', 'Asia/Kolkata'),
(1310, 356, 'Haryana', 'Asia/Kolkata'),
(1311, 356, 'Himāchal Pradesh', 'Asia/Kolkata'),
(1312, 356, 'Kashmir', 'Asia/Kolkata'),
(1313, 356, 'Kerala', 'Asia/Kolkata'),
(1314, 356, 'Laccadives', 'Asia/Kolkata'),
(1315, 356, 'Madhya Pradesh ', 'Asia/Kolkata'),
(1316, 356, 'Mahārāshtra', 'Asia/Kolkata'),
(1317, 356, 'Manipur', 'Asia/Kolkata'),
(1318, 356, 'Meghālaya', 'Asia/Kolkata'),
(1319, 356, 'Karnātaka', 'Asia/Kolkata'),
(1320, 356, 'Nāgāland', 'Asia/Kolkata'),
(1321, 356, 'Orissa', 'Asia/Kolkata'),
(1322, 356, 'Pondicherry', 'Asia/Kolkata'),
(1323, 356, 'Punjab', 'Asia/Kolkata'),
(1324, 356, 'State of Rājasthān', 'Asia/Kolkata'),
(1325, 356, 'Tamil Nādu', 'Asia/Kolkata'),
(1326, 356, 'Tripura', 'Asia/Kolkata'),
(1327, 356, 'Uttar Pradesh', 'Asia/Kolkata'),
(1328, 356, 'Bengal', 'Asia/Kolkata'),
(1329, 356, 'Sikkim', 'Asia/Kolkata'),
(1330, 356, 'Arunāchal Pradesh', 'Asia/Kolkata'),
(1331, 356, 'Mizoram', 'Asia/Kolkata'),
(1332, 356, 'Daman and Diu', 'Asia/Kolkata'),
(1333, 356, 'Goa', 'Asia/Kolkata'),
(1334, 356, 'Bihār', 'Asia/Kolkata'),
(1335, 356, 'Madhya Pradesh', 'Asia/Kolkata'),
(1336, 356, 'Uttar Pradesh', 'Asia/Kolkata'),
(1337, 356, 'Chhattisgarh', 'Asia/Kolkata'),
(1338, 356, 'Jharkhand', 'Asia/Kolkata'),
(1339, 356, 'Uttarakhand', 'Asia/Kolkata'),
(1340, 360, 'Aceh', 'Asia/Jakarta'),
(1341, 360, 'Bali', 'Asia/Ujung_Pandang'),
(1342, 360, 'Bengkulu', 'Asia/Jakarta'),
(1343, 360, 'Jakarta Raya', 'Asia/Jakarta'),
(1344, 360, 'Jambi', 'Asia/Jakarta'),
(1345, 360, 'Jawa Barat', 'Asia/Jakarta'),
(1346, 360, 'Central Java', 'Asia/Jakarta'),
(1347, 360, 'East Java', 'Asia/Jakarta'),
(1348, 360, 'Yogyakarta ', 'Asia/Jakarta'),
(1349, 360, 'West Kalimantan', 'Asia/Jakarta'),
(1350, 360, 'South Kalimantan', 'Asia/Ujung_Pandang'),
(1351, 360, 'Kalimantan Tengah', 'Asia/Jakarta'),
(1352, 360, 'East Kalimantan', 'Asia/Ujung_Pandang'),
(1353, 360, 'Lampung', 'Asia/Jakarta'),
(1354, 360, 'Nusa Tenggara Barat', 'Asia/Ujung_Pandang'),
(1355, 360, 'East Nusa Tenggara', 'Asia/Ujung_Pandang'),
(1356, 360, 'Central Sulawesi', 'Asia/Ujung_Pandang'),
(1357, 360, 'Sulawesi Tenggara', 'Asia/Ujung_Pandang'),
(1358, 360, 'Sulawesi Utara', 'Asia/Ujung_Pandang'),
(1359, 360, 'West Sumatra', 'Asia/Jakarta'),
(1360, 360, 'Sumatera Selatan', 'Asia/Jakarta'),
(1361, 360, 'North Sumatra', 'Asia/Jakarta'),
(1362, 360, 'Timor Timur', 'Asia/Ujung_Pandang'),
(1363, 360, 'Maluku ', 'Asia/Jayapura'),
(1364, 360, 'Maluku Utara', 'Asia/Jayapura'),
(1365, 360, 'West Java', 'Asia/Jakarta'),
(1366, 360, 'North Sulawesi', 'Asia/Ujung_Pandang'),
(1367, 360, 'South Sumatra', 'Asia/Jakarta'),
(1368, 360, 'Banten', 'Asia/Jakarta'),
(1369, 360, 'Gorontalo', 'Asia/Ujung_Pandang'),
(1370, 360, 'Bangka-Belitung', 'Asia/Jakarta'),
(1371, 360, 'Papua', 'Asia/Jayapura'),
(1372, 360, 'Riau', 'Asia/Jakarta'),
(1373, 360, 'South Sulawesi', 'Asia/Ujung_Pandang'),
(1374, 360, 'Irian Jaya Barat', 'Asia/Jayapura'),
(1375, 360, 'Riau Islands', 'Asia/Jakarta'),
(1376, 360, 'Sulawesi Barat', 'Asia/Ujung_Pandang'),
(1377, 364, 'Āz̄ārbāyjān-e Gharbī', 'Asia/Tehran'),
(1378, 364, 'Chahār Maḩāll va Bakhtīārī', 'Asia/Tehran'),
(1379, 364, 'Sīstān va Balūchestān', 'Asia/Tehran'),
(1380, 364, 'Kohgīlūyeh va Būyer Aḩmad', 'Asia/Tehran'),
(1381, 364, 'Fārs Province', 'Asia/Tehran'),
(1382, 364, 'Gīlān', 'Asia/Tehran'),
(1383, 364, 'Hamadān', 'Asia/Tehran'),
(1384, 364, 'Īlām', 'Asia/Tehran'),
(1385, 364, 'Hormozgān Province', 'Asia/Tehran'),
(1386, 364, 'Kerman', 'Asia/Tehran'),
(1387, 364, 'Kermānshāh', 'Asia/Tehran'),
(1388, 364, 'Khūzestān', 'Asia/Tehran'),
(1389, 364, 'Kordestān', 'Asia/Tehran'),
(1390, 364, 'Mazandaran', 'Asia/Tehran'),
(1391, 364, 'Markazi', 'Asia/Tehran'),
(1392, 364, 'Zanjan', 'Asia/Tehran'),
(1393, 364, 'Bushehr Province', 'Asia/Tehran'),
(1394, 364, 'Lorestān', 'Asia/Tehran'),
(1395, 364, 'Markazi', 'Asia/Tehran'),
(1396, 364, 'Semnān Province', 'Asia/Tehran'),
(1397, 364, 'Tehrān', 'Asia/Tehran'),
(1398, 364, 'Zanjan', 'Asia/Tehran'),
(1399, 364, 'Eşfahān', 'Asia/Tehran'),
(1400, 364, 'Kermān', 'Asia/Tehran'),
(1401, 364, 'Ostan-e Khorasan-e Razavi', 'Asia/Tehran'),
(1402, 364, 'Yazd', 'Asia/Tehran'),
(1403, 364, 'Ardabīl', 'Asia/Tehran'),
(1404, 364, 'Āz̄ārbāyjān-e Sharqī', 'Asia/Tehran'),
(1405, 364, 'Markazi Province', 'Asia/Tehran'),
(1406, 364, 'Māzandarān Province', 'Asia/Tehran'),
(1407, 364, 'Zanjan Province', 'Asia/Tehran'),
(1408, 364, 'Golestān', 'Asia/Tehran'),
(1409, 364, 'Qazvīn', 'Asia/Tehran'),
(1410, 364, 'Qom', 'Asia/Tehran'),
(1411, 364, 'Yazd', 'Asia/Tehran'),
(1412, 364, 'Khorāsān-e Jonūbī', 'Asia/Tehran'),
(1413, 364, 'Razavi Khorasan Province', 'Asia/Tehran'),
(1414, 364, 'Khorāsān-e Shomālī', 'Asia/Tehran'),
(1415, 368, 'Anbar', 'Asia/Baghdad'),
(1416, 368, 'Al Başrah', 'Asia/Baghdad'),
(1417, 368, 'Al Muthanná', 'Asia/Baghdad'),
(1418, 368, 'Al Qādisīyah', 'Asia/Baghdad'),
(1419, 368, 'As Sulaymānīyah', 'Asia/Baghdad'),
(1420, 368, 'Bābil', 'Asia/Baghdad'),
(1421, 368, 'Baghdād', 'Asia/Baghdad'),
(1422, 368, 'Dahūk', 'Asia/Baghdad'),
(1423, 368, 'Dhi Qar', 'Asia/Baghdad'),
(1424, 368, 'Diyala', 'Asia/Baghdad'),
(1425, 368, 'Arbīl', 'Asia/Baghdad'),
(1426, 368, 'Karbalāʼ', 'Asia/Baghdad'),
(1427, 368, 'At Taʼmīm', 'Asia/Baghdad'),
(1428, 368, 'Maysan', 'Asia/Baghdad'),
(1429, 368, 'Nīnawá', 'Asia/Baghdad'),
(1430, 368, 'Wāsiţ', 'Asia/Baghdad'),
(1431, 368, 'An Najaf', 'Asia/Baghdad'),
(1432, 368, 'Şalāḩ ad Dīn', 'Asia/Baghdad'),
(1433, 372, 'Carlow', 'Europe/Dublin'),
(1434, 372, 'Cavan', 'Europe/Dublin'),
(1435, 372, 'County Clare', 'Europe/Dublin'),
(1436, 372, 'Cork', 'Europe/Dublin'),
(1437, 372, 'Donegal', 'Europe/Dublin'),
(1438, 372, 'Galway', 'Europe/Dublin'),
(1439, 372, 'County Kerry', 'Europe/Dublin'),
(1440, 372, 'County Kildare', 'Europe/Dublin'),
(1441, 372, 'County Kilkenny', 'Europe/Dublin'),
(1442, 372, 'Leitrim', 'Europe/Dublin'),
(1443, 372, 'Laois', 'Europe/Dublin'),
(1444, 372, 'Limerick', 'Europe/Dublin'),
(1445, 372, 'County Longford', 'Europe/Dublin'),
(1446, 372, 'County Louth', 'Europe/Dublin'),
(1447, 372, 'County Mayo', 'Europe/Dublin'),
(1448, 372, 'County Meath', 'Europe/Dublin'),
(1449, 372, 'Monaghan', 'Europe/Dublin'),
(1450, 372, 'County Offaly', 'Europe/Dublin'),
(1451, 372, 'County Roscommon', 'Europe/Dublin'),
(1452, 372, 'County Sligo', 'Europe/Dublin'),
(1453, 372, 'County Waterford', 'Europe/Dublin'),
(1454, 372, 'County Westmeath', 'Europe/Dublin'),
(1455, 372, 'County Wexford', 'Europe/Dublin'),
(1456, 372, 'County Wicklow', 'Europe/Dublin'),
(1457, 372, 'Dún Laoghaire-Rathdown', 'Europe/Dublin'),
(1458, 372, 'Fingal County', 'Europe/Dublin'),
(1459, 372, 'Tipperary North Riding', 'Europe/Dublin'),
(1460, 372, 'South Dublin', 'Europe/Dublin'),
(1461, 372, 'Tipperary South Riding', 'Europe/Dublin'),
(1462, 376, 'HaDarom', 'Asia/Jerusalem'),
(1463, 376, 'HaMerkaz', 'Asia/Jerusalem'),
(1464, 376, 'Northern District', 'Asia/Jerusalem'),
(1465, 376, 'H̱efa', 'Asia/Jerusalem'),
(1466, 376, 'Tel Aviv', 'Asia/Jerusalem'),
(1467, 376, 'Yerushalayim', 'Asia/Jerusalem'),
(1468, 380, 'Abruzzo', 'Europe/Rome'),
(1469, 380, 'Basilicate', 'Europe/Rome'),
(1470, 380, 'Calabria', 'Europe/Rome'),
(1471, 380, 'Campania', 'Europe/Rome'),
(1472, 380, 'Emilia-Romagna', 'Europe/Rome'),
(1473, 380, 'Friuli', 'Europe/Rome'),
(1474, 380, 'Lazio', 'Europe/Rome'),
(1475, 380, 'Liguria', 'Europe/Rome'),
(1476, 380, 'Lombardy', 'Europe/Rome'),
(1477, 380, 'The Marches', 'Europe/Rome'),
(1478, 380, 'Molise', 'Europe/Rome'),
(1479, 380, 'Piedmont', 'Europe/Rome'),
(1480, 380, 'Apulia', 'Europe/Rome'),
(1481, 380, 'Sardinia', 'Europe/Rome'),
(1482, 380, 'Sicily', 'Europe/Rome'),
(1483, 380, 'Tuscany', 'Europe/Rome'),
(1484, 380, 'Trentino-Alto Adige', 'Europe/Rome'),
(1485, 380, 'Umbria', 'Europe/Rome'),
(1486, 380, 'Aosta Valley', 'Europe/Rome'),
(1487, 380, 'Veneto', 'Europe/Rome'),
(1488, 384, 'Valparaíso Region', 'Africa/Abidjan'),
(1489, 384, 'Antofagasta Region', 'Africa/Abidjan'),
(1490, 384, 'Araucanía Region', 'Africa/Abidjan'),
(1491, 384, 'Atacama Region', 'Africa/Abidjan'),
(1492, 384, 'Biobío Region', 'Africa/Abidjan'),
(1493, 384, 'Coquimbo Region', 'Africa/Abidjan'),
(1494, 384, 'Maule Region', 'Africa/Abidjan'),
(1495, 384, 'Santiago Metropolitan Region', 'Africa/Abidjan'),
(1496, 384, 'Danane', 'Africa/Abidjan'),
(1497, 384, 'Divo', 'Africa/Abidjan'),
(1498, 384, 'Ferkessedougou', 'Africa/Abidjan'),
(1499, 384, 'Gagnoa', 'Africa/Abidjan'),
(1500, 384, 'Katiola', 'Africa/Abidjan'),
(1501, 384, 'Korhogo', 'Africa/Abidjan'),
(1502, 384, 'Odienne', 'Africa/Abidjan'),
(1503, 384, 'Seguela', 'Africa/Abidjan'),
(1504, 384, 'Touba', 'Africa/Abidjan'),
(1505, 384, 'Bongouanou', 'Africa/Abidjan'),
(1506, 384, 'Issia', 'Africa/Abidjan'),
(1507, 384, 'Lakota', 'Africa/Abidjan'),
(1508, 384, 'Mankono', 'Africa/Abidjan'),
(1509, 384, 'Oume', 'Africa/Abidjan'),
(1510, 384, 'Soubre', 'Africa/Abidjan'),
(1511, 384, 'Tingrela', 'Africa/Abidjan'),
(1512, 384, 'Zuenoula', 'Africa/Abidjan'),
(1513, 384, 'Bangolo', 'Africa/Abidjan'),
(1514, 384, 'Beoumi', 'Africa/Abidjan'),
(1515, 384, 'Bondoukou', 'Africa/Abidjan'),
(1516, 384, 'Bouafle', 'Africa/Abidjan'),
(1517, 384, 'Bouake', 'Africa/Abidjan'),
(1518, 384, 'Daloa', 'Africa/Abidjan'),
(1519, 384, 'Daoukro', 'Africa/Abidjan'),
(1520, 384, 'Duekoue', 'Africa/Abidjan'),
(1521, 384, 'Grand-Lahou', 'Africa/Abidjan'),
(1522, 384, 'Man', 'Africa/Abidjan'),
(1523, 384, 'Mbahiakro', 'Africa/Abidjan'),
(1524, 384, 'Sakassou', 'Africa/Abidjan'),
(1525, 384, 'San Pedro', 'Africa/Abidjan'),
(1526, 384, 'Sassandra', 'Africa/Abidjan'),
(1527, 384, 'Sinfra', 'Africa/Abidjan'),
(1528, 384, 'Tabou', 'Africa/Abidjan'),
(1529, 384, 'Tanda', 'Africa/Abidjan'),
(1530, 384, 'Tiassale', 'Africa/Abidjan'),
(1531, 384, 'Toumodi', 'Africa/Abidjan'),
(1532, 384, 'Vavoua', 'Africa/Abidjan'),
(1533, 384, 'Abidjan', 'Africa/Abidjan'),
(1534, 384, 'Aboisso', 'Africa/Abidjan'),
(1535, 384, 'Adiake', 'Africa/Abidjan'),
(1536, 384, 'Alepe', 'Africa/Abidjan'),
(1537, 384, 'Bocanda', 'Africa/Abidjan'),
(1538, 384, 'Dabou', 'Africa/Abidjan'),
(1539, 384, 'Dimbokro', 'Africa/Abidjan'),
(1540, 384, 'Grand-Bassam', 'Africa/Abidjan'),
(1541, 384, 'Guiglo', 'Africa/Abidjan'),
(1542, 384, 'Jacqueville', 'Africa/Abidjan'),
(1543, 384, 'Tiebissou', 'Africa/Abidjan'),
(1544, 384, 'Toulepleu', 'Africa/Abidjan'),
(1545, 384, 'Yamoussoukro', 'Africa/Abidjan'),
(1546, 384, 'Agnéby', 'Africa/Abidjan'),
(1547, 384, 'Bafing', 'Africa/Abidjan'),
(1548, 384, 'Bas-Sassandra', 'Africa/Abidjan'),
(1549, 384, 'Denguélé', 'Africa/Abidjan'),
(1550, 384, 'Dix-Huit Montagnes', 'Africa/Abidjan'),
(1551, 384, 'Fromager', 'Africa/Abidjan'),
(1552, 384, 'Haut-Sassandra', 'Africa/Abidjan'),
(1553, 384, 'Lacs', 'Africa/Abidjan'),
(1554, 384, 'Lagunes', 'Africa/Abidjan'),
(1555, 384, 'Marahoué', 'Africa/Abidjan'),
(1556, 384, 'Moyen-Cavally', 'Africa/Abidjan'),
(1557, 384, 'Moyen-Comoé', 'Africa/Abidjan'),
(1558, 384, 'Nʼzi-Comoé', 'Africa/Abidjan'),
(1559, 384, 'Savanes', 'Africa/Abidjan'),
(1560, 384, 'Sud-Bandama', 'Africa/Abidjan'),
(1561, 384, 'Sud-Comoé', 'Africa/Abidjan'),
(1562, 384, 'Vallée du Bandama', 'Africa/Abidjan'),
(1563, 384, 'Worodougou', 'Africa/Abidjan'),
(1564, 384, 'Zanzan', 'Africa/Abidjan'),
(1565, 388, 'Clarendon', 'America/Jamaica'),
(1566, 388, 'Hanover Parish', 'America/Jamaica'),
(1567, 388, 'Manchester', 'America/Jamaica'),
(1568, 388, 'Portland', 'America/Jamaica'),
(1569, 388, 'Saint Andrew', 'America/Jamaica'),
(1570, 388, 'Saint Ann', 'America/Jamaica'),
(1571, 388, 'Saint Catherine', 'America/Jamaica'),
(1572, 388, 'St. Elizabeth', 'America/Jamaica'),
(1573, 388, 'Saint James', 'America/Jamaica'),
(1574, 388, 'Saint Mary', 'America/Jamaica'),
(1575, 388, 'Saint Thomas', 'America/Jamaica'),
(1576, 388, 'Trelawny', 'America/Jamaica'),
(1577, 388, 'Westmoreland', 'America/Jamaica'),
(1578, 388, 'Kingston', 'America/Jamaica'),
(1579, 392, 'Aichi', 'Asia/Tokyo'),
(1580, 392, 'Akita', 'Asia/Tokyo'),
(1581, 392, 'Aomori', 'Asia/Tokyo'),
(1582, 392, 'Chiba', 'Asia/Tokyo'),
(1583, 392, 'Ehime', 'Asia/Tokyo'),
(1584, 392, 'Fukui', 'Asia/Tokyo'),
(1585, 392, 'Fukuoka', 'Asia/Tokyo'),
(1586, 392, 'Fukushima', 'Asia/Tokyo'),
(1587, 392, 'Gifu', 'Asia/Tokyo'),
(1588, 392, 'Gumma', 'Asia/Tokyo'),
(1589, 392, 'Hiroshima', 'Asia/Tokyo'),
(1590, 392, 'Hokkaidō', 'Asia/Tokyo'),
(1591, 392, 'Hyōgo', 'Asia/Tokyo'),
(1592, 392, 'Ibaraki', 'Asia/Tokyo'),
(1593, 392, 'Ishikawa', 'Asia/Tokyo'),
(1594, 392, 'Iwate', 'Asia/Tokyo'),
(1595, 392, 'Kagawa', 'Asia/Tokyo'),
(1596, 392, 'Kagoshima', 'Asia/Tokyo'),
(1597, 392, 'Kanagawa', 'Asia/Tokyo'),
(1598, 392, 'Kōchi', 'Asia/Tokyo'),
(1599, 392, 'Kumamoto', 'Asia/Tokyo'),
(1600, 392, 'Kyōto', 'Asia/Tokyo'),
(1601, 392, 'Mie', 'Asia/Tokyo'),
(1602, 392, 'Miyagi', 'Asia/Tokyo'),
(1603, 392, 'Miyazaki', 'Asia/Tokyo'),
(1604, 392, 'Nagano', 'Asia/Tokyo'),
(1605, 392, 'Nagasaki', 'Asia/Tokyo'),
(1606, 392, 'Nara', 'Asia/Tokyo'),
(1607, 392, 'Niigata', 'Asia/Tokyo'),
(1608, 392, 'Ōita', 'Asia/Tokyo'),
(1609, 392, 'Okayama', 'Asia/Tokyo'),
(1610, 392, 'Ōsaka', 'Asia/Tokyo'),
(1611, 392, 'Saga', 'Asia/Tokyo'),
(1612, 392, 'Saitama', 'Asia/Tokyo'),
(1613, 392, 'Shiga', 'Asia/Tokyo'),
(1614, 392, 'Shimane', 'Asia/Tokyo'),
(1615, 392, 'Shizuoka', 'Asia/Tokyo'),
(1616, 392, 'Tochigi', 'Asia/Tokyo'),
(1617, 392, 'Tokushima', 'Asia/Tokyo'),
(1618, 392, 'Tōkyō', 'Asia/Tokyo'),
(1619, 392, 'Tottori', 'Asia/Tokyo'),
(1620, 392, 'Toyama', 'Asia/Tokyo'),
(1621, 392, 'Wakayama', 'Asia/Tokyo'),
(1622, 392, 'Yamagata', 'Asia/Tokyo'),
(1623, 392, 'Yamaguchi', 'Asia/Tokyo'),
(1624, 392, 'Yamanashi', 'Asia/Tokyo'),
(1625, 392, 'Okinawa', 'Asia/Tokyo'),
(1626, 398, 'Almaty', 'Asia/Almaty'),
(1627, 398, 'Almaty Qalasy', 'Asia/Almaty'),
(1628, 398, 'Aqmola', 'Asia/Almaty'),
(1629, 398, 'Aqtöbe', 'Asia/Aqtobe'),
(1630, 398, 'Astana Qalasy', 'Asia/Almaty'),
(1631, 398, 'Atyraū', 'Asia/Oral'),
(1632, 398, 'Batys Qazaqstan', 'Asia/Oral'),
(1633, 398, 'Bayqongyr Qalasy', 'Asia/Almaty'),
(1634, 398, 'Mangghystaū', 'Asia/Aqtau'),
(1635, 398, 'Ongtüstik Qazaqstan', 'Asia/Almaty'),
(1636, 398, 'Pavlodar', 'Asia/Almaty'),
(1637, 398, 'Qaraghandy', 'Asia/Almaty'),
(1638, 398, 'Qostanay', 'Asia/Qyzylorda'),
(1639, 398, 'Qyzylorda', 'Asia/Qyzylorda'),
(1640, 398, 'East Kazakhstan', 'Asia/Almaty'),
(1641, 398, 'Soltüstik Qazaqstan', 'Asia/Almaty'),
(1642, 398, 'Zhambyl', 'Asia/Almaty'),
(1643, 400, 'Balqa', 'Asia/Amman'),
(1644, 400, 'Ma’an', 'Asia/Amman'),
(1645, 400, 'Karak', 'Asia/Amman'),
(1646, 400, 'Al Mafraq', 'Asia/Amman'),
(1647, 400, 'Tafielah', 'Asia/Amman'),
(1648, 400, 'Az Zarqa', 'Asia/Amman'),
(1649, 400, 'Irbid', 'Asia/Amman'),
(1650, 400, 'Mafraq', 'Asia/Amman'),
(1651, 400, 'Amman', 'Asia/Amman'),
(1652, 400, 'Zarqa', 'Asia/Amman'),
(1653, 400, 'Irbid', 'Asia/Amman'),
(1654, 400, 'Ma’an', 'Asia/Amman'),
(1655, 400, 'Ajlun', 'Asia/Amman'),
(1656, 400, 'Aqaba', 'Asia/Amman'),
(1657, 400, 'Jerash', 'Asia/Amman'),
(1658, 400, 'Madaba', 'Asia/Amman'),
(1659, 404, 'Central', 'Africa/Nairobi'),
(1660, 404, 'Coast', 'Africa/Nairobi'),
(1661, 404, 'Eastern', 'Africa/Nairobi'),
(1662, 404, 'Nairobi Area', 'Africa/Nairobi'),
(1663, 404, 'North-Eastern', 'Africa/Nairobi'),
(1664, 404, 'Nyanza', 'Africa/Nairobi'),
(1665, 404, 'Rift Valley', 'Africa/Nairobi'),
(1666, 404, 'Western', 'Africa/Nairobi'),
(1667, 408, 'Chagang-do', 'Asia/Pyongyang'),
(1668, 408, 'Hamgyŏng-namdo', 'Asia/Pyongyang'),
(1669, 408, 'Hwanghae-namdo', 'Asia/Pyongyang'),
(1670, 408, 'Hwanghae-bukto', 'Asia/Pyongyang'),
(1671, 408, 'Kaesŏng-si', 'Asia/Pyongyang'),
(1672, 408, 'Gangwon', 'Asia/Pyongyang'),
(1673, 408, 'Pʼyŏngan-bukto', 'Asia/Pyongyang'),
(1674, 408, 'Pʼyŏngyang-si', 'Asia/Pyongyang'),
(1675, 408, 'Yanggang-do', 'Asia/Pyongyang'),
(1676, 408, 'Nampʼo-si', 'Asia/Pyongyang'),
(1677, 408, 'Pʼyŏngan-namdo', 'Asia/Pyongyang'),
(1678, 408, 'Hamgyŏng-bukto', 'Asia/Pyongyang'),
(1679, 408, 'Najin Sŏnbong-si', 'Asia/Pyongyang'),
(1680, 410, 'Jeju', 'Asia/Seoul'),
(1681, 410, 'North Jeolla', 'Asia/Seoul'),
(1682, 410, 'North Chungcheong', 'Asia/Seoul'),
(1683, 410, 'Gangwon', 'Asia/Seoul'),
(1684, 410, 'Busan', 'Asia/Seoul'),
(1685, 410, 'Seoul', 'Asia/Seoul'),
(1686, 410, 'Incheon', 'Asia/Seoul'),
(1687, 410, 'Gyeonggi', 'Asia/Seoul'),
(1688, 410, 'North Gyeongsang', 'Asia/Seoul'),
(1689, 410, 'Daegu', 'Asia/Seoul'),
(1690, 410, 'South Jeolla', 'Asia/Seoul'),
(1691, 410, 'South Chungcheong', 'Asia/Seoul'),
(1692, 410, 'Gwangju', 'Asia/Seoul'),
(1693, 410, 'Daejeon', 'Asia/Seoul'),
(1694, 410, 'South Gyeongsang', 'Asia/Seoul'),
(1695, 410, 'Ulsan', 'Asia/Seoul'),
(1696, 414, 'Muḩāfaz̧atalWafrah', 'Asia/Kuwait'),
(1697, 414, 'Al ‘Āşimah', 'Asia/Kuwait'),
(1698, 414, 'Al Aḩmadī', 'Asia/Kuwait'),
(1699, 414, 'Al Jahrāʼ', 'Asia/Kuwait'),
(1700, 414, 'Al Farwaniyah', 'Asia/Kuwait'),
(1701, 414, 'Ḩawallī', 'Asia/Kuwait'),
(1702, 417, 'Bishkek', 'Asia/Bishkek'),
(1703, 417, 'Chüy', 'Asia/Bishkek'),
(1704, 417, 'Jalal-Abad', 'Asia/Bishkek'),
(1705, 417, 'Naryn', 'Asia/Bishkek'),
(1706, 417, 'Talas', 'Asia/Bishkek'),
(1707, 417, 'Ysyk-Köl', 'Asia/Bishkek'),
(1708, 417, 'Osh', 'Asia/Bishkek'),
(1709, 417, 'Batken', 'Asia/Bishkek'),
(1710, 418, 'Attapu', 'Asia/Vientiane'),
(1711, 418, 'Champasak', 'Asia/Vientiane'),
(1712, 418, 'Houaphan', 'Asia/Vientiane'),
(1713, 418, 'Khammouan', 'Asia/Vientiane'),
(1714, 418, 'Louang Namtha', 'Asia/Vientiane'),
(1715, 418, 'Louangphrabang', 'Asia/Vientiane'),
(1716, 418, 'Oudômxai', 'Asia/Vientiane'),
(1717, 418, 'Phongsali', 'Asia/Vientiane'),
(1718, 418, 'Saravan', 'Asia/Vientiane'),
(1719, 418, 'Savannakhet', 'Asia/Vientiane'),
(1720, 418, 'Vientiane', 'Asia/Vientiane'),
(1721, 418, 'Xiagnabouli', 'Asia/Vientiane'),
(1722, 418, 'Xiangkhoang', 'Asia/Vientiane'),
(1723, 418, 'Khammouan', 'Asia/Vientiane'),
(1724, 418, 'Loungnamtha', 'Asia/Vientiane'),
(1725, 418, 'Louangphabang', 'Asia/Vientiane'),
(1726, 418, 'Phôngsali', 'Asia/Vientiane'),
(1727, 418, 'Salavan', 'Asia/Vientiane'),
(1728, 418, 'Savannahkhét', 'Asia/Vientiane'),
(1729, 418, 'Bokèo', 'Asia/Vientiane'),
(1730, 418, 'Bolikhamxai', 'Asia/Vientiane'),
(1731, 418, 'Viangchan', 'Asia/Vientiane'),
(1732, 418, 'Xékong', 'Asia/Vientiane'),
(1733, 418, 'Viangchan', 'Asia/Vientiane'),
(1734, 422, 'Béqaa', 'Asia/Beirut'),
(1735, 422, 'Liban-Nord', 'Asia/Beirut'),
(1736, 422, 'Beyrouth', 'Asia/Beirut'),
(1737, 422, 'Mont-Liban', 'Asia/Beirut'),
(1738, 422, 'Liban-Sud', 'Asia/Beirut'),
(1739, 422, 'Nabatîyé', 'Asia/Beirut'),
(1740, 422, 'Béqaa', 'Asia/Beirut'),
(1741, 422, 'Liban-Nord', 'Asia/Beirut'),
(1742, 422, 'Aakkâr', 'Asia/Beirut'),
(1743, 422, 'Baalbek-Hermel', 'Asia/Beirut'),
(1744, 426, 'Balzers Commune', 'Africa/Maseru'),
(1745, 426, 'Eschen Commune', 'Africa/Maseru'),
(1746, 426, 'Gamprin Commune', 'Africa/Maseru'),
(1747, 426, 'Mauren Commune', 'Africa/Maseru'),
(1748, 426, 'Planken Commune', 'Africa/Maseru'),
(1749, 426, 'Ruggell Commune', 'Africa/Maseru'),
(1750, 426, 'Berea District', 'Africa/Maseru'),
(1751, 426, 'Butha-Buthe District', 'Africa/Maseru'),
(1752, 426, 'Leribe District', 'Africa/Maseru'),
(1753, 426, 'Mafeteng', 'Africa/Maseru'),
(1754, 426, 'Maseru', 'Africa/Maseru'),
(1755, 426, 'Mohaleʼs Hoek', 'Africa/Maseru'),
(1756, 426, 'Mokhotlong', 'Africa/Maseru'),
(1757, 426, 'Qachaʼs Nek', 'Africa/Maseru'),
(1758, 426, 'Quthing District', 'Africa/Maseru'),
(1759, 426, 'Thaba-Tseka District', 'Africa/Maseru'),
(1760, 428, 'Dobeles Rajons', 'Europe/Riga'),
(1761, 428, 'Aizkraukles Rajons', 'Europe/Riga'),
(1762, 428, 'Alūksnes Rajons', 'Europe/Riga'),
(1763, 428, 'Balvu Rajons', 'Europe/Riga'),
(1764, 428, 'Bauskas Rajons', 'Europe/Riga'),
(1765, 428, 'Cēsu Rajons', 'Europe/Riga'),
(1766, 428, 'Daugavpils', 'Europe/Riga'),
(1767, 428, 'Daugavpils Rajons', 'Europe/Riga'),
(1768, 428, 'Dobeles Rajons', 'Europe/Riga'),
(1769, 428, 'Gulbenes Rajons', 'Europe/Riga'),
(1770, 428, 'Jēkabpils Rajons', 'Europe/Riga'),
(1771, 428, 'Jelgava', 'Europe/Riga'),
(1772, 428, 'Jelgavas Rajons', 'Europe/Riga'),
(1773, 428, 'Jūrmala', 'Europe/Riga'),
(1774, 428, 'Krāslavas Rajons', 'Europe/Riga'),
(1775, 428, 'Kuldīgas Rajons', 'Europe/Riga'),
(1776, 428, 'Liepāja', 'Europe/Riga'),
(1777, 428, 'Liepājas Rajons', 'Europe/Riga'),
(1778, 428, 'Limbažu Rajons', 'Europe/Riga'),
(1779, 428, 'Ludzas Rajons', 'Europe/Riga'),
(1780, 428, 'Madonas Rajons', 'Europe/Riga'),
(1781, 428, 'Ogres Rajons', 'Europe/Riga'),
(1782, 428, 'Preiļu Rajons', 'Europe/Riga'),
(1783, 428, 'Rēzekne', 'Europe/Riga'),
(1784, 428, 'Rēzeknes Rajons', 'Europe/Riga'),
(1785, 428, 'Rīga', 'Europe/Riga'),
(1786, 428, 'Rīgas Rajons', 'Europe/Riga'),
(1787, 428, 'Saldus Rajons', 'Europe/Riga'),
(1788, 428, 'Talsu Rajons', 'Europe/Riga'),
(1789, 428, 'Tukuma Rajons', 'Europe/Riga'),
(1790, 428, 'Valkas Rajons', 'Europe/Riga'),
(1791, 428, 'Valmieras Rajons', 'Europe/Riga'),
(1792, 428, 'Ventspils', 'Europe/Riga'),
(1793, 428, 'Ventspils Rajons', 'Europe/Riga'),
(1794, 430, 'Bong', 'Africa/Monrovia'),
(1795, 430, 'Grand Jide', 'Africa/Monrovia'),
(1796, 430, 'Grand Cape Mount', 'Africa/Monrovia'),
(1797, 430, 'Lofa', 'Africa/Monrovia'),
(1798, 430, 'Nimba', 'Africa/Monrovia'),
(1799, 430, 'Sinoe', 'Africa/Monrovia'),
(1800, 430, 'Grand Bassa County', 'Africa/Monrovia'),
(1801, 430, 'Grand Cape Mount', 'Africa/Monrovia'),
(1802, 430, 'Maryland', 'Africa/Monrovia'),
(1803, 430, 'Montserrado', 'Africa/Monrovia'),
(1804, 430, 'Bomi', 'Africa/Monrovia'),
(1805, 430, 'Grand Kru', 'Africa/Monrovia'),
(1806, 430, 'Margibi', 'Africa/Monrovia'),
(1807, 430, 'River Cess', 'Africa/Monrovia'),
(1808, 430, 'Grand Gedeh', 'Africa/Monrovia'),
(1809, 430, 'Lofa', 'Africa/Monrovia'),
(1810, 430, 'Gbarpolu', 'Africa/Monrovia'),
(1811, 430, 'River Gee', 'Africa/Monrovia'),
(1812, 434, 'Al Abyār', 'Africa/Tripoli'),
(1813, 434, 'Al ‘Azīzīyah', 'Africa/Tripoli'),
(1814, 434, 'Al Bayḑā’', 'Africa/Tripoli'),
(1815, 434, 'Al Jufrah', 'Africa/Tripoli'),
(1816, 434, 'Al Jumayl', 'Africa/Tripoli'),
(1817, 434, 'Al Kufrah', 'Africa/Tripoli'),
(1818, 434, 'Al Marj', 'Africa/Tripoli'),
(1819, 434, 'Al Qarābūll', 'Africa/Tripoli'),
(1820, 434, 'Al Qubbah', 'Africa/Tripoli'),
(1821, 434, 'Al Ajaylāt', 'Africa/Tripoli'),
(1822, 434, 'Ash Shāţiʼ', 'Africa/Tripoli'),
(1823, 434, 'Az Zahra’', 'Africa/Tripoli'),
(1824, 434, 'Banī Walīd', 'Africa/Tripoli'),
(1825, 434, 'Bin Jawwād', 'Africa/Tripoli'),
(1826, 434, 'Ghāt', 'Africa/Tripoli'),
(1827, 434, 'Jādū', 'Africa/Tripoli'),
(1828, 434, 'Jālū', 'Africa/Tripoli'),
(1829, 434, 'Janzūr', 'Africa/Tripoli'),
(1830, 434, 'Masallatah', 'Africa/Tripoli'),
(1831, 434, 'Mizdah', 'Africa/Tripoli'),
(1832, 434, 'Murzuq', 'Africa/Tripoli'),
(1833, 434, 'Nālūt', 'Africa/Tripoli'),
(1834, 434, 'Qamīnis', 'Africa/Tripoli'),
(1835, 434, 'Qaşr Bin Ghashīr', 'Africa/Tripoli'),
(1836, 434, 'Sabhā', 'Africa/Tripoli'),
(1837, 434, 'Şabrātah', 'Africa/Tripoli'),
(1838, 434, 'Shaḩḩāt', 'Africa/Tripoli'),
(1839, 434, 'Şurmān', 'Africa/Tripoli'),
(1840, 434, 'Tajura’ ', 'Africa/Tripoli'),
(1841, 434, 'Tarhūnah', 'Africa/Tripoli'),
(1842, 434, 'Ţubruq', 'Africa/Tripoli'),
(1843, 434, 'Tūkrah', 'Africa/Tripoli'),
(1844, 434, 'Zlīţan', 'Africa/Tripoli'),
(1845, 434, 'Zuwārah', 'Africa/Tripoli'),
(1846, 434, 'Ajdābiyā', 'Africa/Tripoli'),
(1847, 434, 'Al Fātiḩ', 'Africa/Tripoli'),
(1848, 434, 'Al Jabal al Akhḑar', 'Africa/Tripoli'),
(1849, 434, 'Al Khums', 'Africa/Tripoli'),
(1850, 434, 'An Nuqāţ al Khams', 'Africa/Tripoli'),
(1851, 434, 'Awbārī', 'Africa/Tripoli'),
(1852, 434, 'Az Zāwiyah', 'Africa/Tripoli'),
(1853, 434, 'Banghāzī', 'Africa/Tripoli'),
(1854, 434, 'Darnah', 'Africa/Tripoli'),
(1855, 434, 'Ghadāmis', 'Africa/Tripoli'),
(1856, 434, 'Gharyān', 'Africa/Tripoli'),
(1857, 434, 'Mişrātah', 'Africa/Tripoli'),
(1858, 434, 'Sawfajjīn', 'Africa/Tripoli'),
(1859, 434, 'Surt', 'Africa/Tripoli'),
(1860, 434, 'Ţarābulus', 'Africa/Tripoli'),
(1861, 434, 'Yafran', 'Africa/Tripoli'),
(1862, 438, 'Balzers', 'Europe/Vaduz'),
(1863, 438, 'Eschen', 'Europe/Vaduz'),
(1864, 438, 'Gamprin', 'Europe/Vaduz'),
(1865, 438, 'Mauren', 'Europe/Vaduz'),
(1866, 438, 'Planken', 'Europe/Vaduz'),
(1867, 438, 'Ruggell', 'Europe/Vaduz'),
(1868, 438, 'Schaan', 'Europe/Vaduz'),
(1869, 438, 'Schellenberg', 'Europe/Vaduz'),
(1870, 438, 'Triesen', 'Europe/Vaduz'),
(1871, 438, 'Triesenberg', 'Europe/Vaduz'),
(1872, 438, 'Vaduz', 'Europe/Vaduz'),
(1873, 440, 'Alytaus Apskritis', 'Europe/Vilnius'),
(1874, 440, 'Kauno Apskritis', 'Europe/Vilnius'),
(1875, 440, 'Klaipėdos Apskritis', 'Europe/Vilnius'),
(1876, 440, 'Marijampolės Apskritis', 'Europe/Vilnius'),
(1877, 440, 'Panevėžio Apskritis', 'Europe/Vilnius'),
(1878, 440, 'Šiaulių Apskritis', 'Europe/Vilnius'),
(1879, 440, 'Tauragės Apskritis', 'Europe/Vilnius'),
(1880, 440, 'Telšių Apskritis', 'Europe/Vilnius'),
(1881, 440, 'Utenos Apskritis', 'Europe/Vilnius'),
(1882, 440, 'Vilniaus Apskritis', 'Europe/Vilnius'),
(1883, 442, 'Diekirch', 'Europe/Luxembourg'),
(1884, 442, 'Grevenmacher', 'Europe/Luxembourg'),
(1885, 442, 'Luxembourg', 'Europe/Luxembourg'),
(1886, 446, 'Ilhas', 'Asia/Macau'),
(1887, 446, 'Macau', 'Asia/Macau'),
(1888, 450, 'Antsiranana', 'Indian/Antananarivo'),
(1889, 450, 'Fianarantsoa', 'Indian/Antananarivo'),
(1890, 450, 'Mahajanga', 'Indian/Antananarivo'),
(1891, 450, 'Toamasina', 'Indian/Antananarivo'),
(1892, 450, 'Antananarivo', 'Indian/Antananarivo'),
(1893, 450, 'Toliara', 'Indian/Antananarivo'),
(1894, 454, 'Chikwawa', 'Africa/Blantyre'),
(1895, 454, 'Chiradzulu', 'Africa/Blantyre'),
(1896, 454, 'Chitipa', 'Africa/Blantyre'),
(1897, 454, 'Thyolo', 'Africa/Blantyre'),
(1898, 454, 'Dedza', 'Africa/Blantyre'),
(1899, 454, 'Dowa', 'Africa/Blantyre'),
(1900, 454, 'Karonga', 'Africa/Blantyre'),
(1901, 454, 'Kasungu', 'Africa/Blantyre'),
(1902, 454, 'Lilongwe', 'Africa/Blantyre'),
(1903, 454, 'Mangochi', 'Africa/Blantyre'),
(1904, 454, 'Mchinji', 'Africa/Blantyre'),
(1905, 454, 'Mzimba', 'Africa/Blantyre'),
(1906, 454, 'Ntcheu', 'Africa/Blantyre'),
(1907, 454, 'Nkhata Bay', 'Africa/Blantyre'),
(1908, 454, 'Nkhotakota', 'Africa/Blantyre'),
(1909, 454, 'Nsanje', 'Africa/Blantyre'),
(1910, 454, 'Ntchisi', 'Africa/Blantyre'),
(1911, 454, 'Rumphi', 'Africa/Blantyre'),
(1912, 454, 'Salima', 'Africa/Blantyre'),
(1913, 454, 'Zomba', 'Africa/Blantyre'),
(1914, 454, 'Blantyre', 'Africa/Blantyre'),
(1915, 454, 'Mwanza', 'Africa/Blantyre'),
(1916, 454, 'Balaka', 'Africa/Blantyre'),
(1917, 454, 'Likoma', 'Africa/Blantyre'),
(1918, 454, 'Machinga', 'Africa/Blantyre'),
(1919, 454, 'Mulanje', 'Africa/Blantyre'),
(1920, 454, 'Phalombe', 'Africa/Blantyre'),
(1921, 458, 'Johor', 'Asia/Kuala_Lumpur'),
(1922, 458, 'Kedah', 'Asia/Kuala_Lumpur'),
(1923, 458, 'Kelantan', 'Asia/Kuala_Lumpur'),
(1924, 458, 'Melaka', 'Asia/Kuala_Lumpur'),
(1925, 458, 'Negeri Sembilan', 'Asia/Kuala_Lumpur'),
(1926, 458, 'Pahang', 'Asia/Kuala_Lumpur'),
(1927, 458, 'Perak', 'Asia/Kuala_Lumpur'),
(1928, 458, 'Perlis', 'Asia/Kuala_Lumpur'),
(1929, 458, 'Pulau Pinang', 'Asia/Kuala_Lumpur'),
(1930, 458, 'Sarawak', 'Asia/Kuching'),
(1931, 458, 'Selangor', 'Asia/Kuala_Lumpur'),
(1932, 458, 'Terengganu', 'Asia/Kuala_Lumpur'),
(1933, 458, 'Kuala Lumpur', 'Asia/Kuala_Lumpur'),
(1934, 458, 'Federal Territory of Labuan', 'Asia/Kuala_Lumpur'),
(1935, 458, 'Sabah', 'Asia/Kuching'),
(1936, 458, 'Putrajaya', 'Asia/Kuala_Lumpur'),
(1937, 462, 'Maale', 'Indian/Maldives'),
(1938, 462, 'Seenu', 'Indian/Maldives'),
(1939, 462, 'Alifu Atholhu', 'Indian/Maldives'),
(1940, 462, 'Lhaviyani Atholhu', 'Indian/Maldives'),
(1941, 462, 'Vaavu Atholhu', 'Indian/Maldives'),
(1942, 462, 'Laamu', 'Indian/Maldives'),
(1943, 462, 'Haa Alifu Atholhu', 'Indian/Maldives'),
(1944, 462, 'Thaa Atholhu', 'Indian/Maldives'),
(1945, 462, 'Meemu Atholhu', 'Indian/Maldives'),
(1946, 462, 'Raa Atholhu', 'Indian/Maldives'),
(1947, 462, 'Faafu Atholhu', 'Indian/Maldives'),
(1948, 462, 'Dhaalu Atholhu', 'Indian/Maldives'),
(1949, 462, 'Baa Atholhu', 'Indian/Maldives'),
(1950, 462, 'Haa Dhaalu Atholhu', 'Indian/Maldives'),
(1951, 462, 'Shaviyani Atholhu', 'Indian/Maldives'),
(1952, 462, 'Noonu Atholhu', 'Indian/Maldives'),
(1953, 462, 'Kaafu Atholhu', 'Indian/Maldives'),
(1954, 462, 'Gaafu Alifu Atholhu', 'Indian/Maldives'),
(1955, 462, 'Gaafu Dhaalu Atholhu', 'Indian/Maldives'),
(1956, 462, 'Gnyaviyani Atoll', 'Indian/Maldives'),
(1957, 462, 'Alifu', 'Indian/Maldives'),
(1958, 462, 'Baa', 'Indian/Maldives'),
(1959, 462, 'Dhaalu', 'Indian/Maldives'),
(1960, 462, 'Faafu', 'Indian/Maldives'),
(1961, 462, 'Gaafu Alifu', 'Indian/Maldives'),
(1962, 462, 'Gaafu Dhaalu', 'Indian/Maldives'),
(1963, 462, 'Haa Alifu', 'Indian/Maldives'),
(1964, 462, 'Haa Dhaalu', 'Indian/Maldives'),
(1965, 462, 'Kaafu', 'Indian/Maldives'),
(1966, 462, 'Lhaviyani', 'Indian/Maldives'),
(1967, 462, 'Maale', 'Indian/Maldives'),
(1968, 462, 'Meemu', 'Indian/Maldives'),
(1969, 462, 'Gnaviyani', 'Indian/Maldives'),
(1970, 462, 'Noonu', 'Indian/Maldives'),
(1971, 462, 'Raa', 'Indian/Maldives'),
(1972, 462, 'Shaviyani', 'Indian/Maldives'),
(1973, 462, 'Thaa', 'Indian/Maldives'),
(1974, 462, 'Vaavu', 'Indian/Maldives'),
(1975, 466, 'Bamako', 'Africa/Bamako'),
(1976, 466, 'Gao', 'Africa/Bamako'),
(1977, 466, 'Kayes', 'Africa/Bamako'),
(1978, 466, 'Mopti', 'Africa/Bamako'),
(1979, 466, 'Ségou', 'Africa/Bamako'),
(1980, 466, 'Sikasso', 'Africa/Bamako'),
(1981, 466, 'Koulikoro', 'Africa/Bamako'),
(1982, 466, 'Tombouctou', 'Africa/Bamako'),
(1983, 466, 'Gao', 'Africa/Bamako'),
(1984, 466, 'Kidal', 'Africa/Bamako'),
(1985, 470, 'Malta', 'Europe/Malta'),
(1986, 474, 'Martinique', 'America/Martinique'),
(1987, 478, 'Nouakchott', 'Africa/Nouakchott'),
(1988, 478, 'Hodh Ech Chargui', 'Africa/Nouakchott'),
(1989, 478, 'Hodh El Gharbi', 'Africa/Nouakchott'),
(1990, 478, 'Assaba', 'Africa/Nouakchott'),
(1991, 478, 'Gorgol', 'Africa/Nouakchott'),
(1992, 478, 'Brakna', 'Africa/Nouakchott'),
(1993, 478, 'Trarza', 'Africa/Nouakchott'),
(1994, 478, 'Adrar', 'Africa/Nouakchott'),
(1995, 478, 'Dakhlet Nouadhibou', 'Africa/Nouakchott'),
(1996, 478, 'Tagant', 'Africa/Nouakchott'),
(1997, 478, 'Guidimaka', 'Africa/Nouakchott'),
(1998, 478, 'Tiris Zemmour', 'Africa/Nouakchott'),
(1999, 478, 'Inchiri', 'Africa/Nouakchott'),
(2000, 480, 'Black River', 'Indian/Mauritius'),
(2001, 480, 'Flacq', 'Indian/Mauritius'),
(2002, 480, 'Grand Port', 'Indian/Mauritius'),
(2003, 480, 'Moka', 'Indian/Mauritius'),
(2004, 480, 'Pamplemousses', 'Indian/Mauritius'),
(2005, 480, 'Plaines Wilhems', 'Indian/Mauritius'),
(2006, 480, 'Port Louis', 'Indian/Mauritius'),
(2007, 480, 'Rivière du Rempart', 'Indian/Mauritius'),
(2008, 480, 'Savanne', 'Indian/Mauritius'),
(2009, 480, 'Agalega Islands', 'Indian/Mauritius'),
(2010, 480, 'Cargados Carajos', 'Indian/Mauritius'),
(2011, 480, 'Rodrigues', 'Indian/Mauritius'),
(2012, 484, 'Aguascalientes', 'America/Mexico_City'),
(2013, 484, 'Baja California', 'America/Tijuana'),
(2014, 484, 'Baja California Sur', 'America/Mazatlan'),
(2015, 484, 'Campeche', 'America/Merida'),
(2016, 484, 'Chiapas', 'America/Mexico_City'),
(2017, 484, 'Chihuahua', 'America/Chihuahua'),
(2018, 484, 'Coahuila', 'America/Monterrey'),
(2019, 484, 'Colima', 'America/Mexico_City'),
(2020, 484, 'The Federal District', 'America/Mexico_City'),
(2021, 484, 'Durango', 'America/Monterrey'),
(2022, 484, 'Guanajuato', 'America/Mexico_City'),
(2023, 484, 'Guerrero', 'America/Mexico_City'),
(2024, 484, 'Hidalgo', 'America/Mexico_City'),
(2025, 484, 'Jalisco', 'America/Mexico_City'),
(2026, 484, 'México', 'America/Mexico_City'),
(2027, 484, 'Michoacán', 'America/Mexico_City'),
(2028, 484, 'Morelos', 'America/Mexico_City'),
(2029, 484, 'Nayarit', 'America/Mazatlan'),
(2030, 484, 'Nuevo León', 'America/Monterrey'),
(2031, 484, 'Oaxaca', 'America/Mexico_City'),
(2032, 484, 'Puebla', 'America/Mexico_City'),
(2033, 484, 'Querétaro', 'America/Mexico_City'),
(2034, 484, 'Quintana Roo', 'America/Cancun'),
(2035, 484, 'San Luis Potosí', 'America/Mexico_City'),
(2036, 484, 'Sinaloa', 'America/Mazatlan'),
(2037, 484, 'Sonora', 'America/Hermosillo'),
(2038, 484, 'Tabasco', 'America/Mexico_City'),
(2039, 484, 'Tamaulipas', 'America/Monterrey'),
(2040, 484, 'Tlaxcala', 'America/Mexico_City'),
(2041, 484, 'Veracruz-Llave', 'America/Mexico_City'),
(2042, 484, 'Yucatán', 'America/Merida'),
(2043, 484, 'Zacatecas', 'America/Mexico_City'),
(2044, 492, 'Monaco', 'Europe/Monaco'),
(2045, 496, 'Arhangay', 'Asia/Ulaanbaatar'),
(2046, 496, 'Bayanhongor', 'Asia/Ulaanbaatar'),
(2047, 496, 'Bayan-Ölgiy', 'Asia/Hovd'),
(2048, 496, 'East Aimak', 'Asia/Ulaanbaatar'),
(2049, 496, 'East Gobi Aymag', 'Asia/Ulaanbaatar'),
(2050, 496, 'Middle Govĭ', 'Asia/Ulaanbaatar'),
(2051, 496, 'Dzavhan', 'Asia/Hovd'),
(2052, 496, 'Govĭ-Altay', 'Asia/Hovd'),
(2053, 496, 'Hentiy', 'Asia/Ulaanbaatar'),
(2054, 496, 'Hovd', 'Asia/Hovd'),
(2055, 496, 'Hövsgöl', 'Asia/Ulaanbaatar'),
(2056, 496, 'South Gobi Aimak', 'Asia/Ulaanbaatar'),
(2057, 496, 'South Hangay', 'Asia/Ulaanbaatar'),
(2058, 496, 'Selenge', 'Asia/Ulaanbaatar'),
(2059, 496, 'Sühbaatar', 'Asia/Choibalsan'),
(2060, 496, 'Central Aimak', 'Asia/Ulaanbaatar'),
(2061, 496, 'Uvs', 'Asia/Hovd'),
(2062, 496, 'Ulaanbaatar', 'Asia/Ulaanbaatar'),
(2063, 496, 'Bulgan', 'Asia/Ulaanbaatar'),
(2064, 496, 'Darhan Uul', 'Asia/Ulaanbaatar'),
(2065, 496, 'Govĭ-Sumber', 'Asia/Ulaanbaatar'),
(2066, 496, 'Orhon', 'Asia/Ulaanbaatar'),
(2067, 498, 'Ungheni Judetul', 'Europe/Chisinau'),
(2068, 498, 'Balti', 'Europe/Chisinau'),
(2069, 498, 'Cahul', 'Europe/Chisinau'),
(2070, 498, 'Stinga Nistrului', 'Europe/Chisinau'),
(2071, 498, 'Edinet', 'Europe/Chisinau'),
(2072, 498, 'Găgăuzia', 'Europe/Chisinau'),
(2073, 498, 'Lapusna', 'Europe/Chisinau'),
(2074, 498, 'Orhei', 'Europe/Chisinau'),
(2075, 498, 'Soroca', 'Europe/Chisinau'),
(2076, 498, 'Tighina', 'Europe/Chisinau'),
(2077, 498, 'Ungheni', 'Europe/Chisinau'),
(2078, 498, 'Chişinău', 'Europe/Chisinau'),
(2079, 498, 'Stînga Nistrului', 'Europe/Chisinau'),
(2080, 498, 'Raionul Anenii Noi', 'Europe/Chisinau'),
(2081, 498, 'Bălţi', 'Europe/Chisinau'),
(2082, 498, 'Raionul Basarabeasca', 'Europe/Chisinau'),
(2083, 498, 'Bender', 'Europe/Chisinau'),
(2084, 498, 'Raionul Briceni', 'Europe/Chisinau'),
(2085, 498, 'Raionul Cahul', 'Europe/Chisinau'),
(2086, 498, 'Raionul Cantemir', 'Europe/Chisinau'),
(2087, 498, 'Călăraşi', 'Europe/Chisinau'),
(2088, 498, 'Căuşeni', 'Europe/Chisinau'),
(2089, 498, 'Raionul Cimişlia', 'Europe/Chisinau'),
(2090, 498, 'Raionul Criuleni', 'Europe/Chisinau'),
(2091, 498, 'Raionul Donduşeni', 'Europe/Chisinau'),
(2092, 498, 'Raionul Drochia', 'Europe/Chisinau'),
(2093, 498, 'Dubăsari', 'Europe/Chisinau'),
(2094, 498, 'Raionul Edineţ', 'Europe/Chisinau'),
(2095, 498, 'Raionul Făleşti', 'Europe/Chisinau'),
(2096, 498, 'Raionul Floreşti', 'Europe/Chisinau'),
(2097, 498, 'Raionul Glodeni', 'Europe/Chisinau'),
(2098, 498, 'Raionul Hînceşti', 'Europe/Chisinau'),
(2099, 498, 'Raionul Ialoveni', 'Europe/Chisinau'),
(2100, 498, 'Raionul Leova', 'Europe/Chisinau'),
(2101, 498, 'Raionul Nisporeni', 'Europe/Chisinau'),
(2102, 498, 'Raionul Ocniţa', 'Europe/Chisinau'),
(2103, 498, 'Raionul Orhei', 'Europe/Chisinau'),
(2104, 498, 'Raionul Rezina', 'Europe/Chisinau'),
(2105, 498, 'Raionul Rîşcani', 'Europe/Chisinau'),
(2106, 498, 'Raionul Sîngerei', 'Europe/Chisinau'),
(2107, 498, 'Raionul Şoldăneşti', 'Europe/Chisinau'),
(2108, 498, 'Raionul Soroca', 'Europe/Chisinau'),
(2109, 498, 'Ştefan-Vodă', 'Europe/Chisinau'),
(2110, 498, 'Raionul Străşeni', 'Europe/Chisinau'),
(2111, 498, 'Raionul Taraclia', 'Europe/Chisinau'),
(2112, 498, 'Raionul Teleneşti', 'Europe/Chisinau'),
(2113, 498, 'Raionul Ungheni', 'Europe/Chisinau'),
(2114, 499, 'Opština Andrijevica', 'Europe/Podgorica'),
(2115, 499, 'Opština Bar', 'Europe/Podgorica'),
(2116, 499, 'Opština Berane', 'Europe/Podgorica'),
(2117, 499, 'Opština Bijelo Polje', 'Europe/Podgorica'),
(2118, 499, 'Opština Budva', 'Europe/Podgorica'),
(2119, 499, 'Opština Cetinje', 'Europe/Podgorica'),
(2120, 499, 'Opština Danilovgrad', 'Europe/Podgorica'),
(2121, 499, 'Opština Herceg Novi', 'Europe/Podgorica'),
(2122, 499, 'Opština Kolašin', 'Europe/Podgorica'),
(2123, 499, 'Opština Kotor', 'Europe/Podgorica'),
(2124, 499, 'Opština Mojkovac', 'Europe/Podgorica'),
(2125, 499, 'Opština Nikšić', 'Europe/Podgorica'),
(2126, 499, 'Opština Plav', 'Europe/Podgorica'),
(2127, 499, 'Opština Pljevlja', 'Europe/Podgorica'),
(2128, 499, 'Opština Plužine', 'Europe/Podgorica'),
(2129, 499, 'Opština Podgorica', 'Europe/Podgorica'),
(2130, 499, 'Opština Rožaje', 'Europe/Podgorica'),
(2131, 499, 'Opština Šavnik', 'Europe/Podgorica'),
(2132, 499, 'Opština Tivat', 'Europe/Podgorica'),
(2133, 499, 'Opština Ulcinj', 'Europe/Podgorica'),
(2134, 499, 'Opština Žabljak', 'Europe/Podgorica'),
(2135, 500, 'Saint Anthony', 'America/Montserrat'),
(2136, 500, 'Saint Georges', 'America/Montserrat'),
(2137, 500, 'Saint Peter', 'America/Montserrat'),
(2138, 504, 'Agadir', 'Africa/Casablanca'),
(2139, 504, 'Al Hoceïma', 'Africa/Casablanca'),
(2140, 504, 'Azizal', 'Africa/Casablanca'),
(2141, 504, 'Ben Slimane', 'Africa/Casablanca'),
(2142, 504, 'Beni Mellal', 'Africa/Casablanca'),
(2143, 504, 'Boulemane', 'Africa/Casablanca'),
(2144, 504, 'Casablanca', 'Africa/Casablanca'),
(2145, 504, 'Chaouen', 'Africa/Casablanca'),
(2146, 504, 'El Jadida', 'Africa/Casablanca'),
(2147, 504, 'El Kelaa des Srarhna', 'Africa/Casablanca'),
(2148, 504, 'Er Rachidia', 'Africa/Casablanca'),
(2149, 504, 'Essaouira', 'Africa/Casablanca'),
(2150, 504, 'Fes', 'Africa/Casablanca'),
(2151, 504, 'Figuig', 'Africa/Casablanca'),
(2152, 504, 'Kenitra', 'Africa/Casablanca'),
(2153, 504, 'Khemisset', 'Africa/Casablanca'),
(2154, 504, 'Khenifra', 'Africa/Casablanca'),
(2155, 504, 'Khouribga', 'Africa/Casablanca'),
(2156, 504, 'Marrakech', 'Africa/Casablanca'),
(2157, 504, 'Meknes', 'Africa/Casablanca'),
(2158, 504, 'Nador', 'Africa/Casablanca'),
(2159, 504, 'Ouarzazate', 'Africa/Casablanca'),
(2160, 504, 'Oujda', 'Africa/Casablanca'),
(2161, 504, 'Rabat-Sale', 'Africa/Casablanca'),
(2162, 504, 'Safi', 'Africa/Casablanca'),
(2163, 504, 'Settat', 'Africa/Casablanca'),
(2164, 504, 'Tanger', 'Africa/Casablanca'),
(2165, 504, 'Tata', 'Africa/Casablanca'),
(2166, 504, 'Taza', 'Africa/Casablanca'),
(2167, 504, 'Tiznit', 'Africa/Casablanca'),
(2168, 504, 'Guelmim', 'Africa/Casablanca'),
(2169, 504, 'Ifrane', 'Africa/Casablanca'),
(2170, 504, 'Laayoune', 'Africa/Casablanca'),
(2171, 504, 'Tan-Tan', 'Africa/Casablanca'),
(2172, 504, 'Taounate', 'Africa/Casablanca'),
(2173, 504, 'Sidi Kacem', 'Africa/Casablanca'),
(2174, 504, 'Taroudannt', 'Africa/Casablanca'),
(2175, 504, 'Tetouan', 'Africa/Casablanca'),
(2176, 504, 'Larache', 'Africa/Casablanca'),
(2177, 504, 'Grand Casablanca', 'Africa/Casablanca'),
(2178, 504, 'Fès-Boulemane', 'Africa/Casablanca'),
(2179, 504, 'Marrakech-Tensift-Al Haouz', 'Africa/Casablanca'),
(2180, 504, 'Meknès-Tafilalet', 'Africa/Casablanca'),
(2181, 504, 'Rabat-Salé-Zemmour-Zaër', 'Africa/Casablanca'),
(2182, 504, 'Chaouia-Ouardigha', 'Africa/Casablanca'),
(2183, 504, 'Doukkala-Abda', 'Africa/Casablanca'),
(2184, 504, 'Gharb-Chrarda-Beni Hssen', 'Africa/Casablanca'),
(2185, 504, 'Guelmim-Es Smara', 'Africa/Casablanca'),
(2186, 504, 'Oriental', 'Africa/Casablanca'),
(2187, 504, 'Souss-Massa-Drâa', 'Africa/Casablanca'),
(2188, 504, 'Tadla-Azilal', 'Africa/Casablanca'),
(2189, 504, 'Tanger-Tétouan', 'Africa/Casablanca'),
(2190, 504, 'Taza-Al Hoceima-Taounate', 'Africa/Casablanca'),
(2191, 504, 'Laâyoune-Boujdour-Sakia El Hamra', 'Africa/Casablanca'),
(2192, 508, 'Cabo Delgado', 'Africa/Maputo'),
(2193, 508, 'Gaza', 'Africa/Maputo'),
(2194, 508, 'Inhambane', 'Africa/Maputo'),
(2195, 508, 'Maputo Province', 'Africa/Maputo'),
(2196, 508, 'Sofala', 'Africa/Maputo'),
(2197, 508, 'Nampula', 'Africa/Maputo'),
(2198, 508, 'Niassa', 'Africa/Maputo'),
(2199, 508, 'Tete', 'Africa/Maputo'),
(2200, 508, 'Zambézia', 'Africa/Maputo'),
(2201, 508, 'Manica', 'Africa/Maputo'),
(2202, 508, 'Maputo', 'Africa/Maputo'),
(2203, 512, 'Ad Dākhilīyah', 'Asia/Muscat'),
(2204, 512, 'Al Bāţinah', 'Asia/Muscat'),
(2205, 512, 'Al Wusţá', 'Asia/Muscat'),
(2206, 512, 'Ash Sharqīyah', 'Asia/Muscat'),
(2207, 512, 'Masqaţ', 'Asia/Muscat'),
(2208, 512, 'Musandam', 'Asia/Muscat'),
(2209, 512, 'Z̧ufār', 'Asia/Muscat'),
(2210, 512, 'Az̧ Z̧āhirah', 'Asia/Muscat'),
(2211, 512, 'Muḩāfaz̧at al Buraymī', 'Asia/Muscat'),
(2212, 516, 'Bethanien', 'Africa/Windhoek'),
(2213, 516, 'Caprivi Oos', 'Africa/Windhoek'),
(2214, 516, 'Kaokoland', 'Africa/Windhoek'),
(2215, 516, 'Otjiwarongo', 'Africa/Windhoek'),
(2216, 516, 'Outjo', 'Africa/Windhoek'),
(2217, 516, 'Owambo', 'Africa/Windhoek'),
(2218, 516, 'Khomas', 'Africa/Windhoek'),
(2219, 516, 'Kavango', 'Africa/Windhoek'),
(2220, 516, 'Caprivi', 'Africa/Windhoek'),
(2221, 516, 'Erongo', 'Africa/Windhoek'),
(2222, 516, 'Hardap', 'Africa/Windhoek'),
(2223, 516, 'Karas', 'Africa/Windhoek'),
(2224, 516, 'Kunene', 'Africa/Windhoek'),
(2225, 516, 'Ohangwena', 'Africa/Windhoek'),
(2226, 516, 'Okavango', 'Africa/Windhoek'),
(2227, 516, 'Omaheke', 'Africa/Windhoek'),
(2228, 516, 'Omusati', 'Africa/Windhoek'),
(2229, 516, 'Oshana', 'Africa/Windhoek'),
(2230, 516, 'Oshikoto', 'Africa/Windhoek'),
(2231, 516, 'Otjozondjupa', 'Africa/Windhoek'),
(2232, 520, 'Aiwo', 'Pacific/Nauru'),
(2233, 520, 'Anabar', 'Pacific/Nauru'),
(2234, 520, 'Anetan', 'Pacific/Nauru'),
(2235, 520, 'Anibare', 'Pacific/Nauru'),
(2236, 520, 'Baiti', 'Pacific/Nauru'),
(2237, 520, 'Boe', 'Pacific/Nauru'),
(2238, 520, 'Buada', 'Pacific/Nauru'),
(2239, 520, 'Denigomodu', 'Pacific/Nauru'),
(2240, 520, 'Ewa', 'Pacific/Nauru'),
(2241, 520, 'Ijuw', 'Pacific/Nauru'),
(2242, 520, 'Meneng', 'Pacific/Nauru'),
(2243, 520, 'Nibok', 'Pacific/Nauru'),
(2244, 520, 'Uaboe', 'Pacific/Nauru'),
(2245, 520, 'Yaren', 'Pacific/Nauru'),
(2246, 524, 'Bāgmatī', 'Asia/Kathmandu'),
(2247, 524, 'Bherī', 'Asia/Kathmandu'),
(2248, 524, 'Dhawalāgiri', 'Asia/Kathmandu'),
(2249, 524, 'Gandakī', 'Asia/Kathmandu'),
(2250, 524, 'Janakpur', 'Asia/Kathmandu'),
(2251, 524, 'Karnālī', 'Asia/Kathmandu'),
(2252, 524, 'Kosī', 'Asia/Kathmandu'),
(2253, 524, 'Lumbinī', 'Asia/Kathmandu'),
(2254, 524, 'Mahākālī', 'Asia/Kathmandu'),
(2255, 524, 'Mechī', 'Asia/Kathmandu'),
(2256, 524, 'Nārāyanī', 'Asia/Kathmandu'),
(2257, 524, 'Rāptī', 'Asia/Kathmandu'),
(2258, 524, 'Sagarmāthā', 'Asia/Kathmandu'),
(2259, 524, 'Setī', 'Asia/Kathmandu'),
(2260, 528, 'Provincie Drenthe', 'Europe/Amsterdam'),
(2261, 528, 'Provincie Friesland', 'Europe/Amsterdam'),
(2262, 528, 'Gelderland', 'Europe/Amsterdam'),
(2263, 528, 'Groningen', 'Europe/Amsterdam'),
(2264, 528, 'Limburg', 'Europe/Amsterdam'),
(2265, 528, 'North Brabant', 'Europe/Amsterdam'),
(2266, 528, 'North Holland', 'Europe/Amsterdam'),
(2267, 528, 'Utrecht', 'Europe/Amsterdam'),
(2268, 528, 'Zeeland', 'Europe/Amsterdam'),
(2269, 528, 'South Holland', 'Europe/Amsterdam'),
(2270, 528, 'Overijssel', 'Europe/Amsterdam'),
(2271, 528, 'Flevoland', 'Europe/Amsterdam'),
(2272, 530, 'Netherlands Antilles', 'America/Curacao'),
(2273, 533, 'Aruba', 'America/Aruba'),
(2274, 548, 'Ambrym', 'Pacific/Efate'),
(2275, 548, 'Aoba/Maéwo', 'Pacific/Efate'),
(2276, 548, 'Torba', 'Pacific/Efate'),
(2277, 548, 'Éfaté', 'Pacific/Efate'),
(2278, 548, 'Épi', 'Pacific/Efate'),
(2279, 548, 'Malakula', 'Pacific/Efate'),
(2280, 548, 'Paama', 'Pacific/Efate'),
(2281, 548, 'Pentecôte', 'Pacific/Efate'),
(2282, 548, 'Sanma', 'Pacific/Efate'),
(2283, 548, 'Shepherd', 'Pacific/Efate'),
(2284, 548, 'Tafea', 'Pacific/Efate'),
(2285, 548, 'Malampa', 'Pacific/Efate'),
(2286, 548, 'Penama', 'Pacific/Efate'),
(2287, 548, 'Shefa', 'Pacific/Efate'),
(2288, 554, 'Tasman', 'Pacific/Auckland'),
(2289, 554, 'Auckland', 'Pacific/Auckland'),
(2290, 554, 'Bay of Plenty', 'Pacific/Auckland'),
(2291, 554, 'Canterbury', 'Pacific/Auckland'),
(2292, 554, 'Gisborne', 'Pacific/Auckland'),
(2293, 554, 'Hawkeʼs Bay', 'Pacific/Auckland'),
(2294, 554, 'Manawatu-Wanganui', 'Pacific/Auckland'),
(2295, 554, 'Marlborough', 'Pacific/Auckland'),
(2296, 554, 'Nelson', 'Pacific/Auckland'),
(2297, 554, 'Northland', 'Pacific/Auckland'),
(2298, 554, 'Otago', 'Pacific/Auckland'),
(2299, 554, 'Southland', 'Pacific/Auckland'),
(2300, 554, 'Taranaki', 'Pacific/Auckland'),
(2301, 554, 'Waikato', 'Pacific/Auckland'),
(2302, 554, 'Wellington', 'Pacific/Auckland'),
(2303, 554, 'West Coast', 'Pacific/Auckland'),
(2304, 558, 'Boaco', 'America/Managua'),
(2305, 558, 'Carazo', 'America/Managua'),
(2306, 558, 'Chinandega', 'America/Managua'),
(2307, 558, 'Chontales', 'America/Managua'),
(2308, 558, 'Estelí', 'America/Managua'),
(2309, 558, 'Granada', 'America/Managua'),
(2310, 558, 'Jinotega', 'America/Managua'),
(2311, 558, 'León', 'America/Managua'),
(2312, 558, 'Madriz', 'America/Managua'),
(2313, 558, 'Managua', 'America/Managua'),
(2314, 558, 'Masaya', 'America/Managua'),
(2315, 558, 'Matagalpa', 'America/Managua'),
(2316, 558, 'Nueva Segovia', 'America/Managua'),
(2317, 558, 'Río San Juan', 'America/Managua'),
(2318, 558, 'Rivas', 'America/Managua'),
(2319, 558, 'Ogun State', 'America/Managua'),
(2320, 558, 'Atlántico Norte', 'America/Managua'),
(2321, 558, 'Atlántico Sur', 'America/Managua'),
(2322, 562, 'Agadez', 'Africa/Niamey'),
(2323, 562, 'Diffa', 'Africa/Niamey'),
(2324, 562, 'Dosso', 'Africa/Niamey'),
(2325, 562, 'Maradi', 'Africa/Niamey');
INSERT INTO `country_region` (`id`, `country_id`, `name`, `timezone`) VALUES
(2326, 562, 'Tahoua', 'Africa/Niamey'),
(2327, 562, 'Zinder', 'Africa/Niamey'),
(2328, 562, 'Niamey', 'Africa/Niamey'),
(2329, 562, 'Tillabéri', 'Africa/Niamey'),
(2330, 566, 'Lagos', 'Africa/Lagos'),
(2331, 566, 'Abuja Federal Capital Territory', 'Africa/Lagos'),
(2332, 566, 'Ogun', 'Africa/Lagos'),
(2333, 566, 'Akwa Ibom', 'Africa/Lagos'),
(2334, 566, 'Cross River', 'Africa/Lagos'),
(2335, 566, 'Kaduna', 'Africa/Lagos'),
(2336, 566, 'Katsina', 'Africa/Lagos'),
(2337, 566, 'Anambra', 'Africa/Lagos'),
(2338, 566, 'Benue', 'Africa/Lagos'),
(2339, 566, 'Borno', 'Africa/Lagos'),
(2340, 566, 'Imo', 'Africa/Lagos'),
(2341, 566, 'Kano', 'Africa/Lagos'),
(2342, 566, 'Kwara', 'Africa/Lagos'),
(2343, 566, 'Niger', 'Africa/Lagos'),
(2344, 566, 'Oyo', 'Africa/Lagos'),
(2345, 566, 'Adamawa', 'Africa/Lagos'),
(2346, 566, 'Delta', 'Africa/Lagos'),
(2347, 566, 'Edo', 'Africa/Lagos'),
(2348, 566, 'Jigawa', 'Africa/Lagos'),
(2349, 566, 'Kebbi', 'Africa/Lagos'),
(2350, 566, 'Kogi', 'Africa/Lagos'),
(2351, 566, 'Osun', 'Africa/Lagos'),
(2352, 566, 'Taraba', 'Africa/Lagos'),
(2353, 566, 'Yobe', 'Africa/Lagos'),
(2354, 566, 'Abia', 'Africa/Lagos'),
(2355, 566, 'Bauchi', 'Africa/Lagos'),
(2356, 566, 'Enugu', 'Africa/Lagos'),
(2357, 566, 'Ondo', 'Africa/Lagos'),
(2358, 566, 'Plateau', 'Africa/Lagos'),
(2359, 566, 'Rivers', 'Africa/Lagos'),
(2360, 566, 'Sokoto', 'Africa/Lagos'),
(2361, 566, 'Bayelsa', 'Africa/Lagos'),
(2362, 566, 'Ebonyi', 'Africa/Lagos'),
(2363, 566, 'Ekiti', 'Africa/Lagos'),
(2364, 566, 'Gombe', 'Africa/Lagos'),
(2365, 566, 'Nassarawa', 'Africa/Lagos'),
(2366, 566, 'Zamfara', 'Africa/Lagos'),
(2367, 570, 'Niue', 'Pacific/Niue'),
(2368, 574, 'Norfolk Island', 'Pacific/Norfolk'),
(2369, 578, 'Svalbard', 'Europe/Oslo'),
(2370, 578, 'Akershus', 'Europe/Oslo'),
(2371, 578, 'Aust-Agder', 'Europe/Oslo'),
(2372, 578, 'Buskerud', 'Europe/Oslo'),
(2373, 578, 'Finnmark', 'Europe/Oslo'),
(2374, 578, 'Hedmark', 'Europe/Oslo'),
(2375, 578, 'Hordaland', 'Europe/Oslo'),
(2376, 578, 'Møre og Romsdal', 'Europe/Oslo'),
(2377, 578, 'Nordland', 'Europe/Oslo'),
(2378, 578, 'Nord-Trøndelag', 'Europe/Oslo'),
(2379, 578, 'Oppland', 'Europe/Oslo'),
(2380, 578, 'Oslo county', 'Europe/Oslo'),
(2381, 578, 'Østfold', 'Europe/Oslo'),
(2382, 578, 'Rogaland', 'Europe/Oslo'),
(2383, 578, 'Sogn og Fjordane', 'Europe/Oslo'),
(2384, 578, 'Sør-Trøndelag', 'Europe/Oslo'),
(2385, 578, 'Telemark', 'Europe/Oslo'),
(2386, 578, 'Troms', 'Europe/Oslo'),
(2387, 578, 'Vest-Agder', 'Europe/Oslo'),
(2388, 578, 'Vestfold', 'Europe/Oslo'),
(2389, 583, 'Kosrae', 'Pacific/Kosrae'),
(2390, 583, 'Pohnpei', 'Pacific/Ponape'),
(2391, 583, 'Chuuk', 'Pacific/Truk'),
(2392, 583, 'Yap', 'Pacific/Truk'),
(2393, 584, 'Marshall Islands', 'Pacific/Majuro'),
(2394, 585, 'State of Ngeremlengui', 'Pacific/Palau'),
(2395, 586, 'Federally Administered Tribal Areas', 'Asia/Karachi'),
(2396, 586, 'Balochistān', 'Asia/Karachi'),
(2397, 586, 'North West Frontier Province', 'Asia/Karachi'),
(2398, 586, 'Punjab', 'Asia/Karachi'),
(2399, 586, 'Sindh', 'Asia/Karachi'),
(2400, 586, 'Azad Kashmir', 'Asia/Karachi'),
(2401, 586, 'Gilgit-Baltistan', 'Asia/Karachi'),
(2402, 586, 'Islāmābād', 'Asia/Karachi'),
(2403, 591, 'Bocas del Toro', 'America/Panama'),
(2404, 591, 'Chiriquí', 'America/Panama'),
(2405, 591, 'Coclé', 'America/Panama'),
(2406, 591, 'Colón', 'America/Panama'),
(2407, 591, 'Darién', 'America/Panama'),
(2408, 591, 'Herrera', 'America/Panama'),
(2409, 591, 'Los Santos', 'America/Panama'),
(2410, 591, 'Panamá', 'America/Panama'),
(2411, 591, 'San Blas', 'America/Panama'),
(2412, 591, 'Veraguas', 'America/Panama'),
(2413, 598, 'Central', 'Pacific/Port_Moresby'),
(2414, 598, 'Gulf', 'Pacific/Port_Moresby'),
(2415, 598, 'Milne Bay', 'Pacific/Port_Moresby'),
(2416, 598, 'Northern', 'Pacific/Port_Moresby'),
(2417, 598, 'Southern Highlands', 'Pacific/Port_Moresby'),
(2418, 598, 'Western', 'Pacific/Port_Moresby'),
(2419, 598, 'Bougainville', 'Pacific/Port_Moresby'),
(2420, 598, 'Chimbu', 'Pacific/Port_Moresby'),
(2421, 598, 'Eastern Highlands', 'Pacific/Port_Moresby'),
(2422, 598, 'East New Britain', 'Pacific/Port_Moresby'),
(2423, 598, 'East Sepik', 'Pacific/Port_Moresby'),
(2424, 598, 'Madang', 'Pacific/Port_Moresby'),
(2425, 598, 'Manus', 'Pacific/Port_Moresby'),
(2426, 598, 'Morobe', 'Pacific/Port_Moresby'),
(2427, 598, 'New Ireland', 'Pacific/Port_Moresby'),
(2428, 598, 'Western Highlands', 'Pacific/Port_Moresby'),
(2429, 598, 'West New Britain', 'Pacific/Port_Moresby'),
(2430, 598, 'Sandaun', 'Pacific/Port_Moresby'),
(2431, 598, 'Enga', 'Pacific/Port_Moresby'),
(2432, 598, 'National Capital', 'Pacific/Port_Moresby'),
(2433, 600, 'Alto Paraná', 'America/Asuncion'),
(2434, 600, 'Amambay', 'America/Asuncion'),
(2435, 600, 'Caaguazú', 'America/Asuncion'),
(2436, 600, 'Caazapá', 'America/Asuncion'),
(2437, 600, 'Central', 'America/Asuncion'),
(2438, 600, 'Concepción', 'America/Asuncion'),
(2439, 600, 'Cordillera', 'America/Asuncion'),
(2440, 600, 'Guairá', 'America/Asuncion'),
(2441, 600, 'Itapúa', 'America/Asuncion'),
(2442, 600, 'Misiones', 'America/Asuncion'),
(2443, 600, 'Ñeembucú', 'America/Asuncion'),
(2444, 600, 'Paraguarí', 'America/Asuncion'),
(2445, 600, 'Presidente Hayes', 'America/Asuncion'),
(2446, 600, 'San Pedro', 'America/Asuncion'),
(2447, 600, 'Canindeyú', 'America/Asuncion'),
(2448, 600, 'Asunción', 'America/Asuncion'),
(2449, 600, 'Departamento de Alto Paraguay', 'America/Asuncion'),
(2450, 600, 'Boquerón', 'America/Asuncion'),
(2451, 604, 'Amazonas', 'America/Lima'),
(2452, 604, 'Ancash', 'America/Lima'),
(2453, 604, 'Apurímac', 'America/Lima'),
(2454, 604, 'Arequipa', 'America/Lima'),
(2455, 604, 'Ayacucho', 'America/Lima'),
(2456, 604, 'Cajamarca', 'America/Lima'),
(2457, 604, 'Callao', 'America/Lima'),
(2458, 604, 'Cusco', 'America/Lima'),
(2459, 604, 'Huancavelica', 'America/Lima'),
(2460, 604, 'Huanuco', 'America/Lima'),
(2461, 604, 'Ica', 'America/Lima'),
(2462, 604, 'Junín', 'America/Lima'),
(2463, 604, 'La Libertad', 'America/Lima'),
(2464, 604, 'Lambayeque', 'America/Lima'),
(2465, 604, 'Lima', 'America/Lima'),
(2466, 604, 'Provincia de Lima', 'America/Lima'),
(2467, 604, 'Loreto', 'America/Lima'),
(2468, 604, 'Madre de Dios', 'America/Lima'),
(2469, 604, 'Moquegua', 'America/Lima'),
(2470, 604, 'Pasco', 'America/Lima'),
(2471, 604, 'Piura', 'America/Lima'),
(2472, 604, 'Puno', 'America/Lima'),
(2473, 604, 'San Martín', 'America/Lima'),
(2474, 604, 'Tacna', 'America/Lima'),
(2475, 604, 'Tumbes', 'America/Lima'),
(2476, 604, 'Ucayali', 'America/Lima'),
(2477, 608, 'Abra', 'Asia/Manila'),
(2478, 608, 'Agusan del Norte', 'Asia/Manila'),
(2479, 608, 'Agusan del Sur', 'Asia/Manila'),
(2480, 608, 'Aklan', 'Asia/Manila'),
(2481, 608, 'Albay', 'Asia/Manila'),
(2482, 608, 'Antique', 'Asia/Manila'),
(2483, 608, 'Bataan', 'Asia/Manila'),
(2484, 608, 'Batanes', 'Asia/Manila'),
(2485, 608, 'Batangas', 'Asia/Manila'),
(2486, 608, 'Benguet', 'Asia/Manila'),
(2487, 608, 'Bohol', 'Asia/Manila'),
(2488, 608, 'Bukidnon', 'Asia/Manila'),
(2489, 608, 'Bulacan', 'Asia/Manila'),
(2490, 608, 'Cagayan', 'Asia/Manila'),
(2491, 608, 'Camarines Norte', 'Asia/Manila'),
(2492, 608, 'Camarines Sur', 'Asia/Manila'),
(2493, 608, 'Camiguin', 'Asia/Manila'),
(2494, 608, 'Capiz', 'Asia/Manila'),
(2495, 608, 'Catanduanes', 'Asia/Manila'),
(2496, 608, 'Cebu', 'Asia/Manila'),
(2497, 608, 'Basilan', 'Asia/Manila'),
(2498, 608, 'Eastern Samar', 'Asia/Manila'),
(2499, 608, 'Davao del Sur', 'Asia/Manila'),
(2500, 608, 'Davao Oriental', 'Asia/Manila'),
(2501, 608, 'Ifugao', 'Asia/Manila'),
(2502, 608, 'Ilocos Norte', 'Asia/Manila'),
(2503, 608, 'Ilocos Sur', 'Asia/Manila'),
(2504, 608, 'Iloilo', 'Asia/Manila'),
(2505, 608, 'Isabela', 'Asia/Manila'),
(2506, 608, 'Laguna', 'Asia/Manila'),
(2507, 608, 'Lanao del Sur', 'Asia/Manila'),
(2508, 608, 'La Union', 'Asia/Manila'),
(2509, 608, 'Leyte', 'Asia/Manila'),
(2510, 608, 'Marinduque', 'Asia/Manila'),
(2511, 608, 'Masbate', 'Asia/Manila'),
(2512, 608, 'Occidental Mindoro', 'Asia/Manila'),
(2513, 608, 'Oriental Mindoro', 'Asia/Manila'),
(2514, 608, 'Misamis Oriental', 'Asia/Manila'),
(2515, 608, 'Mountain Province', 'Asia/Manila'),
(2516, 608, 'Negros Oriental', 'Asia/Manila'),
(2517, 608, 'Nueva Ecija', 'Asia/Manila'),
(2518, 608, 'Nueva Vizcaya', 'Asia/Manila'),
(2519, 608, 'Palawan', 'Asia/Manila'),
(2520, 608, 'Pampanga', 'Asia/Manila'),
(2521, 608, 'Pangasinan', 'Asia/Manila'),
(2522, 608, 'Rizal', 'Asia/Manila'),
(2523, 608, 'Romblon', 'Asia/Manila'),
(2524, 608, 'Samar', 'Asia/Manila'),
(2525, 608, 'Maguindanao', 'Asia/Manila'),
(2526, 608, 'Cotabato City', 'Asia/Manila'),
(2527, 608, 'Sorsogon', 'Asia/Manila'),
(2528, 608, 'Southern Leyte', 'Asia/Manila'),
(2529, 608, 'Sulu', 'Asia/Manila'),
(2530, 608, 'Surigao del Norte', 'Asia/Manila'),
(2531, 608, 'Surigao del Sur', 'Asia/Manila'),
(2532, 608, 'Tarlac', 'Asia/Manila'),
(2533, 608, 'Zambales', 'Asia/Manila'),
(2534, 608, 'Zamboanga del Norte', 'Asia/Manila'),
(2535, 608, 'Zamboanga del Sur', 'Asia/Manila'),
(2536, 608, 'Northern Samar', 'Asia/Manila'),
(2537, 608, 'Quirino', 'Asia/Manila'),
(2538, 608, 'Siquijor', 'Asia/Manila'),
(2539, 608, 'South Cotabato', 'Asia/Manila'),
(2540, 608, 'Sultan Kudarat', 'Asia/Manila'),
(2541, 608, 'Kalinga', 'Asia/Manila'),
(2542, 608, 'Apayao', 'Asia/Manila'),
(2543, 608, 'Tawi-Tawi', 'Asia/Manila'),
(2544, 608, 'Angeles', 'Asia/Manila'),
(2545, 608, 'Bacolod City', 'Asia/Manila'),
(2546, 608, 'Compostela Valley', 'Asia/Manila'),
(2547, 608, 'Baguio', 'Asia/Manila'),
(2548, 608, 'Davao del Norte', 'Asia/Manila'),
(2549, 608, 'Butuan', 'Asia/Manila'),
(2550, 608, 'Guimaras', 'Asia/Manila'),
(2551, 608, 'Lanao del Norte', 'Asia/Manila'),
(2552, 608, 'Misamis Occidental', 'Asia/Manila'),
(2553, 608, 'Caloocan', 'Asia/Manila'),
(2554, 608, 'Cavite', 'Asia/Manila'),
(2555, 608, 'Cebu City', 'Asia/Manila'),
(2556, 608, 'Cotabato', 'Asia/Manila'),
(2557, 608, 'Dagupan', 'Asia/Manila'),
(2558, 608, 'Cagayan de Oro', 'Asia/Manila'),
(2559, 608, 'Iligan', 'Asia/Manila'),
(2560, 608, 'Davao', 'Asia/Manila'),
(2561, 608, 'Las Piñas', 'Asia/Manila'),
(2562, 608, 'Malabon', 'Asia/Manila'),
(2563, 608, 'General Santos', 'Asia/Manila'),
(2564, 608, 'Muntinlupa', 'Asia/Manila'),
(2565, 608, 'Iloilo City', 'Asia/Manila'),
(2566, 608, 'Navotas', 'Asia/Manila'),
(2567, 608, 'Parañaque', 'Asia/Manila'),
(2568, 608, 'Quezon City', 'Asia/Manila'),
(2569, 608, 'Lapu-Lapu', 'Asia/Manila'),
(2570, 608, 'Taguig', 'Asia/Manila'),
(2571, 608, 'Valenzuela', 'Asia/Manila'),
(2572, 608, 'Lucena', 'Asia/Manila'),
(2573, 608, 'Mandaue', 'Asia/Manila'),
(2574, 608, 'Manila', 'Asia/Manila'),
(2575, 608, 'Zamboanga Sibugay', 'Asia/Manila'),
(2576, 608, 'Naga', 'Asia/Manila'),
(2577, 608, 'Olongapo', 'Asia/Manila'),
(2578, 608, 'Ormoc', 'Asia/Manila'),
(2579, 608, 'Santiago', 'Asia/Manila'),
(2580, 608, 'Pateros', 'Asia/Manila'),
(2581, 608, 'Pasay', 'Asia/Manila'),
(2582, 608, 'Puerto Princesa', 'Asia/Manila'),
(2583, 608, 'Quezon', 'Asia/Manila'),
(2584, 608, 'Tacloban', 'Asia/Manila'),
(2585, 608, 'Zamboanga City', 'Asia/Manila'),
(2586, 608, 'Aurora', 'Asia/Manila'),
(2587, 608, 'Negros Occidental', 'Asia/Manila'),
(2588, 608, 'Biliran', 'Asia/Manila'),
(2589, 608, 'Makati City', 'Asia/Manila'),
(2590, 608, 'Sarangani', 'Asia/Manila'),
(2591, 608, 'Mandaluyong City', 'Asia/Manila'),
(2592, 608, 'Marikina', 'Asia/Manila'),
(2593, 608, 'Pasig', 'Asia/Manila'),
(2594, 608, 'San Juan', 'Asia/Manila'),
(2595, 612, 'Pitcairn Islands', 'Pacific/Pitcairn'),
(2596, 616, 'Biala Podlaska', 'Europe/Warsaw'),
(2597, 616, 'Bialystok', 'Europe/Warsaw'),
(2598, 616, 'Bielsko', 'Europe/Warsaw'),
(2599, 616, 'Bydgoszcz', 'Europe/Warsaw'),
(2600, 616, 'Chelm', 'Europe/Warsaw'),
(2601, 616, 'Ciechanow', 'Europe/Warsaw'),
(2602, 616, 'Czestochowa', 'Europe/Warsaw'),
(2603, 616, 'Elblag', 'Europe/Warsaw'),
(2604, 616, 'Gdansk', 'Europe/Warsaw'),
(2605, 616, 'Gorzow', 'Europe/Warsaw'),
(2606, 616, 'Jelenia Gora', 'Europe/Warsaw'),
(2607, 616, 'Kalisz', 'Europe/Warsaw'),
(2608, 616, 'Katowice', 'Europe/Warsaw'),
(2609, 616, 'Kielce', 'Europe/Warsaw'),
(2610, 616, 'Konin', 'Europe/Warsaw'),
(2611, 616, 'Koszalin', 'Europe/Warsaw'),
(2612, 616, 'Krakow', 'Europe/Warsaw'),
(2613, 616, 'Krosno', 'Europe/Warsaw'),
(2614, 616, 'Legnica', 'Europe/Warsaw'),
(2615, 616, 'Leszno', 'Europe/Warsaw'),
(2616, 616, 'Lodz', 'Europe/Warsaw'),
(2617, 616, 'Lomza', 'Europe/Warsaw'),
(2618, 616, 'Lublin', 'Europe/Warsaw'),
(2619, 616, 'Nowy Sacz', 'Europe/Warsaw'),
(2620, 616, 'Olsztyn', 'Europe/Warsaw'),
(2621, 616, 'Opole', 'Europe/Warsaw'),
(2622, 616, 'Ostroleka', 'Europe/Warsaw'),
(2623, 616, 'Pita', 'Europe/Warsaw'),
(2624, 616, 'Piotrkow', 'Europe/Warsaw'),
(2625, 616, 'Plock', 'Europe/Warsaw'),
(2626, 616, 'Poznan', 'Europe/Warsaw'),
(2627, 616, 'Przemysl', 'Europe/Warsaw'),
(2628, 616, 'Radom', 'Europe/Warsaw'),
(2629, 616, 'Rzeszow', 'Europe/Warsaw'),
(2630, 616, 'Siedlce', 'Europe/Warsaw'),
(2631, 616, 'Sieradz', 'Europe/Warsaw'),
(2632, 616, 'Skierniewice', 'Europe/Warsaw'),
(2633, 616, 'Slupsk', 'Europe/Warsaw'),
(2634, 616, 'Suwalki', 'Europe/Warsaw'),
(2635, 616, 'Szczecin', 'Europe/Warsaw'),
(2636, 616, 'Tarnobrzeg', 'Europe/Warsaw'),
(2637, 616, 'Tarnow', 'Europe/Warsaw'),
(2638, 616, 'Torufi', 'Europe/Warsaw'),
(2639, 616, 'Walbrzych', 'Europe/Warsaw'),
(2640, 616, 'Warszawa', 'Europe/Warsaw'),
(2641, 616, 'Wloclawek', 'Europe/Warsaw'),
(2642, 616, 'Wroclaw', 'Europe/Warsaw'),
(2643, 616, 'Zamosc', 'Europe/Warsaw'),
(2644, 616, 'Zielona Gora', 'Europe/Warsaw'),
(2645, 616, 'Lower Silesian Voivodeship', 'Europe/Warsaw'),
(2646, 616, 'Kujawsko-Pomorskie Voivodship', 'Europe/Warsaw'),
(2647, 616, 'Łódź Voivodeship', 'Europe/Warsaw'),
(2648, 616, 'Lublin Voivodeship', 'Europe/Warsaw'),
(2649, 616, 'Lubusz Voivodship', 'Europe/Warsaw'),
(2650, 616, 'Lesser Poland Voivodeship', 'Europe/Warsaw'),
(2651, 616, 'Masovian Voivodeship', 'Europe/Warsaw'),
(2652, 616, 'Opole Voivodeship', 'Europe/Warsaw'),
(2653, 616, 'Subcarpathian Voivodeship', 'Europe/Warsaw'),
(2654, 616, 'Podlasie Voivodship', 'Europe/Warsaw'),
(2655, 616, 'Pomeranian Voivodeship', 'Europe/Warsaw'),
(2656, 616, 'Silesian Voivodeship', 'Europe/Warsaw'),
(2657, 616, 'Świętokrzyskie Voivodship', 'Europe/Warsaw'),
(2658, 616, 'Warmian-Masurian Voivodeship', 'Europe/Warsaw'),
(2659, 616, 'Greater Poland Voivodeship', 'Europe/Warsaw'),
(2660, 616, 'West Pomeranian Voivodeship', 'Europe/Warsaw'),
(2661, 620, 'Aveiro', 'Europe/Lisbon'),
(2662, 620, 'Beja', 'Europe/Lisbon'),
(2663, 620, 'Braga', 'Europe/Lisbon'),
(2664, 620, 'Bragança', 'Europe/Lisbon'),
(2665, 620, 'Castelo Branco', 'Europe/Lisbon'),
(2666, 620, 'Coimbra', 'Europe/Lisbon'),
(2667, 620, 'Évora', 'Europe/Lisbon'),
(2668, 620, 'Faro', 'Europe/Lisbon'),
(2669, 620, 'Madeira', 'Atlantic/Madeira'),
(2670, 620, 'Guarda', 'Europe/Lisbon'),
(2671, 620, 'Leiria', 'Europe/Lisbon'),
(2672, 620, 'Lisbon', 'Europe/Lisbon'),
(2673, 620, 'Portalegre', 'Europe/Lisbon'),
(2674, 620, 'Porto', 'Europe/Lisbon'),
(2675, 620, 'Santarém', 'Europe/Lisbon'),
(2676, 620, 'Setúbal', 'Europe/Lisbon'),
(2677, 620, 'Viana do Castelo', 'Europe/Lisbon'),
(2678, 620, 'Vila Real', 'Europe/Lisbon'),
(2679, 620, 'Viseu', 'Europe/Lisbon'),
(2680, 620, 'Azores', 'Atlantic/Azores'),
(2681, 624, 'Bafatá', 'Africa/Bissau'),
(2682, 624, 'Quinara', 'Africa/Bissau'),
(2683, 624, 'Oio', 'Africa/Bissau'),
(2684, 624, 'Bolama', 'Africa/Bissau'),
(2685, 624, 'Cacheu', 'Africa/Bissau'),
(2686, 624, 'Tombali', 'Africa/Bissau'),
(2687, 624, 'Gabú', 'Africa/Bissau'),
(2688, 624, 'Bissau', 'Africa/Bissau'),
(2689, 624, 'Biombo', 'Africa/Bissau'),
(2690, 626, 'Bobonaro', 'Asia/Dili'),
(2691, 630, 'Puerto Rico', 'America/Puerto_Rico'),
(2692, 634, 'Ad Dawḩah', 'Asia/Qatar'),
(2693, 634, 'Al Ghuwayrīyah', 'Asia/Qatar'),
(2694, 634, 'Al Jumaylīyah', 'Asia/Qatar'),
(2695, 634, 'Al Khawr', 'Asia/Qatar'),
(2696, 634, 'Al Wakrah Municipality', 'Asia/Qatar'),
(2697, 634, 'Ar Rayyān', 'Asia/Qatar'),
(2698, 634, 'Jarayan al Batinah', 'Asia/Qatar'),
(2699, 634, 'Madīnat ash Shamāl', 'Asia/Qatar'),
(2700, 634, 'Umm Şalāl', 'Asia/Qatar'),
(2701, 634, 'Al Wakrah', 'Asia/Qatar'),
(2702, 634, 'Jarayān al Bāţinah', 'Asia/Qatar'),
(2703, 634, 'Umm Sa‘īd', 'Asia/Qatar'),
(2704, 638, 'Réunion', 'Indian/Reunion'),
(2705, 642, 'Alba', 'Europe/Bucharest'),
(2706, 642, 'Arad', 'Europe/Bucharest'),
(2707, 642, 'Argeş', 'Europe/Bucharest'),
(2708, 642, 'Bacău', 'Europe/Bucharest'),
(2709, 642, 'Bihor', 'Europe/Bucharest'),
(2710, 642, 'Bistriţa-Năsăud', 'Europe/Bucharest'),
(2711, 642, 'Botoşani', 'Europe/Bucharest'),
(2712, 642, 'Brăila', 'Europe/Bucharest'),
(2713, 642, 'Braşov', 'Europe/Bucharest'),
(2714, 642, 'Bucureşti', 'Europe/Bucharest'),
(2715, 642, 'Buzău', 'Europe/Bucharest'),
(2716, 642, 'Caraş-Severin', 'Europe/Bucharest'),
(2717, 642, 'Cluj', 'Europe/Bucharest'),
(2718, 642, 'Constanţa', 'Europe/Bucharest'),
(2719, 642, 'Covasna', 'Europe/Bucharest'),
(2720, 642, 'Dâmboviţa', 'Europe/Bucharest'),
(2721, 642, 'Dolj', 'Europe/Bucharest'),
(2722, 642, 'Galaţi', 'Europe/Bucharest'),
(2723, 642, 'Gorj', 'Europe/Bucharest'),
(2724, 642, 'Harghita', 'Europe/Bucharest'),
(2725, 642, 'Hunedoara', 'Europe/Bucharest'),
(2726, 642, 'Ialomiţa', 'Europe/Bucharest'),
(2727, 642, 'Iaşi', 'Europe/Bucharest'),
(2728, 642, 'Maramureş', 'Europe/Bucharest'),
(2729, 642, 'Mehedinţi', 'Europe/Bucharest'),
(2730, 642, 'Mureş', 'Europe/Bucharest'),
(2731, 642, 'Neamţ', 'Europe/Bucharest'),
(2732, 642, 'Olt', 'Europe/Bucharest'),
(2733, 642, 'Prahova', 'Europe/Bucharest'),
(2734, 642, 'Sălaj', 'Europe/Bucharest'),
(2735, 642, 'Satu Mare', 'Europe/Bucharest'),
(2736, 642, 'Sibiu', 'Europe/Bucharest'),
(2737, 642, 'Suceava', 'Europe/Bucharest'),
(2738, 642, 'Teleorman', 'Europe/Bucharest'),
(2739, 642, 'Timiş', 'Europe/Bucharest'),
(2740, 642, 'Tulcea', 'Europe/Bucharest'),
(2741, 642, 'Vaslui', 'Europe/Bucharest'),
(2742, 642, 'Vâlcea', 'Europe/Bucharest'),
(2743, 642, 'Judeţul Vrancea', 'Europe/Bucharest'),
(2744, 642, 'Călăraşi', 'Europe/Bucharest'),
(2745, 642, 'Giurgiu', 'Europe/Bucharest'),
(2746, 642, 'Ilfov', 'Europe/Bucharest'),
(2747, 643, 'Adygeya', 'Europe/Moscow'),
(2748, 643, 'Altay', 'Asia/Krasnoyarsk'),
(2749, 643, 'Altayskiy Kray', 'Asia/Krasnoyarsk'),
(2750, 643, 'Amur', 'Asia/Yakutsk'),
(2751, 643, 'Arkhangelskaya oblast', 'Europe/Moscow'),
(2752, 643, 'Astrakhan', 'Europe/Samara'),
(2753, 643, 'Bashkortostan', 'Asia/Yekaterinburg'),
(2754, 643, 'Belgorod', 'Europe/Moscow'),
(2755, 643, 'Brjansk', 'Europe/Moscow'),
(2756, 643, 'Buryatiya', 'Asia/Irkutsk'),
(2757, 643, 'Chechnya', 'Europe/Moscow'),
(2758, 643, 'Tsjeljabinsk', 'Asia/Yekaterinburg'),
(2759, 643, 'Zabaïkalski Kray', 'Asia/Yakutsk'),
(2760, 643, 'Chukotskiy Avtonomnyy Okrug', 'Asia/Kamchatka'),
(2761, 643, 'Chuvashia', 'Europe/Moscow'),
(2762, 643, 'Dagestan', 'Europe/Moscow'),
(2763, 643, 'Ingushetiya', 'Europe/Moscow'),
(2764, 643, 'Irkutsk', 'Asia/Irkutsk'),
(2765, 643, 'Ivanovo', 'Europe/Moscow'),
(2766, 643, 'Kabardino-Balkariya', 'Europe/Moscow'),
(2767, 643, 'Kaliningrad', 'Europe/Kaliningrad'),
(2768, 643, 'Kalmykiya', 'Europe/Moscow'),
(2769, 643, 'Kaluga', 'Europe/Moscow'),
(2770, 643, 'Karachayevo-Cherkesiya', 'Europe/Moscow'),
(2771, 643, 'Kareliya', 'Europe/Moscow'),
(2772, 643, 'Kemerovo', 'Asia/Krasnoyarsk'),
(2773, 643, 'Khabarovsk Krai', 'Asia/Vladivostok'),
(2774, 643, 'Khakasiya', 'Asia/Krasnoyarsk'),
(2775, 643, 'Khanty-Mansiyskiy Avtonomnyy Okrug', 'Asia/Yekaterinburg'),
(2776, 643, 'Kirov', 'Europe/Samara'),
(2777, 643, 'Komi', 'Europe/Moscow'),
(2778, 643, 'Kostroma', 'Europe/Moscow'),
(2779, 643, 'Krasnodarskiy Kray', 'Asia/Krasnoyarsk'),
(2780, 643, 'Kurgan', 'Asia/Yekaterinburg'),
(2781, 643, 'Kursk', 'Europe/Moscow'),
(2782, 643, 'Leningradskaya Oblastʼ', 'Europe/Moscow'),
(2783, 643, 'Lipetsk', 'Europe/Moscow'),
(2784, 643, 'Magadan', 'Asia/Magadan'),
(2785, 643, 'Mariy-El', 'Europe/Moscow'),
(2786, 643, 'Mordoviya', 'Europe/Moscow'),
(2787, 643, 'Moskovskaya Oblastʼ', 'Europe/Moscow'),
(2788, 643, 'Moscow', 'Europe/Moscow'),
(2789, 643, 'Murmansk Oblast', 'Europe/Moscow'),
(2790, 643, 'Nenetskiy Avtonomnyy Okrug', 'Europe/Moscow'),
(2791, 643, 'Nizjnij Novgorod', 'Europe/Moscow'),
(2792, 643, 'Novgorod', 'Europe/Moscow'),
(2793, 643, 'Novosibirsk', 'Asia/Novosibirsk'),
(2794, 643, 'Omsk', 'Asia/Omsk'),
(2795, 643, 'Orenburg', 'Asia/Yekaterinburg'),
(2796, 643, 'Orjol', 'Europe/Moscow'),
(2797, 643, 'Penza', 'Europe/Moscow'),
(2798, 643, 'Primorskiy Kray', 'Asia/Vladivostok'),
(2799, 643, 'Pskov', 'Europe/Moscow'),
(2800, 643, 'Rostov', 'Europe/Moscow'),
(2801, 643, 'Rjazan', 'Europe/Moscow'),
(2802, 643, 'Sakha', 'Asia/Vladivostok'),
(2803, 643, 'Sakhalin', 'Asia/Vladivostok'),
(2804, 643, 'Samara', 'Europe/Samara'),
(2805, 643, 'Sankt-Peterburg', 'Europe/Moscow'),
(2806, 643, 'Saratov', 'Europe/Samara'),
(2807, 643, 'Severnaya Osetiya-Alaniya', 'Europe/Moscow'),
(2808, 643, 'Smolensk', 'Europe/Moscow'),
(2809, 643, 'Stavropolʼskiy Kray', 'Europe/Moscow'),
(2810, 643, 'Sverdlovsk', 'Asia/Yekaterinburg'),
(2811, 643, 'Tambov', 'Europe/Moscow'),
(2812, 643, 'Tatarstan', 'Europe/Moscow'),
(2813, 643, 'Tomsk', 'Asia/Krasnoyarsk'),
(2814, 643, 'Tula', 'Europe/Moscow'),
(2815, 643, 'Tverskaya Oblast’', 'Europe/Moscow'),
(2816, 643, 'Tjumen', 'Asia/Yekaterinburg'),
(2817, 643, 'Tyva', 'Asia/Krasnoyarsk'),
(2818, 643, 'Udmurtiya', 'Europe/Samara'),
(2819, 643, 'Uljanovsk', 'Europe/Samara'),
(2820, 643, 'Vladimir', 'Europe/Moscow'),
(2821, 643, 'Volgograd', 'Europe/Samara'),
(2822, 643, 'Vologda', 'Europe/Moscow'),
(2823, 643, 'Voronezj', 'Europe/Moscow'),
(2824, 643, 'Yamalo-Nenetskiy Avtonomnyy Okrug', 'Asia/Yekaterinburg'),
(2825, 643, 'Jaroslavl', 'Europe/Moscow'),
(2826, 643, 'Jewish Autonomous Oblast', 'Asia/Vladivostok'),
(2827, 643, 'Perm', 'Asia/Yekaterinburg'),
(2828, 643, 'Krasnoyarskiy Kray', 'Asia/Krasnoyarsk'),
(2829, 643, 'Kamtsjatka', 'Asia/Kamchatka'),
(2830, 643, 'RSJA', 'Europe/Moscow'),
(2831, 646, 'Eastern Province', 'Africa/Kigali'),
(2832, 646, 'Kigali City', 'Africa/Kigali'),
(2833, 646, 'Northern Province', 'Africa/Kigali'),
(2834, 646, 'Western Province', 'Africa/Kigali'),
(2835, 646, 'Southern Province', 'Africa/Kigali'),
(2836, 654, 'Ascension', 'Atlantic/St_Helena'),
(2837, 654, 'Saint Helena', 'Atlantic/St_Helena'),
(2838, 654, 'Tristan da Cunha', 'Atlantic/St_Helena'),
(2839, 659, 'Christ Church Nichola Town', 'America/St_Kitts'),
(2840, 659, 'Saint Anne Sandy Point', 'America/St_Kitts'),
(2841, 659, 'Saint George Basseterre', 'America/St_Kitts'),
(2842, 659, 'Saint George Gingerland', 'America/St_Kitts'),
(2843, 659, 'Saint James Windwa', 'America/St_Kitts'),
(2844, 659, 'Saint John Capesterre', 'America/St_Kitts'),
(2845, 659, 'Saint John Figtree', 'America/St_Kitts'),
(2846, 659, 'Saint Mary Cayon', 'America/St_Kitts'),
(2847, 659, 'Saint Paul Capesterre', 'America/St_Kitts'),
(2848, 659, 'Saint Paul Charlestown', 'America/St_Kitts'),
(2849, 659, 'Saint Peter Basseterre', 'America/St_Kitts'),
(2850, 659, 'Saint Thomas Lowland', 'America/St_Kitts'),
(2851, 659, 'Saint Thomas Middle Island', 'America/St_Kitts'),
(2852, 659, 'Trinity Palmetto Point', 'America/St_Kitts'),
(2853, 660, 'Anguilla', 'America/Anguilla'),
(2854, 662, 'Anse-la-Raye', 'America/St_Lucia'),
(2855, 662, 'Dauphin', 'America/St_Lucia'),
(2856, 662, 'Castries', 'America/St_Lucia'),
(2857, 662, 'Choiseul', 'America/St_Lucia'),
(2858, 662, 'Dennery', 'America/St_Lucia'),
(2859, 662, 'Gros-Islet', 'America/St_Lucia'),
(2860, 662, 'Laborie', 'America/St_Lucia'),
(2861, 662, 'Micoud', 'America/St_Lucia'),
(2862, 662, 'Soufrière', 'America/St_Lucia'),
(2863, 662, 'Vieux-Fort', 'America/St_Lucia'),
(2864, 662, 'Praslin', 'America/St_Lucia'),
(2865, 666, 'Saint-Pierre-et-Miquelon', 'America/Miquelon'),
(2866, 670, 'Charlotte', 'America/St_Vincent'),
(2867, 670, 'Saint Andrew', 'America/St_Vincent'),
(2868, 670, 'Saint David', 'America/St_Vincent'),
(2869, 670, 'Saint George', 'America/St_Vincent'),
(2870, 670, 'Saint Patrick', 'America/St_Vincent'),
(2871, 670, 'Grenadines', 'America/St_Vincent'),
(2872, 674, 'Acquaviva', 'Europe/San_Marino'),
(2873, 674, 'Chiesanuova', 'Europe/San_Marino'),
(2874, 674, 'Domagnano', 'Europe/San_Marino'),
(2875, 674, 'Faetano', 'Europe/San_Marino'),
(2876, 674, 'Fiorentino', 'Europe/San_Marino'),
(2877, 674, 'Borgo Maggiore', 'Europe/San_Marino'),
(2878, 674, 'San Marino', 'Europe/San_Marino'),
(2879, 674, 'Montegiardino', 'Europe/San_Marino'),
(2880, 674, 'Serravalle', 'Europe/San_Marino'),
(2881, 678, 'Príncipe', 'Africa/Sao_Tome'),
(2882, 678, 'Príncipe', 'Africa/Sao_Tome'),
(2883, 678, 'São Tomé', 'Africa/Sao_Tome'),
(2884, 682, 'Al Bāḩah', 'Asia/Riyadh'),
(2885, 682, 'Al Madīnah', 'Asia/Riyadh'),
(2886, 682, 'Ash Sharqīyah', 'Asia/Riyadh'),
(2887, 682, 'Al Qaşīm', 'Asia/Riyadh'),
(2888, 682, 'Ar Riyāḑ', 'Asia/Riyadh'),
(2889, 682, '‘Asīr', 'Asia/Riyadh'),
(2890, 682, 'Ḩāʼil', 'Asia/Riyadh'),
(2891, 682, 'Makkah', 'Asia/Riyadh'),
(2892, 682, 'Northern Borders Region', 'Asia/Riyadh'),
(2893, 682, 'Najrān', 'Asia/Riyadh'),
(2894, 682, 'Jīzān', 'Asia/Riyadh'),
(2895, 682, 'Tabūk', 'Asia/Riyadh'),
(2896, 682, 'Al Jawf', 'Asia/Riyadh'),
(2897, 686, 'Dakar', 'Africa/Dakar'),
(2898, 686, 'Diourbel', 'Africa/Dakar'),
(2899, 686, 'Saint-Louis', 'Africa/Dakar'),
(2900, 686, 'Tambacounda', 'Africa/Dakar'),
(2901, 686, 'Thiès', 'Africa/Dakar'),
(2902, 686, 'Louga', 'Africa/Dakar'),
(2903, 686, 'Fatick', 'Africa/Dakar'),
(2904, 686, 'Kaolack', 'Africa/Dakar'),
(2905, 686, 'Kolda Region', 'Africa/Dakar'),
(2906, 686, 'Ziguinchor', 'Africa/Dakar'),
(2907, 686, 'Louga', 'Africa/Dakar'),
(2908, 686, 'Saint-Louis', 'Africa/Dakar'),
(2909, 686, 'Matam', 'Africa/Dakar'),
(2910, 688, 'Autonomna Pokrajina Vojvodina', 'Europe/Belgrade'),
(2911, 690, 'Anse aux Pins', 'Indian/Mahe'),
(2912, 690, 'Anse Boileau', 'Indian/Mahe'),
(2913, 690, 'Anse Etoile', 'Indian/Mahe'),
(2914, 690, 'Anse Louis', 'Indian/Mahe'),
(2915, 690, 'Anse Royale', 'Indian/Mahe'),
(2916, 690, 'Baie Lazare', 'Indian/Mahe'),
(2917, 690, 'Baie Sainte Anne', 'Indian/Mahe'),
(2918, 690, 'Beau Vallon', 'Indian/Mahe'),
(2919, 690, 'Bel Air', 'Indian/Mahe'),
(2920, 690, 'Bel Ombre', 'Indian/Mahe'),
(2921, 690, 'Cascade', 'Indian/Mahe'),
(2922, 690, 'Glacis', 'Indian/Mahe'),
(2923, 690, 'Saint Thomas Middle Island Parish', 'Indian/Mahe'),
(2924, 690, 'Grand Anse Praslin', 'Indian/Mahe'),
(2925, 690, 'Trinity Palmetto Point Parish', 'Indian/Mahe'),
(2926, 690, 'La Riviere Anglaise', 'Indian/Mahe'),
(2927, 690, 'Mont Buxton', 'Indian/Mahe'),
(2928, 690, 'Mont Fleuri', 'Indian/Mahe'),
(2929, 690, 'Plaisance', 'Indian/Mahe'),
(2930, 690, 'Pointe Larue', 'Indian/Mahe'),
(2931, 690, 'Port Glaud', 'Indian/Mahe'),
(2932, 690, 'Saint Louis', 'Indian/Mahe'),
(2933, 690, 'Takamaka', 'Indian/Mahe'),
(2934, 690, 'Anse aux Pins', 'Indian/Mahe'),
(2935, 690, 'Inner Islands', 'Indian/Mahe'),
(2936, 690, 'English River', 'Indian/Mahe'),
(2937, 690, 'Port Glaud', 'Indian/Mahe'),
(2938, 690, 'Baie Lazare', 'Indian/Mahe'),
(2939, 690, 'Beau Vallon', 'Indian/Mahe'),
(2940, 690, 'Bel Ombre', 'Indian/Mahe'),
(2941, 690, 'Glacis', 'Indian/Mahe'),
(2942, 690, 'Grand Anse Mahe', 'Indian/Mahe'),
(2943, 690, 'Grand Anse Praslin', 'Indian/Mahe'),
(2944, 690, 'Inner Islands', 'Indian/Mahe'),
(2945, 690, 'English River', 'Indian/Mahe'),
(2946, 690, 'Mont Fleuri', 'Indian/Mahe'),
(2947, 690, 'Plaisance', 'Indian/Mahe'),
(2948, 690, 'Pointe Larue', 'Indian/Mahe'),
(2949, 690, 'Port Glaud', 'Indian/Mahe'),
(2950, 690, 'Takamaka', 'Indian/Mahe'),
(2951, 690, 'Au Cap', 'Indian/Mahe'),
(2952, 690, 'Les Mamelles', 'Indian/Mahe'),
(2953, 690, 'Roche Caiman', 'Indian/Mahe'),
(2954, 694, 'Eastern Province', 'Africa/Freetown'),
(2955, 694, 'Northern Province', 'Africa/Freetown'),
(2956, 694, 'Southern Province', 'Africa/Freetown'),
(2957, 694, 'Western Area', 'Africa/Freetown'),
(2958, 702, 'Singapore', 'Asia/Singapore'),
(2959, 703, 'Banskobystrický', 'Europe/Bratislava'),
(2960, 703, 'Bratislavský', 'Europe/Bratislava'),
(2961, 703, 'Košický', 'Europe/Bratislava'),
(2962, 703, 'Nitriansky', 'Europe/Bratislava'),
(2963, 703, 'Prešovský', 'Europe/Bratislava'),
(2964, 703, 'Trenčiansky', 'Europe/Bratislava'),
(2965, 703, 'Trnavský', 'Europe/Bratislava'),
(2966, 703, 'Žilinský', 'Europe/Bratislava'),
(2967, 704, 'An Giang', 'Asia/Ho_Chi_Minh'),
(2968, 704, 'Bắc Thái Tỉnh', 'Asia/Ho_Chi_Minh'),
(2969, 704, 'Bến Tre', 'Asia/Ho_Chi_Minh'),
(2970, 704, 'Cao Bang', 'Asia/Ho_Chi_Minh'),
(2971, 704, 'Cao Bằng', 'Asia/Ho_Chi_Minh'),
(2972, 704, 'Ten Bai', 'Asia/Ho_Chi_Minh'),
(2973, 704, 'Ðồng Tháp', 'Asia/Ho_Chi_Minh'),
(2974, 704, 'Hà Bắc Tỉnh', 'Asia/Ho_Chi_Minh'),
(2975, 704, 'Hải Hưng Tỉnh', 'Asia/Ho_Chi_Minh'),
(2976, 704, 'Hải Phòng', 'Asia/Ho_Chi_Minh'),
(2977, 704, 'Hoa Binh', 'Asia/Ho_Chi_Minh'),
(2978, 704, 'Ha Tay', 'Asia/Ho_Chi_Minh'),
(2979, 704, 'Hồ Chí Minh', 'Asia/Ho_Chi_Minh'),
(2980, 704, 'Kiến Giang', 'Asia/Ho_Chi_Minh'),
(2981, 704, 'Lâm Ðồng', 'Asia/Ho_Chi_Minh'),
(2982, 704, 'Long An', 'Asia/Ho_Chi_Minh'),
(2983, 704, 'Minh Hải Tỉnh', 'Asia/Ho_Chi_Minh'),
(2984, 704, 'Thua Thien-Hue', 'Asia/Ho_Chi_Minh'),
(2985, 704, 'Quang Nam', 'Asia/Ho_Chi_Minh'),
(2986, 704, 'Kon Tum', 'Asia/Ho_Chi_Minh'),
(2987, 704, 'Quảng Nam-Ðà Nẵng Tỉnh', 'Asia/Ho_Chi_Minh'),
(2988, 704, 'Quảng Ninh', 'Asia/Ho_Chi_Minh'),
(2989, 704, 'Sông Bé Tỉnh', 'Asia/Ho_Chi_Minh'),
(2990, 704, 'Sơn La', 'Asia/Ho_Chi_Minh'),
(2991, 704, 'Tây Ninh', 'Asia/Ho_Chi_Minh'),
(2992, 704, 'Thanh Hóa', 'Asia/Ho_Chi_Minh'),
(2993, 704, 'Thái Bình', 'Asia/Ho_Chi_Minh'),
(2994, 704, 'Nin Thuan', 'Asia/Ho_Chi_Minh'),
(2995, 704, 'Tiền Giang', 'Asia/Ho_Chi_Minh'),
(2996, 704, 'Vinh Phú Tỉnh', 'Asia/Ho_Chi_Minh'),
(2997, 704, 'Lạng Sơn', 'Asia/Ho_Chi_Minh'),
(2998, 704, 'Binh Thuan', 'Asia/Ho_Chi_Minh'),
(2999, 704, 'Long An', 'Asia/Ho_Chi_Minh'),
(3000, 704, 'Ðồng Nai', 'Asia/Ho_Chi_Minh'),
(3001, 704, 'Ha Nội', 'Asia/Ho_Chi_Minh'),
(3002, 704, 'Bà Rịa-Vũng Tàu', 'Asia/Ho_Chi_Minh'),
(3003, 704, 'Bình Ðịnh', 'Asia/Ho_Chi_Minh'),
(3004, 704, 'Bình Thuận', 'Asia/Ho_Chi_Minh'),
(3005, 704, 'Gia Lai', 'Asia/Ho_Chi_Minh'),
(3006, 704, 'Hà Giang', 'Asia/Ho_Chi_Minh'),
(3007, 704, 'Hà Tây', 'Asia/Ho_Chi_Minh'),
(3008, 704, 'Hà Tĩnh', 'Asia/Ho_Chi_Minh'),
(3009, 704, 'Hòa Bình', 'Asia/Ho_Chi_Minh'),
(3010, 704, 'Khánh Hòa', 'Asia/Ho_Chi_Minh'),
(3011, 704, 'Kon Tum', 'Asia/Ho_Chi_Minh'),
(3012, 704, 'Nam Hà Tỉnh', 'Asia/Ho_Chi_Minh'),
(3013, 704, 'Nghệ An', 'Asia/Ho_Chi_Minh'),
(3014, 704, 'Ninh Bình', 'Asia/Ho_Chi_Minh'),
(3015, 704, 'Ninh Thuận', 'Asia/Ho_Chi_Minh'),
(3016, 704, 'Phú Yên', 'Asia/Ho_Chi_Minh'),
(3017, 704, 'Quảng Bình', 'Asia/Ho_Chi_Minh'),
(3018, 704, 'Quảng Ngãi', 'Asia/Ho_Chi_Minh'),
(3019, 704, 'Quảng Trị', 'Asia/Ho_Chi_Minh'),
(3020, 704, 'Sóc Trăng', 'Asia/Ho_Chi_Minh'),
(3021, 704, 'Thừa Thiên-Huế', 'Asia/Ho_Chi_Minh'),
(3022, 704, 'Trà Vinh', 'Asia/Ho_Chi_Minh'),
(3023, 704, 'Tuyên Quang', 'Asia/Ho_Chi_Minh'),
(3024, 704, 'Vĩnh Long', 'Asia/Ho_Chi_Minh'),
(3025, 704, 'Yên Bái', 'Asia/Ho_Chi_Minh'),
(3026, 704, 'Bắc Giang', 'Asia/Ho_Chi_Minh'),
(3027, 704, 'Bắc Kạn', 'Asia/Ho_Chi_Minh'),
(3028, 704, 'Bạc Liêu', 'Asia/Ho_Chi_Minh'),
(3029, 704, 'Bắc Ninh', 'Asia/Ho_Chi_Minh'),
(3030, 704, 'Bình Dương', 'Asia/Ho_Chi_Minh'),
(3031, 704, 'Bình Phước', 'Asia/Ho_Chi_Minh'),
(3032, 704, 'Cà Mau', 'Asia/Ho_Chi_Minh'),
(3033, 704, 'Ðà Nẵng', 'Asia/Ho_Chi_Minh'),
(3034, 704, 'Hải Dương', 'Asia/Ho_Chi_Minh'),
(3035, 704, 'Hà Nam', 'Asia/Ho_Chi_Minh'),
(3036, 704, 'Hưng Yên', 'Asia/Ho_Chi_Minh'),
(3037, 704, 'Nam Ðịnh', 'Asia/Ho_Chi_Minh'),
(3038, 704, 'Phú Thọ', 'Asia/Ho_Chi_Minh'),
(3039, 704, 'Quảng Nam', 'Asia/Ho_Chi_Minh'),
(3040, 704, 'Thái Nguyên', 'Asia/Ho_Chi_Minh'),
(3041, 704, 'Vĩnh Phúc', 'Asia/Ho_Chi_Minh'),
(3042, 704, 'Cần Thơ', 'Asia/Ho_Chi_Minh'),
(3043, 704, 'Ðắc Lắk', 'Asia/Ho_Chi_Minh'),
(3044, 704, 'Lai Châu', 'Asia/Ho_Chi_Minh'),
(3045, 704, 'Lào Cai', 'Asia/Ho_Chi_Minh'),
(3046, 705, 'Notranjska', 'Europe/Ljubljana'),
(3047, 705, 'Koroška', 'Europe/Ljubljana'),
(3048, 705, 'Štajerska', 'Europe/Ljubljana'),
(3049, 705, 'Prekmurje', 'Europe/Ljubljana'),
(3050, 705, 'Primorska', 'Europe/Ljubljana'),
(3051, 705, 'Gorenjska', 'Europe/Ljubljana'),
(3052, 705, 'Dolenjska', 'Europe/Ljubljana'),
(3053, 706, 'Bakool', 'Africa/Mogadishu'),
(3054, 706, 'Banaadir', 'Africa/Mogadishu'),
(3055, 706, 'Bari', 'Africa/Mogadishu'),
(3056, 706, 'Bay', 'Africa/Mogadishu'),
(3057, 706, 'Galguduud', 'Africa/Mogadishu'),
(3058, 706, 'Gedo', 'Africa/Mogadishu'),
(3059, 706, 'Hiiraan', 'Africa/Mogadishu'),
(3060, 706, 'Middle Juba', 'Africa/Mogadishu'),
(3061, 706, 'Lower Juba', 'Africa/Mogadishu'),
(3062, 706, 'Mudug', 'Africa/Mogadishu'),
(3063, 706, 'Sanaag', 'Africa/Mogadishu'),
(3064, 706, 'Middle Shabele', 'Africa/Mogadishu'),
(3065, 706, 'Shabeellaha Hoose', 'Africa/Mogadishu'),
(3066, 706, 'Nugaal', 'Africa/Mogadishu'),
(3067, 706, 'Togdheer', 'Africa/Mogadishu'),
(3068, 706, 'Woqooyi Galbeed', 'Africa/Mogadishu'),
(3069, 706, 'Awdal', 'Africa/Mogadishu'),
(3070, 706, 'Sool', 'Africa/Mogadishu'),
(3071, 710, 'KwaZulu-Natal', 'Africa/Johannesburg'),
(3072, 710, 'Free State', 'Africa/Johannesburg'),
(3073, 710, 'Eastern Cape', 'Africa/Johannesburg'),
(3074, 710, 'Gauteng', 'Africa/Johannesburg'),
(3075, 710, 'Mpumalanga', 'Africa/Johannesburg'),
(3076, 710, 'Northern Cape', 'Africa/Johannesburg'),
(3077, 710, 'Limpopo', 'Africa/Johannesburg'),
(3078, 710, 'North-West', 'Africa/Johannesburg'),
(3079, 710, 'Western Cape', 'Africa/Johannesburg'),
(3080, 716, 'Manicaland', 'Africa/Harare'),
(3081, 716, 'Midlands', 'Africa/Harare'),
(3082, 716, 'Mashonaland Central', 'Africa/Harare'),
(3083, 716, 'Mashonaland East', 'Africa/Harare'),
(3084, 716, 'Mashonaland West', 'Africa/Harare'),
(3085, 716, 'Matabeleland North', 'Africa/Harare'),
(3086, 716, 'Matabeleland South', 'Africa/Harare'),
(3087, 716, 'Masvingo', 'Africa/Harare'),
(3088, 716, 'Bulawayo', 'Africa/Harare'),
(3089, 716, 'Harare', 'Africa/Harare'),
(3090, 724, 'Ceuta', 'Africa/Ceuta'),
(3091, 724, 'Balearic Islands', 'Europe/Madrid'),
(3092, 724, 'La Rioja', 'Europe/Madrid'),
(3093, 724, 'Autonomous Region of Madrid', 'Europe/Madrid'),
(3094, 724, 'Murcia', 'Europe/Madrid'),
(3095, 724, 'Navarre', 'Europe/Madrid'),
(3096, 724, 'Asturias', 'Europe/Madrid'),
(3097, 724, 'Cantabria', 'Europe/Madrid'),
(3098, 724, 'Andalusia', 'Europe/Madrid'),
(3099, 724, 'Aragon', 'Europe/Madrid'),
(3100, 724, 'Canary Islands', 'Atlantic/Canary'),
(3101, 724, 'Castille-La Mancha', 'Europe/Madrid'),
(3102, 724, 'Castille and León', 'Europe/Madrid'),
(3103, 724, 'Catalonia', 'Europe/Madrid'),
(3104, 724, 'Extremadura', 'Europe/Madrid'),
(3105, 724, 'Galicia', 'Europe/Madrid'),
(3106, 724, 'Basque Country', 'Europe/Madrid'),
(3107, 724, 'Valencia', 'Europe/Madrid'),
(3108, 732, 'Western Sahara', 'Africa/El_Aaiun'),
(3109, 736, 'Al Wilāyah al Wusţá', 'Africa/Khartoum'),
(3110, 736, 'Al Wilāyah al Istiwāʼīyah', 'Africa/Khartoum'),
(3111, 736, 'Khartoum', 'Africa/Khartoum'),
(3112, 736, 'Ash Shamaliyah', 'Africa/Khartoum'),
(3113, 736, 'Al Wilāyah ash Sharqīyah', 'Africa/Khartoum'),
(3114, 736, 'Ba?r al Ghazal Wilayat', 'Africa/Khartoum'),
(3115, 736, 'Darfur Wilayat', 'Africa/Khartoum'),
(3116, 736, 'Kurdufan Wilayat', 'Africa/Khartoum'),
(3117, 736, 'Upper Nile', 'Africa/Khartoum'),
(3118, 736, 'Red Sea', 'Africa/Khartoum'),
(3119, 736, 'Lakes', 'Africa/Khartoum'),
(3120, 736, 'Al Jazirah', 'Africa/Khartoum'),
(3121, 736, 'Al Qadarif', 'Africa/Khartoum'),
(3122, 736, 'Unity', 'Africa/Khartoum'),
(3123, 736, 'White Nile', 'Africa/Khartoum'),
(3124, 736, 'Blue Nile', 'Africa/Khartoum'),
(3125, 736, 'Northern', 'Africa/Khartoum'),
(3126, 736, 'Central Equatoria', 'Africa/Khartoum'),
(3127, 736, 'Gharb al Istiwāʼīyah', 'Africa/Khartoum'),
(3128, 736, 'Western Bahr al Ghazal', 'Africa/Khartoum'),
(3129, 736, 'Gharb Dārfūr', 'Africa/Khartoum'),
(3130, 736, 'Gharb Kurdufān', 'Africa/Khartoum'),
(3131, 736, 'Janūb Dārfūr', 'Africa/Khartoum'),
(3132, 736, 'Janūb Kurdufān', 'Africa/Khartoum'),
(3133, 736, 'Junqalī', 'Africa/Khartoum'),
(3134, 736, 'Kassalā', 'Africa/Khartoum'),
(3135, 736, 'Nahr an Nīl', 'Africa/Khartoum'),
(3136, 736, 'Shamāl Baḩr al Ghazāl', 'Africa/Khartoum'),
(3137, 736, 'Shamāl Dārfūr', 'Africa/Khartoum'),
(3138, 736, 'Shamāl Kurdufān', 'Africa/Khartoum'),
(3139, 736, 'Eastern Equatoria', 'Africa/Khartoum'),
(3140, 736, 'Sinnār', 'Africa/Khartoum'),
(3141, 736, 'Warab', 'Africa/Khartoum'),
(3142, 740, 'Brokopondo', 'America/Paramaribo'),
(3143, 740, 'Commewijne', 'America/Paramaribo'),
(3144, 740, 'Coronie', 'America/Paramaribo'),
(3145, 740, 'Marowijne', 'America/Paramaribo'),
(3146, 740, 'Nickerie', 'America/Paramaribo'),
(3147, 740, 'Para', 'America/Paramaribo'),
(3148, 740, 'Paramaribo', 'America/Paramaribo'),
(3149, 740, 'Saramacca', 'America/Paramaribo'),
(3150, 740, 'Sipaliwini', 'America/Paramaribo'),
(3151, 740, 'Wanica', 'America/Paramaribo'),
(3152, 748, 'Hhohho', 'Africa/Mbabane'),
(3153, 748, 'Lubombo', 'Africa/Mbabane'),
(3154, 748, 'Manzini', 'Africa/Mbabane'),
(3155, 748, 'Shiselweni', 'Africa/Mbabane'),
(3156, 752, 'Blekinge', 'Europe/Stockholm'),
(3157, 752, 'Gävleborg', 'Europe/Stockholm'),
(3158, 752, 'Gotland', 'Europe/Stockholm'),
(3159, 752, 'Halland', 'Europe/Stockholm'),
(3160, 752, 'Jämtland', 'Europe/Stockholm'),
(3161, 752, 'Jönköping', 'Europe/Stockholm'),
(3162, 752, 'Kalmar', 'Europe/Stockholm'),
(3163, 752, 'Dalarna', 'Europe/Stockholm'),
(3164, 752, 'Kronoberg', 'Europe/Stockholm'),
(3165, 752, 'Norrbotten', 'Europe/Stockholm'),
(3166, 752, 'Örebro', 'Europe/Stockholm'),
(3167, 752, 'Östergötland', 'Europe/Stockholm'),
(3168, 752, 'Södermanland', 'Europe/Stockholm'),
(3169, 752, 'Uppsala', 'Europe/Stockholm'),
(3170, 752, 'Värmland', 'Europe/Stockholm'),
(3171, 752, 'Västerbotten', 'Europe/Stockholm'),
(3172, 752, 'Västernorrland', 'Europe/Stockholm'),
(3173, 752, 'Västmanland', 'Europe/Stockholm'),
(3174, 752, 'Stockholm', 'Europe/Stockholm'),
(3175, 752, 'Skåne', 'Europe/Stockholm'),
(3176, 752, 'Västra Götaland', 'Europe/Stockholm'),
(3177, 756, 'Aargau', 'Europe/Zurich'),
(3178, 756, 'Appenzell Innerrhoden', 'Europe/Zurich'),
(3179, 756, 'Appenzell Ausserrhoden', 'Europe/Zurich'),
(3180, 756, 'Bern', 'Europe/Zurich'),
(3181, 756, 'Basel-Landschaft', 'Europe/Zurich'),
(3182, 756, 'Kanton Basel-Stadt', 'Europe/Zurich'),
(3183, 756, 'Fribourg', 'Europe/Zurich'),
(3184, 756, 'Genève', 'Europe/Zurich'),
(3185, 756, 'Glarus', 'Europe/Zurich'),
(3186, 756, 'Graubünden', 'Europe/Zurich'),
(3187, 756, 'Jura', 'Europe/Zurich'),
(3188, 756, 'Luzern', 'Europe/Zurich'),
(3189, 756, 'Neuchâtel', 'Europe/Zurich'),
(3190, 756, 'Nidwalden', 'Europe/Zurich'),
(3191, 756, 'Obwalden', 'Europe/Zurich'),
(3192, 756, 'Kanton St. Gallen', 'Europe/Zurich'),
(3193, 756, 'Schaffhausen', 'Europe/Zurich'),
(3194, 756, 'Solothurn', 'Europe/Zurich'),
(3195, 756, 'Schwyz', 'Europe/Zurich'),
(3196, 756, 'Thurgau', 'Europe/Zurich'),
(3197, 756, 'Ticino', 'Europe/Zurich'),
(3198, 756, 'Uri', 'Europe/Zurich'),
(3199, 756, 'Vaud', 'Europe/Zurich'),
(3200, 756, 'Valais', 'Europe/Zurich'),
(3201, 756, 'Zug', 'Europe/Zurich'),
(3202, 756, 'Zürich', 'Europe/Zurich'),
(3203, 760, 'Al-Hasakah', 'Asia/Damascus'),
(3204, 760, 'Latakia', 'Asia/Damascus'),
(3205, 760, 'Quneitra', 'Asia/Damascus'),
(3206, 760, 'Ar-Raqqah', 'Asia/Damascus'),
(3207, 760, 'As-Suwayda', 'Asia/Damascus'),
(3208, 760, 'Daraa', 'Asia/Damascus'),
(3209, 760, 'Deir ez-Zor', 'Asia/Damascus'),
(3210, 760, 'Rif-dimashq', 'Asia/Damascus'),
(3211, 760, 'Aleppo', 'Asia/Damascus'),
(3212, 760, 'Hama Governorate', 'Asia/Damascus'),
(3213, 760, 'Homs', 'Asia/Damascus'),
(3214, 760, 'Idlib', 'Asia/Damascus'),
(3215, 760, 'Damascus City', 'Asia/Damascus'),
(3216, 760, 'Tartus', 'Asia/Damascus'),
(3217, 762, 'Gorno-Badakhshan', 'Asia/Dushanbe'),
(3218, 762, 'Khatlon', 'Asia/Dushanbe'),
(3219, 762, 'Sughd', 'Asia/Dushanbe'),
(3220, 762, 'Dushanbe', 'Asia/Dushanbe'),
(3221, 762, 'Region of Republican Subordination', 'Asia/Dushanbe'),
(3222, 764, 'Mae Hong Son', 'Asia/Bangkok'),
(3223, 764, 'Chiang Mai', 'Asia/Bangkok'),
(3224, 764, 'Chiang Rai', 'Asia/Bangkok'),
(3225, 764, 'Nan', 'Asia/Bangkok'),
(3226, 764, 'Lamphun', 'Asia/Bangkok'),
(3227, 764, 'Lampang', 'Asia/Bangkok'),
(3228, 764, 'Phrae', 'Asia/Bangkok'),
(3229, 764, 'Tak', 'Asia/Bangkok'),
(3230, 764, 'Sukhothai', 'Asia/Bangkok'),
(3231, 764, 'Uttaradit', 'Asia/Bangkok'),
(3232, 764, 'Kamphaeng Phet', 'Asia/Bangkok'),
(3233, 764, 'Phitsanulok', 'Asia/Bangkok'),
(3234, 764, 'Phichit', 'Asia/Bangkok'),
(3235, 764, 'Phetchabun', 'Asia/Bangkok'),
(3236, 764, 'Uthai Thani', 'Asia/Bangkok'),
(3237, 764, 'Nakhon Sawan', 'Asia/Bangkok'),
(3238, 764, 'Nong Khai', 'Asia/Bangkok'),
(3239, 764, 'Loei', 'Asia/Bangkok'),
(3240, 764, 'Sakon Nakhon', 'Asia/Bangkok'),
(3241, 764, 'Nakhon Phanom', 'Asia/Bangkok'),
(3242, 764, 'Khon Kaen', 'Asia/Bangkok'),
(3243, 764, 'Kalasin', 'Asia/Bangkok'),
(3244, 764, 'Maha Sarakham', 'Asia/Bangkok'),
(3245, 764, 'Roi Et', 'Asia/Bangkok'),
(3246, 764, 'Chaiyaphum', 'Asia/Bangkok'),
(3247, 764, 'Nakhon Ratchasima', 'Asia/Bangkok'),
(3248, 764, 'Buriram', 'Asia/Bangkok'),
(3249, 764, 'Surin', 'Asia/Bangkok'),
(3250, 764, 'Sisaket', 'Asia/Bangkok'),
(3251, 764, 'Narathiwat', 'Asia/Bangkok'),
(3252, 764, 'Chai Nat', 'Asia/Bangkok'),
(3253, 764, 'Sing Buri', 'Asia/Bangkok'),
(3254, 764, 'Lop Buri', 'Asia/Bangkok'),
(3255, 764, 'Ang Thong', 'Asia/Bangkok'),
(3256, 764, 'Phra Nakhon Si Ayutthaya', 'Asia/Bangkok'),
(3257, 764, 'Sara Buri', 'Asia/Bangkok'),
(3258, 764, 'Nonthaburi', 'Asia/Bangkok'),
(3259, 764, 'Pathum Thani', 'Asia/Bangkok'),
(3260, 764, 'Bangkok', 'Asia/Bangkok'),
(3261, 764, 'Phayao', 'Asia/Bangkok'),
(3262, 764, 'Samut Prakan', 'Asia/Bangkok'),
(3263, 764, 'Nakhon Nayok', 'Asia/Bangkok'),
(3264, 764, 'Chachoengsao', 'Asia/Bangkok'),
(3265, 764, 'Chon Buri', 'Asia/Bangkok'),
(3266, 764, 'Rayong', 'Asia/Bangkok'),
(3267, 764, 'Chanthaburi', 'Asia/Bangkok'),
(3268, 764, 'Trat', 'Asia/Bangkok'),
(3269, 764, 'Kanchanaburi', 'Asia/Bangkok'),
(3270, 764, 'Suphan Buri', 'Asia/Bangkok'),
(3271, 764, 'Ratchaburi', 'Asia/Bangkok'),
(3272, 764, 'Nakhon Pathom', 'Asia/Bangkok'),
(3273, 764, 'Samut Songkhram', 'Asia/Bangkok'),
(3274, 764, 'Samut Sakhon', 'Asia/Bangkok'),
(3275, 764, 'Phetchaburi', 'Asia/Bangkok'),
(3276, 764, 'Prachuap Khiri Khan', 'Asia/Bangkok'),
(3277, 764, 'Chumphon', 'Asia/Bangkok'),
(3278, 764, 'Ranong', 'Asia/Bangkok'),
(3279, 764, 'Surat Thani', 'Asia/Bangkok'),
(3280, 764, 'Phangnga', 'Asia/Bangkok'),
(3281, 764, 'Phuket', 'Asia/Bangkok'),
(3282, 764, 'Krabi', 'Asia/Bangkok'),
(3283, 764, 'Nakhon Si Thammarat', 'Asia/Bangkok'),
(3284, 764, 'Trang', 'Asia/Bangkok'),
(3285, 764, 'Phatthalung', 'Asia/Bangkok'),
(3286, 764, 'Satun', 'Asia/Bangkok'),
(3287, 764, 'Songkhla', 'Asia/Bangkok'),
(3288, 764, 'Pattani', 'Asia/Bangkok'),
(3289, 764, 'Yala', 'Asia/Bangkok'),
(3290, 764, 'Yasothon', 'Asia/Bangkok'),
(3291, 764, 'Nakhon Phanom', 'Asia/Bangkok'),
(3292, 764, 'Prachin Buri', 'Asia/Bangkok'),
(3293, 764, 'Ubon Ratchathani', 'Asia/Bangkok'),
(3294, 764, 'Udon Thani', 'Asia/Bangkok'),
(3295, 764, 'Amnat Charoen', 'Asia/Bangkok'),
(3296, 764, 'Mukdahan', 'Asia/Bangkok'),
(3297, 764, 'Nong Bua Lamphu', 'Asia/Bangkok'),
(3298, 764, 'Sa Kaeo', 'Asia/Bangkok'),
(3299, 768, 'Amlame', 'Africa/Lome'),
(3300, 768, 'Aneho', 'Africa/Lome'),
(3301, 768, 'Atakpame', 'Africa/Lome'),
(3302, 768, 'Bafilo', 'Africa/Lome'),
(3303, 768, 'Bassar', 'Africa/Lome'),
(3304, 768, 'Dapaong', 'Africa/Lome'),
(3305, 768, 'Kante', 'Africa/Lome'),
(3306, 768, 'Klouto', 'Africa/Lome'),
(3307, 768, 'Lama-Kara', 'Africa/Lome'),
(3308, 768, 'Lome', 'Africa/Lome'),
(3309, 768, 'Mango', 'Africa/Lome'),
(3310, 768, 'Niamtougou', 'Africa/Lome'),
(3311, 768, 'Notse', 'Africa/Lome'),
(3312, 768, 'Kpagouda', 'Africa/Lome'),
(3313, 768, 'Badou', 'Africa/Lome'),
(3314, 768, 'Sotouboua', 'Africa/Lome'),
(3315, 768, 'Tabligbo', 'Africa/Lome'),
(3316, 768, 'Tsevie', 'Africa/Lome'),
(3317, 768, 'Tchamba', 'Africa/Lome'),
(3318, 768, 'Tchaoudjo', 'Africa/Lome'),
(3319, 768, 'Vogan', 'Africa/Lome'),
(3320, 768, 'Centrale', 'Africa/Lome'),
(3321, 768, 'Kara', 'Africa/Lome'),
(3322, 768, 'Maritime', 'Africa/Lome'),
(3323, 768, 'Plateaux', 'Africa/Lome'),
(3324, 768, 'Savanes', 'Africa/Lome'),
(3325, 772, 'Tokelau', 'Pacific/Fakaofo'),
(3326, 776, 'Ha‘apai', 'Pacific/Tongatapu'),
(3327, 776, 'Tongatapu', 'Pacific/Tongatapu'),
(3328, 776, 'Vava‘u', 'Pacific/Tongatapu'),
(3329, 780, 'Port of Spain', 'America/Port_of_Spain'),
(3330, 780, 'San Fernando', 'America/Port_of_Spain'),
(3331, 780, 'Chaguanas', 'America/Port_of_Spain'),
(3332, 780, 'Arima', 'America/Port_of_Spain'),
(3333, 780, 'Point Fortin Borough', 'America/Port_of_Spain'),
(3334, 780, 'Couva-Tabaquite-Talparo', 'America/Port_of_Spain'),
(3335, 780, 'Diego Martin', 'America/Port_of_Spain'),
(3336, 780, 'Penal-Debe', 'America/Port_of_Spain'),
(3337, 780, 'Princes Town', 'America/Port_of_Spain'),
(3338, 780, 'Rio Claro-Mayaro', 'America/Port_of_Spain'),
(3339, 780, 'San Juan-Laventille', 'America/Port_of_Spain'),
(3340, 780, 'Sangre Grande', 'America/Port_of_Spain'),
(3341, 780, 'Siparia', 'America/Port_of_Spain'),
(3342, 780, 'Tunapuna-Piarco', 'America/Port_of_Spain'),
(3343, 784, 'Abū Z̧aby', 'Asia/Dubai'),
(3344, 784, 'Ajman', 'Asia/Dubai'),
(3345, 784, 'Dubayy', 'Asia/Dubai'),
(3346, 784, 'Al Fujayrah', 'Asia/Dubai'),
(3347, 784, 'Raʼs al Khaymah', 'Asia/Dubai'),
(3348, 784, 'Ash Shāriqah', 'Asia/Dubai'),
(3349, 784, 'Umm al Qaywayn', 'Asia/Dubai'),
(3350, 788, 'Tunis al Janubiyah Wilayat', 'Africa/Tunis'),
(3351, 788, 'Al Qaşrayn', 'Africa/Tunis'),
(3352, 788, 'Al Qayrawān', 'Africa/Tunis'),
(3353, 788, 'Jundūbah', 'Africa/Tunis'),
(3354, 788, 'Kef', 'Africa/Tunis'),
(3355, 788, 'Al Mahdīyah', 'Africa/Tunis'),
(3356, 788, 'Al Munastīr', 'Africa/Tunis'),
(3357, 788, 'Bājah', 'Africa/Tunis'),
(3358, 788, 'Banzart', 'Africa/Tunis'),
(3359, 788, 'Nābul', 'Africa/Tunis'),
(3360, 788, 'Silyānah', 'Africa/Tunis'),
(3361, 788, 'Sūsah', 'Africa/Tunis'),
(3362, 788, 'Bin ‘Arūs', 'Africa/Tunis'),
(3363, 788, 'Madanīn', 'Africa/Tunis'),
(3364, 788, 'Qābis', 'Africa/Tunis'),
(3365, 788, 'Qafşah', 'Africa/Tunis'),
(3366, 788, 'Qibilī', 'Africa/Tunis'),
(3367, 788, 'Şafāqis', 'Africa/Tunis'),
(3368, 788, 'Sīdī Bū Zayd', 'Africa/Tunis'),
(3369, 788, 'Taţāwīn', 'Africa/Tunis'),
(3370, 788, 'Tawzar', 'Africa/Tunis'),
(3371, 788, 'Tūnis', 'Africa/Tunis'),
(3372, 788, 'Zaghwān', 'Africa/Tunis'),
(3373, 788, 'Ariana', 'Africa/Tunis'),
(3374, 788, 'Manouba', 'Africa/Tunis'),
(3375, 792, 'Adıyaman', 'Europe/Istanbul'),
(3376, 792, 'Afyonkarahisar', 'Europe/Istanbul'),
(3377, 792, 'Ağrı Province', 'Europe/Istanbul'),
(3378, 792, 'Amasya Province', 'Europe/Istanbul'),
(3379, 792, 'Antalya Province', 'Europe/Istanbul'),
(3380, 792, 'Artvin Province', 'Europe/Istanbul'),
(3381, 792, 'Aydın Province', 'Europe/Istanbul'),
(3382, 792, 'Balıkesir Province', 'Europe/Istanbul'),
(3383, 792, 'Bilecik Province', 'Europe/Istanbul'),
(3384, 792, 'Bingöl Province', 'Europe/Istanbul'),
(3385, 792, 'Bitlis Province', 'Europe/Istanbul'),
(3386, 792, 'Bolu Province', 'Europe/Istanbul'),
(3387, 792, 'Burdur Province', 'Europe/Istanbul'),
(3388, 792, 'Bursa', 'Europe/Istanbul'),
(3389, 792, 'Çanakkale Province', 'Europe/Istanbul'),
(3390, 792, 'Çorum Province', 'Europe/Istanbul'),
(3391, 792, 'Denizli Province', 'Europe/Istanbul'),
(3392, 792, 'Diyarbakır', 'Europe/Istanbul'),
(3393, 792, 'Edirne Province', 'Europe/Istanbul'),
(3394, 792, 'Elazığ', 'Europe/Istanbul'),
(3395, 792, 'Erzincan Province', 'Europe/Istanbul'),
(3396, 792, 'Erzurum Province', 'Europe/Istanbul'),
(3397, 792, 'Eskişehir Province', 'Europe/Istanbul'),
(3398, 792, 'Giresun Province', 'Europe/Istanbul'),
(3399, 792, 'Hatay Province', 'Europe/Istanbul'),
(3400, 792, 'Mersin Province', 'Europe/Istanbul'),
(3401, 792, 'Isparta Province', 'Europe/Istanbul'),
(3402, 792, 'Istanbul', 'Europe/Istanbul'),
(3403, 792, 'İzmir', 'Europe/Istanbul'),
(3404, 792, 'Kastamonu Province', 'Europe/Istanbul'),
(3405, 792, 'Kayseri Province', 'Europe/Istanbul'),
(3406, 792, 'Kırklareli Province', 'Europe/Istanbul'),
(3407, 792, 'Kırşehir Province', 'Europe/Istanbul'),
(3408, 792, 'Kocaeli Province', 'Europe/Istanbul'),
(3409, 792, 'Kütahya Province', 'Europe/Istanbul'),
(3410, 792, 'Malatya Province', 'Europe/Istanbul'),
(3411, 792, 'Manisa Province', 'Europe/Istanbul'),
(3412, 792, 'Kahramanmaraş Province', 'Europe/Istanbul'),
(3413, 792, 'Muğla Province', 'Europe/Istanbul'),
(3414, 792, 'Muş Province', 'Europe/Istanbul'),
(3415, 792, 'Nevşehir', 'Europe/Istanbul'),
(3416, 792, 'Ordu', 'Europe/Istanbul'),
(3417, 792, 'Rize', 'Europe/Istanbul'),
(3418, 792, 'Sakarya Province', 'Europe/Istanbul'),
(3419, 792, 'Samsun Province', 'Europe/Istanbul'),
(3420, 792, 'Sinop Province', 'Europe/Istanbul'),
(3421, 792, 'Sivas Province', 'Europe/Istanbul'),
(3422, 792, 'Tekirdağ Province', 'Europe/Istanbul'),
(3423, 792, 'Tokat', 'Europe/Istanbul'),
(3424, 792, 'Trabzon Province', 'Europe/Istanbul'),
(3425, 792, 'Tunceli Province', 'Europe/Istanbul'),
(3426, 792, 'Şanlıurfa Province', 'Europe/Istanbul'),
(3427, 792, 'Uşak Province', 'Europe/Istanbul'),
(3428, 792, 'Van Province', 'Europe/Istanbul'),
(3429, 792, 'Yozgat Province', 'Europe/Istanbul'),
(3430, 792, 'Ankara Province', 'Europe/Istanbul'),
(3431, 792, 'Gümüşhane', 'Europe/Istanbul'),
(3432, 792, 'Hakkâri Province', 'Europe/Istanbul'),
(3433, 792, 'Konya Province', 'Europe/Istanbul'),
(3434, 792, 'Mardin Province', 'Europe/Istanbul'),
(3435, 792, 'Niğde', 'Europe/Istanbul'),
(3436, 792, 'Siirt Province', 'Europe/Istanbul'),
(3437, 792, 'Aksaray Province', 'Europe/Istanbul'),
(3438, 792, 'Batman Province', 'Europe/Istanbul'),
(3439, 792, 'Bayburt', 'Europe/Istanbul'),
(3440, 792, 'Karaman Province', 'Europe/Istanbul'),
(3441, 792, 'Kırıkkale Province', 'Europe/Istanbul'),
(3442, 792, 'Şırnak Province', 'Europe/Istanbul'),
(3443, 792, 'Adana Province', 'Europe/Istanbul'),
(3444, 792, 'Çankırı Province', 'Europe/Istanbul'),
(3445, 792, 'Gaziantep Province', 'Europe/Istanbul'),
(3446, 792, 'Kars', 'Europe/Istanbul'),
(3447, 792, 'Zonguldak', 'Europe/Istanbul'),
(3448, 792, 'Ardahan Province', 'Europe/Istanbul'),
(3449, 792, 'Bartın Province', 'Europe/Istanbul'),
(3450, 792, 'Iğdır Province', 'Europe/Istanbul'),
(3451, 792, 'Karabük', 'Europe/Istanbul'),
(3452, 792, 'Kilis Province', 'Europe/Istanbul'),
(3453, 792, 'Osmaniye Province', 'Europe/Istanbul'),
(3454, 792, 'Yalova Province', 'Europe/Istanbul'),
(3455, 792, 'Düzce', 'Europe/Istanbul'),
(3456, 795, 'Ahal', 'Asia/Ashgabat'),
(3457, 795, 'Balkan', 'Asia/Ashgabat'),
(3458, 795, 'Daşoguz', 'Asia/Ashgabat'),
(3459, 795, 'Lebap', 'Asia/Ashgabat'),
(3460, 795, 'Mary', 'Asia/Ashgabat'),
(3461, 796, 'Turks and Caicos Islands', 'America/Grand_Turk'),
(3462, 798, 'Tuvalu', 'Pacific/Funafuti'),
(3463, 800, 'Eastern Region', 'Africa/Kampala'),
(3464, 800, 'Northern Region', 'Africa/Kampala'),
(3465, 800, 'Central Region', 'Africa/Kampala'),
(3466, 800, 'Western Region', 'Africa/Kampala'),
(3467, 804, 'Cherkasʼka Oblastʼ', 'Europe/Kiev'),
(3468, 804, 'Chernihivsʼka Oblastʼ', 'Europe/Kiev'),
(3469, 804, 'Chernivetsʼka Oblastʼ', 'Europe/Kiev'),
(3470, 804, 'Dnipropetrovsʼka Oblastʼ', 'Europe/Kiev'),
(3471, 804, 'Donetsʼka Oblastʼ', 'Europe/Kiev'),
(3472, 804, 'Ivano-Frankivsʼka Oblastʼ', 'Europe/Kiev'),
(3473, 804, 'Kharkivsʼka Oblastʼ', 'Europe/Kiev'),
(3474, 804, 'Kherson Oblast', 'Europe/Kiev'),
(3475, 804, 'Khmelʼnytsʼka Oblastʼ', 'Europe/Kiev'),
(3476, 804, 'Kirovohradsʼka Oblastʼ', 'Europe/Kiev'),
(3477, 804, 'Avtonomna Respublika Krym', 'Europe/Kiev'),
(3478, 804, 'Misto Kyyiv', 'Europe/Kiev'),
(3479, 804, 'Kiev Oblast', 'Europe/Kiev');
INSERT INTO `country_region` (`id`, `country_id`, `name`, `timezone`) VALUES
(3480, 804, 'Luhansʼka Oblastʼ', 'Europe/Kiev'),
(3481, 804, 'Lʼvivsʼka Oblastʼ', 'Europe/Kiev'),
(3482, 804, 'Mykolayivsʼka Oblastʼ', 'Europe/Kiev'),
(3483, 804, 'Odessa Oblast', 'Europe/Kiev'),
(3484, 804, 'Poltava Oblast', 'Europe/Kiev'),
(3485, 804, 'Rivnensʼka Oblastʼ', 'Europe/Kiev'),
(3486, 804, 'Misto Sevastopol', 'Europe/Kiev'),
(3487, 804, 'Sumy Oblast', 'Europe/Kiev'),
(3488, 804, 'Ternopilʼsʼka Oblastʼ', 'Europe/Kiev'),
(3489, 804, 'Vinnytsʼka Oblastʼ', 'Europe/Kiev'),
(3490, 804, 'Volynsʼka Oblastʼ', 'Europe/Kiev'),
(3491, 804, 'Zakarpatsʼka Oblastʼ', 'Europe/Kiev'),
(3492, 804, 'Zaporizʼka Oblastʼ', 'Europe/Kiev'),
(3493, 804, 'Zhytomyrsʼka Oblastʼ', 'Europe/Kiev'),
(3494, 807, 'Macedonia, The Former Yugoslav Republic of', 'Europe/Skopje'),
(3495, 807, 'Aračinovo', 'Europe/Skopje'),
(3496, 807, 'Bač', 'Europe/Skopje'),
(3497, 807, 'Belčišta', 'Europe/Skopje'),
(3498, 807, 'Berovo', 'Europe/Skopje'),
(3499, 807, 'Bistrica', 'Europe/Skopje'),
(3500, 807, 'Bitola', 'Europe/Skopje'),
(3501, 807, 'Blatec', 'Europe/Skopje'),
(3502, 807, 'Bogdanci', 'Europe/Skopje'),
(3503, 807, 'Opstina Bogomila', 'Europe/Skopje'),
(3504, 807, 'Bogovinje', 'Europe/Skopje'),
(3505, 807, 'Bosilovo', 'Europe/Skopje'),
(3506, 807, 'Brvenica', 'Europe/Skopje'),
(3507, 807, 'Čair', 'Europe/Skopje'),
(3508, 807, 'Capari', 'Europe/Skopje'),
(3509, 807, 'Čaška', 'Europe/Skopje'),
(3510, 807, 'Čegrana', 'Europe/Skopje'),
(3511, 807, 'Centar', 'Europe/Skopje'),
(3512, 807, 'Centar Župa', 'Europe/Skopje'),
(3513, 807, 'Češinovo', 'Europe/Skopje'),
(3514, 807, 'Čučer-Sandevo', 'Europe/Skopje'),
(3515, 807, 'Debar', 'Europe/Skopje'),
(3516, 807, 'Delčevo', 'Europe/Skopje'),
(3517, 807, 'Delogoždi', 'Europe/Skopje'),
(3518, 807, 'Demir Hisar', 'Europe/Skopje'),
(3519, 807, 'Demir Kapija', 'Europe/Skopje'),
(3520, 807, 'Dobruševo', 'Europe/Skopje'),
(3521, 807, 'Dolna Banjica', 'Europe/Skopje'),
(3522, 807, 'Dolneni', 'Europe/Skopje'),
(3523, 807, 'Opstina Gjorce Petrov', 'Europe/Skopje'),
(3524, 807, 'Drugovo', 'Europe/Skopje'),
(3525, 807, 'Džepčište', 'Europe/Skopje'),
(3526, 807, 'Gazi Baba', 'Europe/Skopje'),
(3527, 807, 'Gevgelija', 'Europe/Skopje'),
(3528, 807, 'Gostivar', 'Europe/Skopje'),
(3529, 807, 'Gradsko', 'Europe/Skopje'),
(3530, 807, 'Ilinden', 'Europe/Skopje'),
(3531, 807, 'Izvor', 'Europe/Skopje'),
(3532, 807, 'Jegunovce', 'Europe/Skopje'),
(3533, 807, 'Kamenjane', 'Europe/Skopje'),
(3534, 807, 'Karbinci', 'Europe/Skopje'),
(3535, 807, 'Karpoš', 'Europe/Skopje'),
(3536, 807, 'Kavadarci', 'Europe/Skopje'),
(3537, 807, 'Kičevo', 'Europe/Skopje'),
(3538, 807, 'Kisela Voda', 'Europe/Skopje'),
(3539, 807, 'Klečevce', 'Europe/Skopje'),
(3540, 807, 'Kočani', 'Europe/Skopje'),
(3541, 807, 'Konče', 'Europe/Skopje'),
(3542, 807, 'Kondovo', 'Europe/Skopje'),
(3543, 807, 'Konopište', 'Europe/Skopje'),
(3544, 807, 'Kosel', 'Europe/Skopje'),
(3545, 807, 'Kratovo', 'Europe/Skopje'),
(3546, 807, 'Kriva Palanka', 'Europe/Skopje'),
(3547, 807, 'Krivogaštani', 'Europe/Skopje'),
(3548, 807, 'Kruševo', 'Europe/Skopje'),
(3549, 807, 'Kukliš', 'Europe/Skopje'),
(3550, 807, 'Kukurečani', 'Europe/Skopje'),
(3551, 807, 'Kumanovo', 'Europe/Skopje'),
(3552, 807, 'Labuništa', 'Europe/Skopje'),
(3553, 807, 'Opstina Lipkovo', 'Europe/Skopje'),
(3554, 807, 'Lozovo', 'Europe/Skopje'),
(3555, 807, 'Lukovo', 'Europe/Skopje'),
(3556, 807, 'Makedonska Kamenica', 'Europe/Skopje'),
(3557, 807, 'Makedonski Brod', 'Europe/Skopje'),
(3558, 807, 'Mavrovi Anovi', 'Europe/Skopje'),
(3559, 807, 'Mešeišta', 'Europe/Skopje'),
(3560, 807, 'Miravci', 'Europe/Skopje'),
(3561, 807, 'Mogila', 'Europe/Skopje'),
(3562, 807, 'Murtino', 'Europe/Skopje'),
(3563, 807, 'Negotino', 'Europe/Skopje'),
(3564, 807, 'Negotino-Pološko', 'Europe/Skopje'),
(3565, 807, 'Novaci', 'Europe/Skopje'),
(3566, 807, 'Novo Selo', 'Europe/Skopje'),
(3567, 807, 'Obleševo', 'Europe/Skopje'),
(3568, 807, 'Ohrid', 'Europe/Skopje'),
(3569, 807, 'Orašac', 'Europe/Skopje'),
(3570, 807, 'Orizari', 'Europe/Skopje'),
(3571, 807, 'Oslomej', 'Europe/Skopje'),
(3572, 807, 'Pehčevo', 'Europe/Skopje'),
(3573, 807, 'Petrovec', 'Europe/Skopje'),
(3574, 807, 'Plasnica', 'Europe/Skopje'),
(3575, 807, 'Podareš', 'Europe/Skopje'),
(3576, 807, 'Prilep', 'Europe/Skopje'),
(3577, 807, 'Probištip', 'Europe/Skopje'),
(3578, 807, 'Radoviš', 'Europe/Skopje'),
(3579, 807, 'Opstina Rankovce', 'Europe/Skopje'),
(3580, 807, 'Resen', 'Europe/Skopje'),
(3581, 807, 'Rosoman', 'Europe/Skopje'),
(3582, 807, 'Opština Rostuša', 'Europe/Skopje'),
(3583, 807, 'Samokov', 'Europe/Skopje'),
(3584, 807, 'Saraj', 'Europe/Skopje'),
(3585, 807, 'Šipkovica', 'Europe/Skopje'),
(3586, 807, 'Sopište', 'Europe/Skopje'),
(3587, 807, 'Sopotnica', 'Europe/Skopje'),
(3588, 807, 'Srbinovo', 'Europe/Skopje'),
(3589, 807, 'Staravina', 'Europe/Skopje'),
(3590, 807, 'Star Dojran', 'Europe/Skopje'),
(3591, 807, 'Staro Nagoričane', 'Europe/Skopje'),
(3592, 807, 'Štip', 'Europe/Skopje'),
(3593, 807, 'Struga', 'Europe/Skopje'),
(3594, 807, 'Strumica', 'Europe/Skopje'),
(3595, 807, 'Studeničani', 'Europe/Skopje'),
(3596, 807, 'Šuto Orizari', 'Europe/Skopje'),
(3597, 807, 'Sveti Nikole', 'Europe/Skopje'),
(3598, 807, 'Tearce', 'Europe/Skopje'),
(3599, 807, 'Tetovo', 'Europe/Skopje'),
(3600, 807, 'Topolčani', 'Europe/Skopje'),
(3601, 807, 'Valandovo', 'Europe/Skopje'),
(3602, 807, 'Vasilevo', 'Europe/Skopje'),
(3603, 807, 'Veles', 'Europe/Skopje'),
(3604, 807, 'Velešta', 'Europe/Skopje'),
(3605, 807, 'Vevčani', 'Europe/Skopje'),
(3606, 807, 'Vinica', 'Europe/Skopje'),
(3607, 807, 'Vitolište', 'Europe/Skopje'),
(3608, 807, 'Vraneštica', 'Europe/Skopje'),
(3609, 807, 'Vrapčište', 'Europe/Skopje'),
(3610, 807, 'Vratnica', 'Europe/Skopje'),
(3611, 807, 'Vrutok', 'Europe/Skopje'),
(3612, 807, 'Zajas', 'Europe/Skopje'),
(3613, 807, 'Zelenikovo', 'Europe/Skopje'),
(3614, 807, 'Želino', 'Europe/Skopje'),
(3615, 807, 'Žitoše', 'Europe/Skopje'),
(3616, 807, 'Zletovo', 'Europe/Skopje'),
(3617, 807, 'Zrnovci', 'Europe/Skopje'),
(3618, 818, 'Ad Daqahlīyah', 'Africa/Cairo'),
(3619, 818, 'Al Baḩr al Aḩmar', 'Africa/Cairo'),
(3620, 818, 'Al Buḩayrah', 'Africa/Cairo'),
(3621, 818, 'Al Fayyūm', 'Africa/Cairo'),
(3622, 818, 'Al Gharbīyah', 'Africa/Cairo'),
(3623, 818, 'Alexandria', 'Africa/Cairo'),
(3624, 818, 'Al Ismā‘īlīyah', 'Africa/Cairo'),
(3625, 818, 'Al Jīzah', 'Africa/Cairo'),
(3626, 818, 'Al Minūfīyah', 'Africa/Cairo'),
(3627, 818, 'Al Minyā', 'Africa/Cairo'),
(3628, 818, 'Al Qāhirah', 'Africa/Cairo'),
(3629, 818, 'Al Qalyūbīyah', 'Africa/Cairo'),
(3630, 818, 'Al Wādī al Jadīd', 'Africa/Cairo'),
(3631, 818, 'Eastern Province', 'Africa/Cairo'),
(3632, 818, 'As Suways', 'Africa/Cairo'),
(3633, 818, 'Aswān', 'Africa/Cairo'),
(3634, 818, 'Asyūţ', 'Africa/Cairo'),
(3635, 818, 'Banī Suwayf', 'Africa/Cairo'),
(3636, 818, 'Būr Sa‘īd', 'Africa/Cairo'),
(3637, 818, 'Dumyāţ', 'Africa/Cairo'),
(3638, 818, 'Kafr ash Shaykh', 'Africa/Cairo'),
(3639, 818, 'Maţrūḩ', 'Africa/Cairo'),
(3640, 818, 'Qinā', 'Africa/Cairo'),
(3641, 818, 'Sūhāj', 'Africa/Cairo'),
(3642, 818, 'Janūb Sīnāʼ', 'Africa/Cairo'),
(3643, 818, 'Shamāl Sīnāʼ', 'Africa/Cairo'),
(3644, 818, 'Luxor', 'Africa/Cairo'),
(3645, 818, 'Helwan', 'Africa/Cairo'),
(3646, 818, '6th of October', 'Africa/Cairo'),
(3647, 826, 'England', 'Europe/London'),
(3648, 826, 'Northern Ireland', 'Europe/London'),
(3649, 826, 'Scotland', 'Europe/London'),
(3650, 826, 'Wales', 'Europe/London'),
(3651, 831, 'Guernsey', 'Europe/Guernsey'),
(3652, 833, 'Isle of Man', 'Europe/Isle_of_Man'),
(3653, 834, 'Arusha', 'Africa/Dar_es_Salaam'),
(3654, 834, 'Pwani', 'Africa/Dar_es_Salaam'),
(3655, 834, 'Dodoma', 'Africa/Dar_es_Salaam'),
(3656, 834, 'Iringa', 'Africa/Dar_es_Salaam'),
(3657, 834, 'Kigoma', 'Africa/Dar_es_Salaam'),
(3658, 834, 'Kilimanjaro', 'Africa/Dar_es_Salaam'),
(3659, 834, 'Lindi', 'Africa/Dar_es_Salaam'),
(3660, 834, 'Mara', 'Africa/Dar_es_Salaam'),
(3661, 834, 'Mbeya', 'Africa/Dar_es_Salaam'),
(3662, 834, 'Morogoro', 'Africa/Dar_es_Salaam'),
(3663, 834, 'Mtwara', 'Africa/Dar_es_Salaam'),
(3664, 834, 'Mwanza', 'Africa/Dar_es_Salaam'),
(3665, 834, 'Pemba North', 'Africa/Dar_es_Salaam'),
(3666, 834, 'Ruvuma', 'Africa/Dar_es_Salaam'),
(3667, 834, 'Shinyanga', 'Africa/Dar_es_Salaam'),
(3668, 834, 'Singida', 'Africa/Dar_es_Salaam'),
(3669, 834, 'Tabora', 'Africa/Dar_es_Salaam'),
(3670, 834, 'Tanga', 'Africa/Dar_es_Salaam'),
(3671, 834, 'Kagera', 'Africa/Dar_es_Salaam'),
(3672, 834, 'Pemba South', 'Africa/Dar_es_Salaam'),
(3673, 834, 'Zanzibar Central/South', 'Africa/Dar_es_Salaam'),
(3674, 834, 'Zanzibar North', 'Africa/Dar_es_Salaam'),
(3675, 834, 'Dar es Salaam', 'Africa/Dar_es_Salaam'),
(3676, 834, 'Rukwa', 'Africa/Dar_es_Salaam'),
(3677, 834, 'Zanzibar Urban/West', 'Africa/Dar_es_Salaam'),
(3678, 834, 'Arusha', 'Africa/Dar_es_Salaam'),
(3679, 834, 'Manyara', 'Africa/Dar_es_Salaam'),
(3680, 840, 'Alaska', 'America/Anchorage'),
(3681, 840, 'Alabama', 'America/Chicago'),
(3682, 840, 'Arkansas', 'America/Chicago'),
(3683, 840, 'Arizona', 'America/Phoenix'),
(3684, 840, 'California', 'America/Los_Angeles'),
(3685, 840, 'Colorado', 'America/Denver'),
(3686, 840, 'Connecticut', 'America/New_York'),
(3687, 840, 'District of Columbia', 'America/New_York'),
(3688, 840, 'Delaware', 'America/New_York'),
(3689, 840, 'Florida', 'America/New_York'),
(3690, 840, 'Georgia', 'America/New_York'),
(3691, 840, 'Hawaii', 'Pacific/Honolulu'),
(3692, 840, 'Iowa', 'America/Chicago'),
(3693, 840, 'Idaho', 'America/Denver'),
(3694, 840, 'Illinois', 'America/Chicago'),
(3695, 840, 'Indiana', 'America/New_York'),
(3696, 840, 'Kansas', 'America/Chicago'),
(3697, 840, 'Kentucky', 'America/New_York'),
(3698, 840, 'Louisiana', 'America/Chicago'),
(3699, 840, 'Massachusetts', 'America/New_York'),
(3700, 840, 'Maryland', 'America/New_York'),
(3701, 840, 'Maine', 'America/New_York'),
(3702, 840, 'Michigan', 'America/New_York'),
(3703, 840, 'Minnesota', 'America/Chicago'),
(3704, 840, 'Missouri', 'America/Chicago'),
(3705, 840, 'Mississippi', 'America/Chicago'),
(3706, 840, 'Montana', 'America/Denver'),
(3707, 840, 'North Carolina', 'America/New_York'),
(3708, 840, 'North Dakota', 'America/Chicago'),
(3709, 840, 'Nebraska', 'America/Chicago'),
(3710, 840, 'New Hampshire', 'America/New_York'),
(3711, 840, 'New Jersey', 'America/New_York'),
(3712, 840, 'New Mexico', 'America/Denver'),
(3713, 840, 'Nevada', 'America/Los_Angeles'),
(3714, 840, 'New York', 'America/New_York'),
(3715, 840, 'Ohio', 'America/New_York'),
(3716, 840, 'Oklahoma', 'America/Chicago'),
(3717, 840, 'Oregon', 'America/Los_Angeles'),
(3718, 840, 'Pennsylvania', 'America/New_York'),
(3719, 840, 'Rhode Island', 'America/New_York'),
(3720, 840, 'South Carolina', 'America/New_York'),
(3721, 840, 'South Dakota', 'America/Chicago'),
(3722, 840, 'Tennessee', 'America/Chicago'),
(3723, 840, 'Texas', 'America/Chicago'),
(3724, 840, 'Utah', 'America/Denver'),
(3725, 840, 'Virginia', 'America/New_York'),
(3726, 840, 'Vermont', 'America/New_York'),
(3727, 840, 'Washington', 'America/Los_Angeles'),
(3728, 840, 'Wisconsin', 'America/Chicago'),
(3729, 840, 'West Virginia', 'America/New_York'),
(3730, 840, 'Wyoming', 'America/Denver'),
(3731, 850, 'Virgin Islands', 'America/St_Thomas'),
(3732, 854, 'Boucle du Mouhoun', 'Africa/Ouagadougou'),
(3733, 854, 'Cascades', 'Africa/Ouagadougou'),
(3734, 854, 'Centre', 'Africa/Ouagadougou'),
(3735, 854, 'Centre-Est', 'Africa/Ouagadougou'),
(3736, 854, 'Centre-Nord', 'Africa/Ouagadougou'),
(3737, 854, 'Centre-Ouest', 'Africa/Ouagadougou'),
(3738, 854, 'Centre-Sud', 'Africa/Ouagadougou'),
(3739, 854, 'Est', 'Africa/Ouagadougou'),
(3740, 854, 'Hauts-Bassins', 'Africa/Ouagadougou'),
(3741, 854, 'Nord', 'Africa/Ouagadougou'),
(3742, 854, 'Plateau-Central', 'Africa/Ouagadougou'),
(3743, 854, 'Sahel', 'Africa/Ouagadougou'),
(3744, 854, 'Sud-Ouest', 'Africa/Ouagadougou'),
(3745, 855, 'Komuna e Deçanit', 'Europe/Belgrade'),
(3746, 855, 'Komuna e Dragashit', 'Europe/Belgrade'),
(3747, 855, 'Komuna e Ferizajt', 'Europe/Belgrade'),
(3748, 855, 'Komuna e Fushë Kosovës', 'Europe/Belgrade'),
(3749, 855, 'Komuna e Gjakovës', 'Europe/Belgrade'),
(3750, 855, 'Komuna e Gjilanit', 'Europe/Belgrade'),
(3751, 855, 'Komuna e Drenasit', 'Europe/Belgrade'),
(3752, 855, 'Komuna e Istogut', 'Europe/Belgrade'),
(3753, 855, 'Komuna e Kaçanikut', 'Europe/Belgrade'),
(3754, 855, 'Komuna e Kamenicës', 'Europe/Belgrade'),
(3755, 855, 'Komuna e Klinës', 'Europe/Belgrade'),
(3756, 855, 'Komuna e Leposaviqit', 'Europe/Belgrade'),
(3757, 855, 'Komuna e Lipjanit', 'Europe/Belgrade'),
(3758, 855, 'Komuna e Malisheves', 'Europe/Belgrade'),
(3759, 855, 'Komuna e Mitrovicës', 'Europe/Belgrade'),
(3760, 855, 'Komuna e Novobërdës', 'Europe/Belgrade'),
(3761, 855, 'Komuna e Obiliqit', 'Europe/Belgrade'),
(3762, 855, 'Komuna e Pejës', 'Europe/Belgrade'),
(3763, 855, 'Komuna e Podujevës', 'Europe/Belgrade'),
(3764, 855, 'Komuna e Prishtinës', 'Europe/Belgrade'),
(3765, 855, 'Komuna e Prizrenit', 'Europe/Belgrade'),
(3766, 855, 'Komuna e Rahovecit', 'Europe/Belgrade'),
(3767, 855, 'Komuna e Shtërpcës', 'Europe/Belgrade'),
(3768, 855, 'Komuna e Shtimes', 'Europe/Belgrade'),
(3769, 855, 'Komuna e Skenderajt', 'Europe/Belgrade'),
(3770, 855, 'Komuna e Thërandës', 'Europe/Belgrade'),
(3771, 855, 'Komuna e Vitisë', 'Europe/Belgrade'),
(3772, 855, 'Komuna e Vushtrrisë', 'Europe/Belgrade'),
(3773, 855, 'Komuna e Zubin Potokut', 'Europe/Belgrade'),
(3774, 855, 'Komuna e Zveçanit', 'Europe/Belgrade'),
(3775, 858, 'Artigas Department', 'America/Montevideo'),
(3776, 858, 'Canelones Department', 'America/Montevideo'),
(3777, 858, 'Cerro Largo Department', 'America/Montevideo'),
(3778, 858, 'Colonia Department', 'America/Montevideo'),
(3779, 858, 'Durazno', 'America/Montevideo'),
(3780, 858, 'Flores', 'America/Montevideo'),
(3781, 858, 'Florida Department', 'America/Montevideo'),
(3782, 858, 'Lavalleja Department', 'America/Montevideo'),
(3783, 858, 'Maldonado Department', 'America/Montevideo'),
(3784, 858, 'Montevideo', 'America/Montevideo'),
(3785, 858, 'Paysandú', 'America/Montevideo'),
(3786, 858, 'Río Negro', 'America/Montevideo'),
(3787, 858, 'Rivera', 'America/Montevideo'),
(3788, 858, 'Rocha', 'America/Montevideo'),
(3789, 858, 'Salto', 'America/Montevideo'),
(3790, 858, 'San José', 'America/Montevideo'),
(3791, 858, 'Soriano Department', 'America/Montevideo'),
(3792, 858, 'Tacuarembó', 'America/Montevideo'),
(3793, 858, 'Treinta y Tres', 'America/Montevideo'),
(3794, 860, 'Andijon', 'Asia/Samarkand'),
(3795, 860, 'Buxoro', 'Asia/Samarkand'),
(3796, 860, 'Farg ona', 'Asia/Samarkand'),
(3797, 860, 'Xorazm', 'Asia/Samarkand'),
(3798, 860, 'Namangan', 'Asia/Samarkand'),
(3799, 860, 'Navoiy', 'Asia/Samarkand'),
(3800, 860, 'Qashqadaryo', 'Asia/Samarkand'),
(3801, 860, 'Karakalpakstan', 'Asia/Samarkand'),
(3802, 860, 'Samarqand', 'Asia/Samarkand'),
(3803, 860, 'Surxondaryo', 'Asia/Samarkand'),
(3804, 860, 'Toshkent Shahri', 'Asia/Samarkand'),
(3805, 860, 'Toshkent', 'Asia/Samarkand'),
(3806, 860, 'Jizzax', 'Asia/Samarkand'),
(3807, 860, 'Sirdaryo', 'Asia/Samarkand'),
(3808, 862, 'Amazonas', 'America/Caracas'),
(3809, 862, 'Anzoátegui', 'America/Caracas'),
(3810, 862, 'Apure', 'America/Caracas'),
(3811, 862, 'Aragua', 'America/Caracas'),
(3812, 862, 'Barinas', 'America/Caracas'),
(3813, 862, 'Bolívar', 'America/Caracas'),
(3814, 862, 'Carabobo', 'America/Caracas'),
(3815, 862, 'Cojedes', 'America/Caracas'),
(3816, 862, 'Delta Amacuro', 'America/Caracas'),
(3817, 862, 'Distrito Federal', 'America/Caracas'),
(3818, 862, 'Falcón', 'America/Caracas'),
(3819, 862, 'Guárico', 'America/Caracas'),
(3820, 862, 'Lara', 'America/Caracas'),
(3821, 862, 'Mérida', 'America/Caracas'),
(3822, 862, 'Miranda', 'America/Caracas'),
(3823, 862, 'Monagas', 'America/Caracas'),
(3824, 862, 'Isla Margarita', 'America/Caracas'),
(3825, 862, 'Portuguesa', 'America/Caracas'),
(3826, 862, 'Sucre', 'America/Caracas'),
(3827, 862, 'Táchira', 'America/Caracas'),
(3828, 862, 'Trujillo', 'America/Caracas'),
(3829, 862, 'Yaracuy', 'America/Caracas'),
(3830, 862, 'Zulia', 'America/Caracas'),
(3831, 862, 'Dependencias Federales', 'America/Caracas'),
(3832, 862, 'Distrito Capital', 'America/Caracas'),
(3833, 862, 'Vargas', 'America/Caracas'),
(3834, 882, 'A‘ana', 'Pacific/Apia'),
(3835, 882, 'Aiga-i-le-Tai', 'Pacific/Apia'),
(3836, 882, 'Atua', 'Pacific/Apia'),
(3837, 882, 'Fa‘asaleleaga', 'Pacific/Apia'),
(3838, 882, 'Gaga‘emauga', 'Pacific/Apia'),
(3839, 882, 'Va‘a-o-Fonoti', 'Pacific/Apia'),
(3840, 882, 'Gagaifomauga', 'Pacific/Apia'),
(3841, 882, 'Palauli', 'Pacific/Apia'),
(3842, 882, 'Satupa‘itea', 'Pacific/Apia'),
(3843, 882, 'Tuamasaga', 'Pacific/Apia'),
(3844, 882, 'Vaisigano', 'Pacific/Apia'),
(3845, 887, 'Abyan', 'Asia/Aden'),
(3846, 887, '‘Adan', 'Asia/Aden'),
(3847, 887, 'Al Mahrah', 'Asia/Aden'),
(3848, 887, 'Ḩaḑramawt', 'Asia/Aden'),
(3849, 887, 'Shabwah', 'Asia/Aden'),
(3850, 887, 'San’a’', 'Asia/Aden'),
(3851, 887, 'Ta’izz', 'Asia/Aden'),
(3852, 887, 'Al Ḩudaydah', 'Asia/Aden'),
(3853, 887, 'Dhamar', 'Asia/Aden'),
(3854, 887, 'Al Maḩwīt', 'Asia/Aden'),
(3855, 887, 'Dhamār', 'Asia/Aden'),
(3856, 887, 'Maʼrib', 'Asia/Aden'),
(3857, 887, 'Şa‘dah', 'Asia/Aden'),
(3858, 887, 'Şan‘āʼ', 'Asia/Aden'),
(3859, 887, 'Aḑ Ḑāli‘', 'Asia/Aden'),
(3860, 887, 'Omran', 'Asia/Aden'),
(3861, 887, 'Al Bayḑāʼ', 'Asia/Aden'),
(3862, 887, 'Al Jawf', 'Asia/Aden'),
(3863, 887, 'Ḩajjah', 'Asia/Aden'),
(3864, 887, 'Ibb', 'Asia/Aden'),
(3865, 887, 'Laḩij', 'Asia/Aden'),
(3866, 887, 'Ta‘izz', 'Asia/Aden'),
(3867, 887, 'Amanat Al Asimah', 'Asia/Aden'),
(3868, 887, 'Muḩāfaz̧at Raymah', 'Asia/Aden'),
(3869, 891, 'Crna Gora (Montenegro)', 'Europe/Podgorica'),
(3870, 891, 'Srbija (Serbia)', 'Europe/Podgorica'),
(3871, 894, 'North-Western', 'Africa/Lusaka'),
(3872, 894, 'Copperbelt', 'Africa/Lusaka'),
(3873, 894, 'Western', 'Africa/Lusaka'),
(3874, 894, 'Southern', 'Africa/Lusaka'),
(3875, 894, 'Central', 'Africa/Lusaka'),
(3876, 894, 'Eastern', 'Africa/Lusaka'),
(3877, 894, 'Northern', 'Africa/Lusaka'),
(3878, 894, 'Luapula', 'Africa/Lusaka'),
(3879, 894, 'Lusaka', 'Africa/Lusaka');

--
-- Constraints for dumped tables
---- table countries counts 247 units

-- insert departmanets into departments table
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Advanced Ocular Imaging Program","adipiscing, enim mi tempor lorem,");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Allergy, Asthma and Clinical Immunology","mi, ac");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Cardiovascular Medicine","Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem.");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Dermatology","eget,");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Emergency Medicine","malesuada vel, venenatis vel, faucibus");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Endocrinology, Metabolism and Clinical Nutrition","dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Family and Community Medicine","elit, dictum eu, eleifend nec,");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Gastroenterology & Hepatology","ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("General Internal Medicine","Aliquam fringilla cursus purus. Nullam scelerisque");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Geriatrics & Gerontology","neque sed sem egestas blandit. Nam nulla magna, malesuada vel,");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Hematology and Oncology","ante.");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Infectious Diseases","non, lacinia at, iaculis quis,");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Medicine","erat. Sed nunc est, mollis non,");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Nephrology","Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Neurology","ullamcorper viverra. Maecenas iaculis");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Neurosurgery","nisi dictum");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Plastic Surgery","Fusce aliquam,");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Ophthalmology/Eye Institute","leo. Vivamus");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Pulmonary, Critical Care & Sleep Medicine","Integer vulputate, risus a");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Oral and Maxillofacial Surgery","nulla. Donec non justo. Proin");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Radiation Oncology","et, eros. Proin ultrices. Duis");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Otolaryngology & Communication Sciences","semper tellus id nunc interdum feugiat. Sed nec metus");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Radiology","a feugiat tellus lorem eu metus. In");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Outcomes and Clinical Trials Research","at, nisi. Cum sociis natoque penatibus");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Rheumatology","mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus.");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Pediatrics","nunc. Quisque ornare tortor at risus. Nunc ac sem ut");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Surgical Education","aliquet diam. Sed diam lorem, auctor quis, tristique ac,");
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Urology","mi");
-- table departmanets counts 28 units

-- insert users into users table
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("Ap #822-1110 Nec St.","1994-09-01","fermentum@nonleo.com","Ashely Bradford","Female","tempus","RSB19DGC0UB","+38 (016) 974-62-78","2012-01-30",1),("P.O. Box 604, 1505 Tortor. St.","2001-11-12","ante.Vivamus.non@semconsequatnec.org","Dolan Hale","Female","neque","CQB16GWZ9JS","+38 (001) 365-39-88","2014-02-20",3),("P.O. Box 571, 2040 Arcu. Avenue","1990-01-30","natoque@tortorNunccommodo.com","Remedios King","Male","ligula","JPI49XSO0AC","+38 (065) 406-74-29","2009-10-26",1),("P.O. Box 289, 6277 Integer Rd.","2004-12-23","mauris.Integer@bibendumfermentummetus.org","Regan Stafford","Male","dictum","OHE31XUD9RL","+38 (082) 278-00-68","2012-03-06",3),("Ap #180-4640 Malesuada Road","2000-01-08","Pellentesque.habitant.morbi@CuraePhasellusornare.co.uk","Barbara Garza","Female","Nulla","JEH41IFM2UQ","+38 (036) 784-84-74","2013-02-26",3),("1438 Pede Ave","2006-03-12","mi.fringilla.mi@est.org","Rashad Heath","Female","molestie","QPG82GAC2VL","+38 (093) 558-98-26","2009-12-09",3),("P.O. Box 128, 6960 Ante St.","1981-10-24","enim@enim.net","Fletcher Terrell","Female","luctus","BUN28ARW2ZA","+38 (034) 872-44-34","2014-05-08",2),("Ap #174-1556 Erat, St.","1982-05-09","libero.Morbi@Proinvelit.co.uk","Yoshio Richmond","Male","erat,","XPX76CFX9KZ","+38 (016) 233-63-86","2008-10-24",3),("Ap #824-3761 Dolor. Av.","1996-03-01","Donec.elementum@Curabiturconsequatlectus.co.uk","Elijah Walter","Female","atil","ODZ79VHZ2VB","+38 (057) 547-48-19","2009-03-04",2),("P.O. Box 199, 1952 Auctor Rd.","1997-01-31","odio.a@vitaerisus.co.uk","Patrick Hines","Female","In","SMU63BLS1TY","+38 (084) 060-71-70","2009-06-14",1);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("356-6784 Est Street","1986-08-27","ante.dictum@rutrum.co.uk","Lionel Sexton","Female","ator","YGE45BEY2XI","+38 (053) 907-24-74","2014-01-29",3),("457-2324 Odio. St.","1987-01-05","natoque@accumsan.com","Bruce Ramsey","Female","at","VLX58KOQ6CI","+38 (090) 499-85-46","2011-06-20",3),("9554 Purus. Avenue","1994-07-10","Nullam.velit@acarcuNunc.org","Renee Becker","Female","lacus.","VCV19NUB7HE","+38 (047) 115-60-39","2013-02-09",1),("2627 Nec St.","2007-02-16","imperdiet.dictum.magna@mus.com","Charde Phelps","Female","ipsum.","SSB82MNH6PR","+38 (027) 031-99-52","2011-03-05",1),("Ap #719-286 Pharetra Street","2007-07-02","diam.vel.arcu@facilisisvitaeorci.ca","Serena Boyd","Female","ante.","NXJ53CVR5HH","+38 (066) 850-04-79","2012-12-06",1),("8986 Sed Street","2000-07-11","ornare.egestas.ligula@acmattissemper.com","Eve Vinson","Male","ullamcorper,","CSK42OXN5IB","+38 (008) 357-86-11","2009-07-27",1),("Ap #330-951 Dui Av.","2005-01-01","mauris.elit.dictum@dignissim.ca","Sonia Burris","Male","laoreet,","VFE93HCS9KC","+38 (097) 815-88-19","2012-06-19",2),("840-9006 Et Av.","2005-05-06","eleifend.non.dapibus@tempusrisus.com","Lev Gray","Female","mattis","EJI66RML1GP","+38 (004) 848-05-80","2009-10-28",1),("P.O. Box 214, 9478 Sed St.","2007-01-17","lectus@feugiatplaceratvelit.edu","Rigel Mckay","Female","pellentes","SNT36QCP6KH","+38 (055) 111-88-97","2009-11-13",3),("P.O. Box 667, 9523 Aliquet Av.","2004-08-31","amet.diam.eu@infaucibus.com","Micah Parker","Male","mi.","SAA52XXS6WO","+38 (063) 925-20-57","2013-05-31",1);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("P.O. Box 150, 4350 Sit St.","2001-02-23","enim@nunc.net","Bruce Burks","Female","ornare","AMV75DKO0NQ","+38 (085) 734-60-69","2014-09-05",2),("5970 In Rd.","1980-12-10","eleifend@egetlacusMauris.edu","Taylor Carrillo","Female","Quisque","VTN47KAX6QS","+38 (045) 065-12-11","2011-04-20",2),("Ap #104-3489 Nibh. Rd.","1994-03-17","iaculis.aliquet.diam@condimentum.ca","Jolie Curtis","Male","penatibus","KTO81VPW2VQ","+38 (084) 492-23-61","2014-07-19",2),("P.O. Box 261, 2912 Hymenaeos. Avenue","1995-12-26","justo.Praesent@sapien.edu","Rina Caldwell","Male","Cum","MCS25KRU9JR","+38 (050) 562-94-06","2011-01-04",1),("Ap #478-2076 Vulputate Rd.","2006-01-06","vitae.mauris.sit@dictummi.net","Alisa Woods","Male","per","BCR84IPJ5XK","+38 (091) 805-62-35","2008-12-05",1),("623-5059 Aliquet Street","1995-07-09","dis@Donecluctus.co.uk","Jakeem Pennington","Male","magna.","QAP27EUZ6ED","+38 (039) 103-28-32","2013-03-03",1),("Ap #168-5967 Pharetra. Avenue","1990-09-24","Fusce.diam@risusodioauctor.edu","Callie Conner","Male","eu","LLU98JAO4EH","+38 (024) 665-43-75","2014-05-14",3),("749-8446 Varius. Rd.","2008-05-03","habitant.morbi.tristique@Nunc.edu","Suki Owens","Female","sed,","MDN64YUI3VT","+38 (061) 773-20-89","2014-01-04",1),("P.O. Box 367, 4867 Mus. Av.","1992-08-26","montes@utipsum.net","Lester Castro","Male","nec","OVP85YKR2SC","+38 (035) 978-67-23","2013-05-31",2),("443-1469 Duis Avenue","2007-10-06","nibh@Namconsequat.co.uk","Murphy Barber","Male","mauris.","WVU52LTN2HD","+38 (032) 041-40-44","2010-08-16",3);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("6419 Nec Avenue","2000-04-09","vel.est@auctor.co.uk","Kirestin Stokes","Female","Curabitur","UAD26RCN2GV","+38 (020) 061-88-82","2010-04-16",1),("P.O. Box 118, 8955 Nec Avenue","1993-06-18","tellus.imperdiet@interdumligula.co.uk","Medge Leonard","Female","non","RIZ46NIZ9RW","+38 (095) 348-65-04","2009-03-07",1),("Ap #547-1964 Nisi Ave","1995-02-28","tellus.sem@neque.com","Giselle Little","Male","vulputate","LIS34CUA1KX","+38 (031) 691-14-59","2014-04-05",3),("P.O. Box 904, 7670 Velit. St.","1996-05-11","interdum@inceptos.ca","Shellie Cardenas","Female","pellentesq","BGA27CRI3TX","+38 (076) 308-44-66","2012-07-06",2),("721-7602 Faucibus. Av.","2000-12-23","molestie.pharetra.nibh@eu.co.uk","August Kent","Female","scelerisqueron","YUR72RNQ2VB","+38 (067) 902-21-84","2014-03-01",2),("Ap #454-814 Sem St.","2009-04-12","nulla@dolorsit.com","Tanya Bonner","Male","parturient","WNY20LGU7XY","+38 (005) 531-91-08","2009-12-19",3),("3233 Aenean Street","1988-11-16","sed@dolordapibusgravida.org","Hyatt Hodge","Male","urna,","XLA96KGA9HQ","+38 (030) 632-81-14","2009-10-09",1),("5017 Donec St.","2002-07-06","metus@mienimcondimentum.co.uk","Dacey Mcintyre","Male","actom","QOI00VSW8RY","+38 (016) 111-54-35","2010-05-03",1),("P.O. Box 516, 5723 Laoreet St.","1999-06-29","pretium.aliquet.metus@ac.co.uk","Harper Webb","Male","Pellentesque","YCL22NGU7OR","+38 (069) 891-55-54","2014-07-11",2),("Ap #470-6844 Mus. Rd.","1981-11-07","a.magna.Lorem@pharetra.org","Perry Robinson","Male","sedil","OZS81YET9KN","+38 (081) 344-56-06","2014-07-20",1);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("699-9363 Risus. Avenue","1993-11-03","purus@quisdiam.edu","Hoyt Cooley","Female","metus","XKS77KFE7KP","+38 (002) 754-55-13","2009-03-19",3),("7818 Non, St.","1994-05-26","Nullam@enimSuspendissealiquet.co.uk","Sonia Hansen","Male","quis","MCX65KFT0WD","+38 (000) 693-56-30","2013-09-06",2),("140-6828 Ante Avenue","1991-02-23","convallis.est@magnisdisparturient.edu","Justin Conley","Male","arcu.","ARU44WAS4KV","+38 (085) 408-02-31","2012-11-05",3),("Ap #674-6038 Curabitur Rd.","2009-09-05","nulla.Donec@Phasellus.net","Garth Barker","Female","Nullas","NSP74RXS7WX","+38 (066) 655-71-69","2014-04-10",1),("Ap #208-847 Vitae Rd.","1991-09-22","mauris.sagittis@leoVivamus.ca","Dai Rios","Male","dui","VKK14QSE5HX","+38 (029) 353-27-50","2009-05-23",2),("662-5525 Eget, St.","1998-05-04","erat@massa.org","Hadley Aguirre","Female","Suspendisse","QBO77EBZ9GC","+38 (053) 546-14-76","2014-07-16",1),("Ap #503-5940 Lectus, Rd.","2008-02-04","sem@Duissitamet.co.uk","Porter Blackwell","Male","vitae","TAM00FWT9SO","+38 (094) 394-79-39","2011-09-08",3),("P.O. Box 529, 5724 Curabitur Avenue","1987-02-15","non.justo.Proin@acrisus.ca","Elmo Gregory","Female","sollicitudin","GVU13KUD1VW","+38 (089) 336-91-05","2014-02-02",2),("Ap #828-2396 Eu Street","2011-05-24","eu.lacus@Nullainterdum.org","Karleigh Gould","Female","et","JIU72OUC2BT","+38 (066) 186-33-10","2008-11-04",3),("7959 Ipsum Road","2003-08-13","velit@Nullam.edu","Nathan Pitts","Male","Duis","JMI98LRF0UI","+38 (009) 394-97-29","2014-06-29",1);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("Ap #376-1106 Vitae Rd.","1981-10-01","volutpat.ornare.facilisis@lectusjusto.edu","Madaline Harrell","Male","lobortis","OMW63DJJ9ZO","+38 (013) 843-21-72","2013-04-15",3),("P.O. Box 649, 7892 Aliquam Street","1983-05-26","euismod.et.commodo@aliquet.edu","Mari Mendoza","Male","Etiam","XYU91DJF5JX","+38 (043) 592-73-18","2008-12-15",1),("Ap #812-7452 Erat. Road","2006-03-10","Cras.vehicula@SuspendisseduiFusce.org","Cherokee Hebert","Female","sapien.","TJY47VOU2UX","+38 (087) 453-64-98","2012-07-16",2),("Ap #137-2454 Euismod Av.","1992-12-27","non@intempuseu.ca","Brock Sosa","Male","necy","NAI83JJX4JN","+38 (070) 680-96-93","2009-02-26",3),("P.O. Box 774, 122 Sapien. St.","1985-03-23","enim.nec@vulputatemaurissagittis.net","Berk Fields","Female","odio.","MOD93OHA0TK","+38 (014) 320-33-34","2012-08-31",1),("Ap #160-8335 Ut Road","1995-03-03","erat.semper.rutrum@pellentesqueafacilisis.edu","Orli Coleman","Female","molese","ADI28DYR4DE","+38 (078) 269-16-56","2010-02-08",3),("332-3278 Tincidunt Av.","2010-05-26","erat.neque@amagna.com","Jesse Wiggins","Female","velity","IER96IFD7JN","+38 (094) 826-72-17","2010-05-22",1),("3447 Vehicula Street","2004-04-16","luctus.et.ultrices@elit.com","Rafael Albert","Male","sceleri","LOV14XUT9CL","+38 (082) 691-86-82","2010-12-16",2),("8216 Suspendisse Ave","1993-09-07","sit.amet@idlibero.ca","Selma Cooley","Male","sit","ZQA73OAX0RC","+38 (050) 467-41-82","2014-03-17",2),("952-7905 Amet Ave","1999-05-01","ipsum@pharetra.com","Juliet Cunningham","Male","vitaen","VUC35IFE9OI","+38 (080) 913-40-22","2014-02-02",3);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("P.O. Box 960, 1737 Pede, Road","2004-11-20","dui.Fusce.aliquam@semconsequat.co.uk","Fitzgerald Cain","Female","tempor","COI98VSD9OJ","+38 (074) 676-80-20","2011-05-14",1),("4728 Ligula Av.","1985-09-11","vitae.odio.sagittis@hymenaeos.edu","September Hernandez","Male","Vivamus","HVR87RGJ7RV","+38 (000) 439-17-10","2009-07-06",2),("4598 Lobortis St.","1994-09-08","feugiat@Nuncacsem.co.uk","Yael Yang","Female","facilisis","SXF04OSW0SJ","+38 (064) 005-09-40","2014-05-15",3),("107-5109 Neque Avenue","2004-07-16","nonummy.ultricies.ornare@duiquis.co.uk","Britanni Hudson","Male","Aliquamo","VEO04GDD3IC","+38 (068) 606-76-58","2009-12-03",1),("P.O. Box 597, 7504 Nunc St.","1986-06-22","facilisi@odioauctor.com","Lysandra Lang","Male","sagittis","AVC41OXA9MD","+38 (037) 883-07-84","2012-04-17",3),("368-5938 Mauris Street","2006-10-16","fermentum.arcu@duiinsodales.net","Quon Bullock","Male","urna","RRV78YAU6HV","+38 (007) 936-77-01","2011-08-24",2),("4396 Pellentesque. Road","2003-04-10","Quisque.libero.lacus@elementumpurus.co.uk","Reed Williams","Male","ipsum","AMD81IKK3FG","+38 (006) 822-33-56","2012-10-20",2),("974-8074 Nullam Street","1997-11-09","massa.non@semper.ca","Kenyon Logan","Male","egestas.","DJI71XIF5OF","+38 (069) 142-53-70","2011-04-22",2),("348-291 Ac, Ave","2012-08-31","penatibus.et@ornarefacilisis.edu","Brynn Herman","Female","nullary","YRS77YAF4CY","+38 (025) 971-80-18","2011-01-12",1),("P.O. Box 867, 4828 Arcu. St.","2002-08-24","aliquam@ipsumprimis.co.uk","Gil Huber","Male","scelerisque","PGW84YFI7AQ","+38 (092) 248-57-77","2012-05-27",1);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("567-5878 Pretium Road","1993-08-29","nascetur@ametluctus.net","Lewis Dillon","Male","commodo","QVK30YXN7WY","+38 (086) 984-69-10","2014-09-05",3),("Ap #558-3060 Leo. St.","1986-12-19","vehicula@litoratorquentper.ca","Stuart Pollard","Male","nunc","WKU28WJM5HV","+38 (079) 674-52-16","2014-08-29",1),("P.O. Box 823, 9982 Mi Av.","1990-06-30","consequat.dolor.vitae@Proin.edu","Whoopi Pennington","Female","tempus,","NLC43CCT7IO","+38 (050) 718-45-66","2011-12-18",1),("Ap #472-1039 Arcu. Rd.","2002-11-17","auctor@Maecenasornare.com","Elizabeth Short","Female","Sedman","DBF31PBA0MD","+38 (046) 095-81-66","2011-10-12",2),("5062 Neque Street","1992-01-04","Cras@Maurisvestibulumneque.ca","Cadman Barrett","Female","a,","FNG39QAJ3OW","+38 (079) 116-92-35","2013-10-07",2),("Ap #185-8745 Non Av.","2000-07-28","scelerisque@necleoMorbi.edu","Lucy Aguirre","Female","blandit","YII97ZZN0LI","+38 (093) 692-24-90","2014-07-02",1),("P.O. Box 722, 1564 At Ave","1996-04-15","risus.Duis.a@Inlorem.com","Aubrey Witt","Male","Phasellus","UBQ56OVT7GY","+38 (094) 187-86-34","2011-09-09",2),("4466 Sem Street","2008-09-28","metus.facilisis@sitamet.org","Mikayla Ballard","Female","ut","VYU34MKO7AJ","+38 (006) 709-27-99","2013-05-22",3),("773-6377 Metus Rd.","1990-06-26","tincidunt.adipiscing.Mauris@varius.com","Otto Page","Male","ac","UYQ92OZW2UL","+38 (094) 708-71-58","2012-05-23",2),("2420 Tellus Ave","2011-07-06","nec@mollis.co.uk","Burke Holmes","Male","Aliquam","VRH08HJP2EL","+38 (055) 093-24-16","2010-08-11",2);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("502-7133 Neque. Ave","2000-06-29","eget@sagittis.edu","Sasha Hutchinson","Male","consequat","GWV89BQU8DH","+38 (067) 413-83-28","2008-11-25",2),("9065 Ac Road","2000-10-07","dictum.mi.ac@idantedictum.ca","Jacqueline Larson","Male","Quisquen","QYB39RQL1TY","+38 (001) 959-92-62","2010-03-09",3),("329-9281 Turpis Av.","2006-04-09","lectus.quis.massa@utodio.edu","Chantale Maldonado","Male","rutrum","BLX66UJR2ET","+38 (011) 565-05-71","2010-04-08",3),("480-3099 Sit St.","1990-07-02","risus.varius@velitQuisque.co.uk","Nigel Ortega","Female","vehicula","WRD88UWI3NQ","+38 (040) 850-58-43","2013-08-25",1),("Ap #676-8549 Dui Rd.","1991-03-23","tortor.at.risus@aliquetProin.com","Aidan Sears","Male","velit","BUR85HJW4WC","+38 (030) 564-90-18","2010-12-04",1),("Ap #171-678 Duis Rd.","2002-07-03","adipiscing.Mauris.molestie@Donecdignissimmagna.org","Sonya Webb","Male","luctusion","KAN68HHS8QB","+38 (057) 953-62-54","2009-12-30",3),("6454 Feugiat Av.","2005-03-15","vel.pede.blandit@nasceturridiculusmus.co.uk","Leandra Mcfadden","Female","convallis","PZH94OOA3HS","+38 (008) 501-24-80","2011-06-05",1),("Ap #640-3835 Et Street","1984-06-12","lorem@risusDuisa.com","Julie Strong","Male","Cras","PMG43DRL6PZ","+38 (032) 911-38-01","2010-05-10",2),("7710 Convallis, Av.","2011-03-03","non.luctus.sit@Nam.ca","Burton Hubbard","Male","uty","TUO45GEB5ID","+38 (052) 246-45-31","2012-01-30",3),("P.O. Box 472, 2955 Non Ave","2001-02-01","eu.euismod@ipsum.org","Ivan Golden","Female","vel","EZR92ARY3EU","+38 (018) 577-20-66","2013-11-13",3);
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES ("Ap #615-959 Malesuada Rd.","2006-06-13","eu.tempor@nequeNullam.ca","Aladdin Davis","Female","sedwoman","WRT03UWY8RQ","+38 (018) 562-40-18","2010-05-04",1),("P.O. Box 267, 173 Neque Ave","2007-01-20","erat@nonlobortisquis.net","Dominic Fuentes","Male","vitael","BDL39XYF2GJ","+38 (082) 723-25-54","2011-04-21",3),("Ap #610-3020 Nulla Rd.","2000-03-23","odio.Nam@DonecegestasAliquam.edu","Grant Wyatt","Male","lobortisy","RTJ33GTI4JP","+38 (091) 776-58-99","2010-09-05",3),("Ap #674-3045 Mi. Street","2005-01-10","lobortis.nisi.nibh@semelitpharetra.edu","Bethany Combs","Female","tellus","ZFU78CZB7JK","+38 (052) 760-12-41","2009-08-24",1),("1782 Fringilla Rd.","1984-08-14","eu.odio.tristique@at.com","Veronica Wiley","Male","nunc.","ALG45EKX8US","+38 (086) 315-67-94","2009-11-14",3),("P.O. Box 549, 8206 Risus. St.","1985-08-13","pretium.et.rutrum@vitae.co.uk","Idola Byers","Female","posuere,","UHO30HOY9FS","+38 (054) 049-78-61","2011-02-26",2),("715-9835 Nulla. St.","1987-09-07","nec@tristique.com","Wing Marshall","Male","necyp","ZIW82VJV2EV","+38 (029) 786-25-96","2014-04-06",3),("P.O. Box 165, 9391 Tristique Road","2002-12-12","Vivamus.euismod@purus.com","Craig Collins","Female","cursus","GPE38ZAZ8LJ","+38 (009) 134-62-85","2013-05-23",2),("P.O. Box 610, 6674 Tincidunt Ave","2004-12-07","molestie.Sed@fringilla.com","Byron Harrison","Female","dictumo","XRN78YML0JG","+38 (092) 314-64-54","2011-05-15",2),("Ap #757-6419 Neque Ave","1990-03-13","id@justoProin.net","Ulysses Frazier","Female","lectus","WPC36MZR9LZ","+38 (049) 338-37-38","2012-06-06",1);
UPDATE users SET status='APPROVED' WHERE status='1';
UPDATE users SET status='REJECTED' WHERE status='2';
UPDATE users SET status='PENDING' WHERE status='3';
UPDATE users SET gender='MALE' WHERE gender='Male';
UPDATE users SET gender='FEMALE' WHERE gender='Female';

SET @rank = 0;
UPDATE users AS u 
	LEFT JOIN 
		(SELECT @rank:=@rank+1 as rowcount, c.id as crid 
			FROM country_region as c
				JOIN (SELECT CEIL(RAND() * (SELECT MAX(id) FROM country_region)) as id) 
					AS r 
			WHERE c.id >= r.id
			ORDER BY c.id asc 
			LIMIT 150) AS crids
	ON u.id = crids.rowcount
SET u.country_region_id = crids.crid;

-- bind tables users and roles to get ManyToOne table users_roles
-- user with id #1 is Manager
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (1,1,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (85,3,3),(76,3,1),(72,2,3),(67,4,2),(52,4,2),(73,5,3),(72,3,3),(76,3,3),(56,5,3),(27,5,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (64,3,2),(37,5,1),(56,5,1),(99,2,1),(42,4,1),(66,2,1),(90,4,1),(71,3,3),(77,4,1),(10,2,2);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (74,2,2),(16,4,1),(95,4,2),(67,2,1),(20,5,1),(49,3,1),(72,2,1),(39,4,2),(70,5,3),(35,2,3);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (82,5,2),(68,2,3),(62,2,2),(100,5,3),(19,3,2),(35,5,2),(88,5,3),(62,3,3),(56,5,1),(75,3,2);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (53,4,2),(5,3,1),(17,4,1),(59,3,1),(7,4,2),(29,2,3),(26,3,3),(44,4,3),(33,4,1),(37,2,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (48,3,1),(67,5,3),(8,4,2),(73,5,2),(34,2,1),(42,3,3),(53,5,3),(95,3,3),(21,4,2),(43,4,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (72,4,2),(31,2,1),(87,5,3),(27,3,1),(38,2,1),(89,5,2),(86,5,1),(28,2,3),(80,2,2),(36,4,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (94,2,2),(49,4,3),(67,5,3),(75,2,1),(22,2,1),(19,3,1),(77,2,3),(48,2,3),(61,4,3),(88,4,3);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (94,5,2),(53,3,2),(20,2,3),(88,5,1),(4,2,1),(82,3,2),(3,5,1),(69,3,1),(56,2,2),(14,4,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (5,2,3),(89,5,1),(24,4,2),(59,4,3),(4,3,2),(76,4,1),(51,4,1),(73,4,3),(8,2,1),(6,5,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (2,3,1),(9,3,1),(11,3,1),(12,3,1),(13,3,1),(15,3,1),(18,3,1),(23,3,1),(25,3,1),(30,3,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (32,3,1),(40,3,1),(41,3,1),(45,3,1),(46,3,1),(47,3,1),(50,3,1),(57,3,1),(58,3,1),(60,3,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (63,3,1),(65,3,1),(78,3,1),(79,3,1),(81,3,1),(83,3,1),(84,3,1),(91,3,1),(92,3,1),(93,3,1);
INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES (96,3,1),(97,3,1),(98,3,1);
UPDATE users_roles SET status='APPROVED' WHERE status='1';
UPDATE users_roles SET status='REJECTED' WHERE status='2';
UPDATE users_roles SET status='PENDING' WHERE status='3';
UPDATE users_roles SET role='ROLE_MANAGER' WHERE role='1';
UPDATE users_roles SET role='ROLE_DOCTOR' WHERE role='2';
UPDATE users_roles SET role='ROLE_PATIENT' WHERE role='3';
UPDATE users_roles SET role='ROLE_PHARMACIST' WHERE role='4';
UPDATE users_roles SET role='ROLE_LABMANAGER' WHERE role='5';

-- create cards for users
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2010-12-15",0,192,56,1),("2009-09-30",0,163,147,2),("2014-09-29",0,172,133,3),("2011-01-19",0,182,57,4),("2009-06-22",0,188,76,5),("2014-10-10",0,179,123,6),("2011-04-13",0,174,144,7),("2013-07-30",0,134,83,8),("2011-06-14",0,170,107,9),("2011-03-13",0,141,123,10);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2010-04-05",0,190,74,11),("2013-08-27",0,147,109,12),("2014-02-13",0,200,135,13),("2010-08-15",1,180,97,14),("2013-12-07",0,116,103,15),("2011-01-19",0,195,87,16),("2014-10-06",1,110,54,17),("2010-11-20",1,196,77,18),("2012-07-19",1,153,82,19),("2011-12-06",0,196,115,20);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2013-06-15",1,139,130,21),("2014-09-25",1,130,70,22),("2010-07-04",1,124,74,23),("2012-11-13",0,184,64,24),("2014-01-12",0,120,84,25),("2008-11-26",1,147,100,26),("2011-08-16",1,137,74,27),("2011-12-17",1,129,81,28),("2012-04-21",1,114,127,29),("2012-12-28",0,164,102,30);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2014-09-22",1,143,52,31),("2014-09-08",1,176,65,32),("2012-09-09",0,186,142,33),("2012-02-13",0,126,113,34),("2009-03-25",0,187,94,35),("2009-02-03",1,166,138,36),("2009-03-06",0,196,148,37),("2010-07-07",0,123,101,38),("2013-08-31",0,154,51,39),("2012-01-05",0,162,80,40);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2010-05-26",0,149,136,41),("2013-11-18",1,131,88,42),("2008-11-17",1,138,132,43),("2009-11-04",0,195,68,44),("2010-11-30",1,173,143,45),("2013-05-21",0,141,105,46),("2014-10-11",0,187,120,47),("2011-04-17",1,127,144,48),("2010-11-15",1,154,76,49),("2014-04-19",0,192,66,50);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2012-03-19",1,119,115,51),("2012-09-20",0,184,123,52),("2013-06-27",1,178,141,53),("2010-05-11",1,170,101,54),("2010-11-15",1,196,150,55),("2009-03-16",1,165,62,56),("2012-07-23",0,172,84,57),("2012-10-31",0,174,80,58),("2009-03-25",0,176,117,59),("2010-11-26",0,177,128,60);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2011-10-02",0,193,148,61),("2012-02-21",0,144,77,62),("2013-07-12",0,200,71,63),("2013-03-02",1,170,73,64),("2010-09-03",1,144,99,65),("2009-03-27",0,128,108,66),("2010-12-26",0,176,144,67),("2014-01-03",0,178,50,68),("2012-01-19",0,119,98,69),("2011-01-19",0,178,105,70);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2010-08-16",0,117,113,71),("2011-01-21",1,124,123,72),("2011-02-17",1,194,91,73),("2010-08-31",1,196,128,74),("2010-02-25",1,154,56,75),("2014-06-08",0,195,58,76),("2012-11-01",0,139,118,77),("2009-07-21",0,173,52,78),("2013-12-06",0,185,113,79),("2009-07-22",0,135,123,80);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2014-01-12",0,144,61,81),("2012-08-30",1,130,54,82),("2014-05-27",1,139,123,83),("2014-02-26",0,191,108,84),("2012-04-25",0,138,77,85),("2014-10-02",1,171,140,86),("2014-03-30",0,193,135,87),("2010-02-03",1,177,88,88),("2010-06-26",0,178,108,89),("2012-03-09",0,153,87,90);
INSERT INTO `cards` (`create_date`,`is_active`,`height`,`weight`,`id_patient`) VALUES ("2014-07-05",0,165,145,91),("2011-06-12",1,195,68,92),("2013-09-13",0,152,63,93),("2014-08-06",1,130,59,94),("2009-04-24",1,141,143,95),("2012-05-13",1,175,56,96),("2011-04-21",0,145,78,97),("2013-08-01",1,194,105,98),("2009-10-02",0,156,64,99),("2011-01-10",1,136,145,100);

-- insert symptoms into symptoms table
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Abdominal Pain",6,"at pretium aliquet, metus urna convallis erat, eget"),("Absence of Speech (Loss of Speech)",4,"nec, diam. Duis mi enim,"),("Acid Reflux (GERD) Symptoms",2,"vel pede blandit congue. In scelerisque scelerisque dui."),("Acute Sinusitis Symptoms",7,"varius ultrices, mauris"),("ADHD (Inattention)",5,"justo"),("ADHD Symptoms",6,"Integer sem"),("Alcohol Withdrawal Symptoms",9,"Fusce diam nunc, ullamcorper eu, euismod ac, fermentum"),("Allergy",7,"congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum"),("Altered Mental Status",1,"penatibus et magnis dis"),("Alzheimer's Disease Symptoms",5,"interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Anal Itching",9,"aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in"),("Anemia",6,"magnis dis parturient montes, nascetur ridiculus mus."),("Angular Cheilitis Symptoms",7,"a odio semper cursus. Integer mollis. Integer tincidunt aliquam"),("Ankle Pain",1,"malesuada augue ut lacus. Nulla"),("Anxiety",2,"a felis ullamcorper viverra."),("Aphasia (Loss of Speech)",2,"amet nulla. Donec non"),("Appendicitis Symptoms",8,"Aliquam ornare, libero at auctor ullamcorper,"),("Arm Pain",2,"lectus quis massa. Mauris vestibulum, neque sed"),("Asthma Symptoms",3,"rhoncus id, mollis nec, cursus a,"),("Attention Deficit (Inattention)",3,"auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Autism Symptoms",9,"lectus,"),("Back Pain",4,"massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at"),("Bad Breath",2,"ut nisi a odio semper cursus."),("Bad Taste in the Mouth",2,"Class aptent taciti"),("Beau's Lines",5,"sapien. Nunc pulvinar"),("Behavior Disorder (Unusual Behavior)",6,"pede, malesuada vel, venenatis vel, faucibus id, libero. Donec"),("Benign Positional Vertigo Symptoms",5,"mollis. Duis sit"),("Bipolar Disorder Symptoms",4,"amet, consectetuer adipiscing elit."),("Bladder Infection Symptoms",4,"mauris erat eget ipsum. Suspendisse sagittis."),("Bladder Spasms",5,"ligula.");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Bleeding Gums",7,"enim. Nunc ut"),("Blisters",1,"conubia nostra, per inceptos hymenaeos. Mauris"),("Blood Clot Symptoms",9,"congue turpis. In condimentum."),("Blood in Semen",1,"Donec feugiat metus sit amet ante."),("Blood In Urine",1,"Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu"),("Bloody Nose",7,"varius orci,"),("Bloody Sputum",2,"tellus"),("Blunted Affect (Flat Affect)",4,"Curabitur egestas nunc sed libero. Proin"),("Blurred Vision",5,"tincidunt"),("Bowel Incontinence (Fecal Incontinence)",7,"eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros.");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Brain Aneurysm Symptoms",6,"nibh sit"),("Brain Tumor Symptoms",6,"quam. Pellentesque habitant morbi tristique senectus et"),("Breast Cancer Symptoms",7,"felis eget varius ultrices, mauris ipsum porta elit, a"),("Breast Discharge",5,"Integer vitae nibh. Donec"),("Breast Lumps",4,"fermentum risus, at fringilla purus mauris a nunc. In at"),("Breast Pain",9,"augue id"),("Brittle Nails",4,"neque"),("Bronchitis Symptoms",1,"augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum."),("Bumps on Skin",2,"elit"),("Burning Urination",2,"amet,");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Buttock Pain",4,"hendrerit consectetuer, cursus"),("Cancer, Throat (Throat Cancer Symptoms)",1,"elit. Nulla facilisi. Sed neque. Sed"),("Carbon Monoxide Poisoning Symptoms",8,"ullamcorper, velit in aliquet lobortis,"),("Cat Scratch Disease Symptoms",3,"hendrerit consectetuer, cursus et, magna."),("Catatonia (Catatonic Behavior)",6,"tellus lorem eu metus."),("Cellulitis Symptoms",7,"Morbi neque tellus,"),("Cervical Cancer Symptoms",4,"arcu. Vestibulum ante ipsum primis in"),("Chest Pain",9,"pede. Cras vulputate velit eu"),("Chills",3,"euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur"),("Chlamydia Symptoms",4,"vitae erat vel pede blandit congue. In");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Chronic Fatigue Syndrome Symptoms",1,"nisl sem, consequat"),("Chronic Pain",2,"lacinia"),("Chronic Sore Throat Symptoms",5,"sed pede. Cum sociis natoque penatibus et magnis dis"),("Cloudy Urine",5,"a odio semper"),("Coccydynia",8,"ultricies"),("Cold",4,"Sed et libero."),("Cold Feet",8,"vitae, posuere at, velit. Cras lorem"),("Cold Fingers",3,"mollis. Duis sit amet diam"),("Cold Hands",2,"Mauris molestie pharetra nibh. Aliquam ornare, libero"),("Colitis Symptoms",7,"mi tempor lorem, eget mollis lectus pede et risus. Quisque");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Colon Cancer Symptoms",4,"venenatis lacus. Etiam bibendum fermentum metus. Aenean sed"),("Confusion",2,"nunc, ullamcorper eu, euismod ac, fermentum vel, mauris."),("Constipation",3,"egestas nunc sed libero. Proin sed turpis nec"),("Contact Dermatitis Symptoms",1,"erat neque"),("COPD Symptoms",7,"elit, pharetra ut, pharetra sed, hendrerit a, arcu."),("Cough",7,"semper auctor. Mauris"),("Cyanosis/Turning Blue",5,"interdum. Curabitur dictum. Phasellus in felis. Nulla tempor"),("Cystic Fibrosis Symptoms",5,"Cras convallis"),("Dark Circles Under the Eyes",6,"velit in aliquet lobortis,"),("Dark Urine",2,"Cras sed leo. Cras vehicula aliquet libero. Integer in magna.");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Decreased Appetite",5,"Donec dignissim magna a tortor. Nunc commodo auctor"),("Dehydration Symptoms",5,"mi lorem, vehicula et, rutrum eu, ultrices sit"),("Delusions",3,"montes, nascetur ridiculus"),("Dengue Symptoms",6,"et magnis dis parturient"),("Depigmentation of Skin",9,"velit dui, semper"),("Depression",3,"lacus. Nulla tincidunt, neque vitae"),("Detrusor Contraction (Bladder Spasms)",7,"nulla. Cras eu tellus eu"),("Diabetes Symptoms",4,"sapien. Cras"),("Diarrhea",8,"malesuada ut,"),("Difficulty Concentrating",7,"ut dolor");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Difficulty Urinating",2,"ligula eu enim. Etiam"),("Difficulty With Speech",7,"pede, malesuada vel, venenatis vel,"),("Dilated Pupils (Mydriasis)",7,"tempor augue"),("Diogenes Syndrome (Self-Neglect)",7,"vitae semper egestas, urna justo faucibus lectus, a sollicitudin"),("Discharge From Penis (Penile Discharge)",7,"tellus. Suspendisse sed dolor. Fusce mi"),("Distended Stomach (Abdominal Distention)",1,"justo"),("Diverticulitis Symptoms",8,"Nam tempor diam dictum sapien. Aenean massa. Integer vitae"),("Dizziness",3,"ante."),("Double Vision",5,"placerat velit. Quisque varius."),("Drainage of Pus",7,"lorem, luctus ut, pellentesque eget, dictum placerat,");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Drooling",6,"vulputate, posuere vulputate, lacus. Cras interdum. Nunc"),("Dry Eye",5,"tincidunt"),("Dry Mouth",9,"Aliquam nisl. Nulla eu neque pellentesque massa lobortis"),("Dry Skin",9,"diam vel arcu."),("Dyspepsia",8,"quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam"),("Dysphagia",4,"ornare sagittis felis. Donec tempor,"),("Earache",1,"scelerisque"),("Easy Bruising",2,"ante. Maecenas mi"),("Ebola Virus Disease Symptoms",4,"dui. Cum sociis"),("Elbow Pain",6,"sem eget massa. Suspendisse");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Emotional Disorder (Inability to Regulate Emotions)",5,"rutrum lorem ac risus. Morbi metus. Vivamus"),("Endocarditis Symptoms",4,"natoque penatibus"),("Enlarged Heart",6,"orci luctus et ultrices posuere cubilia Curae;"),("Enterovirus D68",8,"metus urna convallis erat, eget tincidunt dui augue eu tellus."),("Euphoria",1,"sodales"),("EV-D68 (Non-Polio Enterovirus Symptoms)",8,"nec, imperdiet nec,"),("Excessive Sweating",3,"erat. Vivamus nisi. Mauris"),("Eye Discharge",5,"lobortis"),("Eye Pain",6,"tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante"),("Eye Twitch",8,"Etiam imperdiet dictum magna. Ut");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Fainting",5,"massa. Mauris vestibulum, neque"),("Fatigue and Tiredness",3,"Quisque porttitor eros nec tellus."),("Fecal Incontinence",9,"ultrices a, auctor non, feugiat nec, diam. Duis mi enim,"),("Fever",6,"semper"),("Fibromyalgia Symptoms",4,"malesuada vel, venenatis"),("Finger Pain",7,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam"),("Flaky Scalp",4,"enim, sit amet ornare lectus justo eu arcu. Morbi"),("Flat Affect",4,"Proin non massa non ante bibendum ullamcorper."),("Flu",9,"nulla at sem molestie sodales. Mauris"),("Fluctuating Mood (Mood Swings)",2,"dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Foot Pain",6,"diam. Proin dolor. Nulla semper tellus"),("Frequent Urination",1,"hymenaeos. Mauris ut quam vel sapien imperdiet"),("Gallbladder Attack Symptoms",7,"tempor, est ac mattis semper, dui lectus rutrum"),("Gas",5,"lectus justo"),("Gastritis Symptoms",5,"massa"),("Generalized Anxiety Disorder Symptoms",2,"Sed auctor odio"),("Giardiasis Symptoms",4,"ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit"),("Gout Symptoms",8,"libero. Integer in magna. Phasellus"),("Hair Loss",2,"Duis ac arcu. Nunc mauris. Morbi non"),("Hairy Tongue",2,"ornare placerat, orci lacus vestibulum lorem,");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Hallucinations",1,"felis purus ac tellus. Suspendisse sed dolor."),("Hand Pain",4,"elit elit"),("Hand, Foot, and Mouth Disease Symptoms",8,"semper, dui lectus"),("Headache",2,"ut, pharetra sed, hendrerit a, arcu. Sed"),("Hearing Loss",5,"dictum eleifend, nunc"),("Heart Attack in Women Symptoms",1,"massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit"),("Heart Disease Symptoms",6,"elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et"),("Heartburn",1,"Nullam nisl. Maecenas malesuada"),("Heel Pain",1,"lacus. Cras interdum. Nunc sollicitudin commodo"),("Hepatitis C (HCV) Symptoms",5,"pellentesque. Sed dictum.");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Herpes Symptoms",9,"penatibus et"),("Hiatal Hernia Symptoms",1,"Duis mi enim, condimentum eget, volutpat ornare, facilisis"),("High Blood Pressure Symptoms",3,"tellus non"),("Hip Pain",1,"eu dolor egestas rhoncus."),("HIV Infection Symptoms",5,"arcu. Sed et libero. Proin"),("Hoarseness",2,"iaculis enim, sit amet"),("Hot Flashes",9,"purus. Nullam scelerisque neque"),("Hyperactivity",6,"pellentesque, tellus sem mollis dui, in sodales"),("Hyperthermia Symptoms",5,"feugiat"),("Hyperthyroidism Symptoms",5,"et,");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Hyperventilation",5,"ante dictum"),("Hypocalcemia Symptoms",7,"et, lacinia vitae,"),("Hypoglycemia Symptoms",8,"sodales nisi magna sed"),("Hypopituitarism Symptoms",8,"posuere cubilia Curae; Phasellus"),("Hypothermia Symptoms",5,"ac, fermentum vel, mauris. Integer"),("Hypothyroidism Symptoms",7,"tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies"),("Impotence",7,"Duis cursus, diam at pretium aliquet, metus"),("Inability to Regulate Emotions",4,"aptent taciti sociosqu ad litora torquent per conubia"),("Inattention",6,"nunc, ullamcorper"),("Incontinence, Urine",3,"iaculis, lacus pede sagittis");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Increased Appetite",2,"tellus, imperdiet non, vestibulum nec,"),("Infectious Mononucleosis (Mono) Symptoms",3,"dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus."),("Infertility",7,"dolor. Fusce feugiat. Lorem ipsum dolor"),("Insomnia",7,"rutrum eu,"),("Interstitial Cystitis Symptoms",1,"cursus et, magna. Praesent interdum"),("Irritable Bowel Syndrome (IBS) Symptoms",8,"odio a purus. Duis elementum, dui quis"),("Itch",4,"eu tempor erat neque non quam. Pellentesque habitant morbi tristique"),("Jaundice",3,"vitae aliquam eros turpis non enim. Mauris quis turpis vitae"),("Jaw Pain",9,"ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra"),("Joint Cracking",8,"nonummy ac, feugiat non,");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Joint Pain",5,"amet nulla."),("Joint Stiffness",3,"nunc, ullamcorper eu, euismod ac, fermentum vel,"),("Kawasaki Disease Symptoms",2,"mauris"),("Kidney Cancer Symptoms",7,"tempus non, lacinia at, iaculis quis, pede. Praesent"),("Kidney Infection Symptoms",8,"lacus, varius et, euismod et, commodo at,"),("Kidney Stone Symptoms",9,"arcu ac orci. Ut semper pretium neque. Morbi"),("Knee Pain",2,"in, hendrerit consectetuer, cursus et, magna."),("Koilonychia",7,"non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis"),("Labile Mood (Inability to Regulate Emotions)",1,"leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis"),("Leg Pain",9,"ac metus vitae");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Leg Sores",3,"congue turpis. In condimentum. Donec at arcu. Vestibulum"),("Leg Swelling",4,"mollis non, cursus non,"),("Leukemia Symptoms",7,"Quisque"),("Limping",3,"Sed"),("Liver Cancer Symptoms",5,"eleifend nec,"),("Loss of Appetite",7,"scelerisque dui. Suspendisse ac metus vitae velit"),("Loss of Speech",5,"eget, venenatis a, magna. Lorem ipsum dolor sit"),("Loss of Taste Sensation",2,"id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim"),("Loss of Temperature Sensation",9,"ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna."),("Low Blood Pressure Symptoms",8,"Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Low Libido",9,"tristique aliquet. Phasellus fermentum convallis ligula. Donec"),("Low Urine Output",9,"urna et arcu imperdiet"),("Lump or Mass on Gums",2,"mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare,"),("Lung Cancer Symptoms",4,"ornare, elit elit fermentum risus, at fringilla purus mauris a"),("Lupus Symptoms",5,"nec urna et arcu imperdiet"),("Lyme Disease Symptoms",9,"nulla. In tincidunt congue turpis. In condimentum."),("Mastitis Symptoms",6,"lobortis, nisi"),("Measles (Rubeola) Symptoms",6,"Donec felis orci, adipiscing non, luctus sit amet, faucibus"),("Memory Loss",6,"Nulla eget metus eu"),("Meniere's Disease Symptoms",5,"faucibus. Morbi vehicula. Pellentesque");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Meningitis Symptoms",6,"dolor. Donec fringilla. Donec"),("Menopause Symptoms",2,"Pellentesque habitant morbi tristique"),("Menstrual Cramps",1,"pharetra. Nam ac nulla. In tincidunt"),("Metallic Taste in the Mouth",4,"risus. Donec egestas. Aliquam nec enim. Nunc ut erat."),("Middle Ear Infection Symptoms",1,"in lobortis tellus justo sit amet nulla. Donec"),("Miscarriage Symptoms",3,"laoreet posuere,"),("Missed Menstrual Period",8,"nec ante. Maecenas mi felis, adipiscing"),("Mood Swings",5,"egestas. Duis ac arcu."),("Mouth Sores",8,"diam"),("MRSA Infection Symptoms",1,"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Multiple Sclerosis (MS) Symptoms",4,"nonummy."),("Mumps Symptoms",8,"mauris ipsum porta"),("Muscle Cramps",1,"tempus mauris erat eget ipsum."),("Mutism (Loss of Speech)",8,"non nisi. Aenean eget metus."),("Nail Clubbing",1,"velit. Quisque varius. Nam porttitor scelerisque neque. Nullam"),("Nail Discoloration",8,"Proin non massa non ante bibendum ullamcorper. Duis cursus, diam"),("Nail Pitting",2,"gravida molestie arcu. Sed"),("Nail Separation",5,"gravida. Aliquam tincidunt,"),("Nasal Congestion",4,"vestibulum nec,"),("Nausea",3,"mauris. Suspendisse");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Neck Pain",6,"feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc,"),("Neglecting Oneself (Self-Neglect)",2,"nascetur ridiculus mus. Donec"),("Neonatal Jaundice",5,"iaculis odio. Nam interdum enim non nisi."),("Non-Polio Enterovirus Symptoms",9,"ipsum"),("Numbness Fingers",8,"nec, mollis vitae,"),("Numbness or Tingling Sensation in the Tongue",1,"nec luctus"),("Numbness Toes",2,"consequat, lectus sit"),("Onychorrhexis (Vertical Ridges on the Fingernails)",1,"mauris. Suspendisse aliquet molestie tellus."),("Ovarian Cancer Symptoms",3,"adipiscing fringilla, porttitor vulputate, posuere vulputate,"),("Overactive Bladder (Bladder Spasms)",5,"turpis");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Painful Gums",6,"molestie in, tempus eu,"),("Painful Intercourse",4,"eu enim."),("Pale Skin",7,"Cras sed leo. Cras vehicula aliquet libero."),("Palpitations",3,"dolor dolor, tempus"),("Pancreatic Cancer Symptoms",5,"dictum eu, eleifend nec, malesuada ut, sem."),("Panic Attack Symptoms",9,"Suspendisse tristique neque"),("Paralysis",6,"justo eu arcu."),("Paranoia",3,"arcu imperdiet ullamcorper. Duis"),("Peeling Skin",8,"conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien"),("Penile Discharge",2,"ac, fermentum vel, mauris. Integer");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Penile Itching",2,"eu"),("Peripheral Neuropathy",8,"adipiscing elit. Curabitur sed tortor. Integer aliquam"),("Phlebitis Symptoms",4,"elit pede, malesuada vel, venenatis vel, faucibus id,"),("Photophobia",7,"eget varius ultrices, mauris ipsum porta elit, a feugiat tellus"),("Pink Eye",7,"sit"),("Pleurisy",8,"lorem ipsum sodales purus, in molestie tortor nibh sit amet"),("PMS (Premenstrual Syndrome) Symptoms",4,"aptent taciti sociosqu"),("Pneumonia Symptoms",4,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis"),("Polycystic Kidney Disease (PKD) Symptoms",1,"Quisque porttitor eros nec tellus. Nunc lectus"),("Poor Hygiene",4,"iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Postnasal Drip Symptoms",3,"elit erat vitae risus. Duis a mi fringilla mi lacinia"),("Pregnancy Symptoms",6,"mauris. Integer sem elit, pharetra ut, pharetra"),("Proteinuria (Protein in the Urine)",4,"semper. Nam tempor diam"),("Psoriasis Symptoms",7,"non, egestas a, dui."),("Ptosis",7,"et tristique pellentesque, tellus sem mollis dui, in"),("Rash",5,"nec,"),("Rectal Bleeding",9,"Mauris vestibulum,"),("Rectal Incontinence (Fecal Incontinence)",9,"lectus. Cum"),("Rectal Pain",1,"augue scelerisque mollis. Phasellus libero mauris, aliquam"),("Red Spots on the Skin",9,"viverra. Maecenas iaculis aliquet diam.");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Red Streaks on the Skin",5,"Aliquam erat volutpat. Nulla dignissim. Maecenas"),("Restless Leg Syndrome",1,"cursus et, magna. Praesent interdum"),("Rheumatoid Arthritis (RA) Symptoms",4,"vulputate ullamcorper magna. Sed eu eros."),("Ringing in Ears",1,"at augue"),("Roseola Symptoms",7,"nascetur ridiculus mus."),("Runny Nose",4,"Sed malesuada augue ut lacus. Nulla tincidunt, neque"),("Scarlet Fever Symptoms",7,"Sed molestie. Sed id risus quis diam luctus"),("Schizophrenia Symptoms",6,"ipsum."),("Seizures",4,"convallis erat, eget tincidunt dui augue eu tellus."),("Self-Neglect",1,"litora torquent per conubia nostra, per inceptos hymenaeos.");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Shaking Hands (Hand Tremors)",9,"auctor vitae, aliquet nec, imperdiet nec, leo. Morbi"),("Shingles Symptoms",4,"turpis. Nulla aliquet. Proin velit."),("Shortness of Breath",3,"est mauris, rhoncus id,"),("Shoulder Pain",1,"sodales at, velit. Pellentesque"),("Sinus Infection (Sinusitis) Symptoms",5,"ac risus. Morbi metus. Vivamus euismod urna. Nullam"),("Small Intestine Cancer Symptoms",1,"amet, consectetuer adipiscing elit. Etiam laoreet,"),("Snoring",2,"Vestibulum accumsan neque et"),("Sore Throat",3,"quam a"),("Sore Tongue",4,"ut erat. Sed nunc est, mollis non, cursus non, egestas"),("Stiff Neck",1,"ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Stomach Cramps",2,"molestie sodales. Mauris blandit enim consequat purus. Maecenas libero"),("Stomach Ulcer (Peptic Ulcer) Symptoms",6,"massa. Quisque"),("Stool Color & Texture Changes",5,"sem egestas blandit. Nam nulla"),("Strange Behavior (Unusual Behavior)",4,"nibh. Quisque nonummy ipsum non arcu. Vivamus"),("Strep Throat Symptoms",7,"Etiam imperdiet dictum magna. Ut"),("Stroke Symptoms",4,"at risus. Nunc ac"),("Suicide",5,"arcu"),("Swollen Ankles and/or Swollen Feet",2,"gravida sagittis. Duis gravida."),("Swollen Eyes",4,"semper pretium neque. Morbi quis urna. Nunc quis arcu"),("Swollen Joints",9,"eu, ultrices sit amet, risus.");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Swollen Lip",9,"tincidunt vehicula risus. Nulla eget metus"),("Swollen Lymph Nodes",2,"euismod enim. Etiam gravida molestie arcu. Sed eu"),("Swollen Testicles",8,"pede ac urna. Ut tincidunt vehicula risus. Nulla eget"),("Swollen Tongue",7,"est"),("Swollen Tonsils",3,"elit. Nulla facilisi. Sed neque. Sed eget lacus."),("Tachycardia",9,"eget,"),("Testicular Pain",7,"Nulla facilisi. Sed neque."),("Thirst",2,"sit amet ultricies sem magna nec quam."),("Throat Cancer Symptoms",7,"sem eget massa. Suspendisse"),("Toe Pain",5,"at, nisi. Cum sociis natoque penatibus");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Toothache",8,"enim, condimentum eget, volutpat ornare, facilisis eget,"),("Tremor",6,"Nulla tempor"),("Tunnel Vision",8,"feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit."),("Ulcerative Colitis Symptoms",2,"et, commodo at, libero. Morbi"),("Unsteady Gait",6,"vitae sodales nisi magna sed dui. Fusce aliquam,"),("Unusual Behavior",3,"mauris blandit mattis. Cras eget nisi dictum augue malesuada"),("Urge Incontinence (Bladder Spasms)",1,"arcu. Vestibulum ante ipsum primis in"),("Urinary Retention",8,"posuere vulputate, lacus. Cras"),("Urinary Tract Infection (UTI) Symptoms",4,"dui. Fusce diam nunc, ullamcorper eu,"),("Urinary Urgency",5,"purus, in molestie tortor nibh sit amet orci. Ut sagittis");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Urine Odor",2,"ullamcorper,"),("Vaginal Bleeding",2,"ligula eu enim. Etiam imperdiet dictum"),("Vaginal Discharge",7,"Nunc sollicitudin commodo ipsum. Suspendisse non leo."),("Vaginal Dryness",9,"nisl. Quisque fringilla euismod enim."),("Vaginal Itching",4,"fringilla est. Mauris eu"),("Vaginal Odor",2,"lobortis. Class"),("Vaginal Pain",2,"Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec"),("Vaginal Yeast Infection Symptoms",4,"at risus. Nunc ac sem ut dolor"),("Vertical Ridges on the Fingernails",8,"semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis"),("Vertigo",1,"pellentesque. Sed");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("Vision Loss",3,"massa. Suspendisse eleifend. Cras sed leo. Cras vehicula"),("Vocal Outbursts",9,"felis."),("Vomiting",1,"elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut"),("Vomiting Blood",5,"leo. Morbi neque tellus,"),("Watery Eye",4,"vel quam dignissim pharetra. Nam ac nulla. In tincidunt"),("Weakness",8,"in, dolor. Fusce feugiat. Lorem ipsum dolor"),("Weight Gain",2,"euismod enim. Etiam gravida molestie arcu. Sed eu"),("Weight Loss",1,"ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor."),("West Nile Virus Symptoms",7,"mauris. Suspendisse aliquet molestie tellus."),("Wheezing",3,"rutrum eu,");
INSERT INTO `symptoms` (`name`,`body_part`,`description`) VALUES ("White Tongue",6,"sociis natoque penatibus"),("Wrist Pain",9,"lacinia. Sed congue, elit sed consequat auctor,");
UPDATE symptoms SET body_part='HEAD' WHERE body_part='1';
UPDATE symptoms SET body_part='SHOULDER' WHERE body_part='2';
UPDATE symptoms SET body_part='CHEST' WHERE body_part='3';
UPDATE symptoms SET body_part='ARM' WHERE body_part='4';
UPDATE symptoms SET body_part='WAIST' WHERE body_part='5';
UPDATE symptoms SET body_part='HAND' WHERE body_part='6';
UPDATE symptoms SET body_part='LEG' WHERE body_part='7';
UPDATE symptoms SET body_part='KNEE' WHERE body_part='8';
UPDATE symptoms SET body_part='FOOT' WHERE body_part='9';
-- table symptoms counts 342 units

-- insert diseases into diseases table
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Achondroplasia",3,"nisi nibh"),("Acne",11,"vel pede blandit congue."),("Albinism",8,"elit. Aliquam"),("Alcoholic hepatitis",6,"odio semper"),("Allergy",21,"sed tortor. Integer aliquam adipiscing lacus."),("Alopecia",13,"Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien"),("Alzheimer's disease",9,"amet luctus"),("Amblyopia",14,"Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh"),("Amebiasis",5,"tempor bibendum. Donec felis orci,"),("Anemia",25,"Quisque nonummy ipsum non arcu.");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Aneurdu",19,"velit egestas lacinia."),("Anorexia",16,"eu tempor"),("Anosmia",28,"magnis dis parturient montes, nascetur ridiculus mus."),("Anotia",26,"non enim. Mauris quis turpis vitae purus gravida sagittis. Duis"),("Anthrax",6,"a, scelerisque sed, sapien. Nunc pulvinar arcu et"),("Appendicitis",10,"dui,"),("Apraxia",17,"semper cursus. Integer mollis. Integer tincidunt aliquam"),("Argyria",20,"purus."),("Arthritis",23,"enim. Etiam imperdiet dictum magna. Ut tincidunt"),("Aseptic meningitis",8,"posuere, enim nisl elementum purus, accumsan interdum libero");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Asthenia",3,"nonummy."),("Asthma",9,"magna. Lorem ipsum dolor"),("Astigmatism",12,"Cras lorem lorem,"),("Atherosclerosis",16,"convallis in, cursus et, eros. Proin ultrices."),("Athetosis",27,"In at pede. Cras vulputate velit eu sem."),("Atrophy",2,"inceptos hymenaeos. Mauris ut"),("Bacterial meningitis",17,"Sed nulla ante, iaculis"),("Beriberi",10,"aliquet magna a neque. Nullam ut nisi a"),("Black Death",1,"sit amet massa."),("Botulism",19,"massa lobortis ultrices. Vivamus");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Breast cancer",9,"erat. Vivamus nisi."),("Bronchitis",4,"lectus, a sollicitudin orci sem"),("Brucellosis",2,"malesuada augue ut lacus."),("Bubonic plague",14,"eu tellus eu augue porttitor interdum. Sed auctor odio"),("Bunion",3,"tempus non, lacinia at, iaculis"),("Calculi",16,"et, commodo at, libero. Morbi accumsan laoreet ipsum."),("Campylobacter infection",24,"Sed neque. Sed eget lacus. Mauris non dui"),("Cancer",2,"mi"),("Candidiasis",18,"scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed"),("Carbon monoxide poisoning",5,"feugiat nec, diam. Duis mi enim, condimentum eget, volutpat");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Celiacs disease",8,"Morbi"),("Cerebral palsy",26,"in"),("Chagas disease",7,"scelerisque sed, sapien. Nunc pulvinar arcu et pede."),("Chalazion",18,"elit"),("Chancroid",16,"non quam. Pellentesque habitant morbi tristique"),("Chavia",18,"et malesuada"),("Congenital insensitivity to pain with anhidrosis",15,"mus. Proin vel"),("Cherubism",25,"eget mollis lectus pede et risus. Quisque libero"),("Chickenpox",2,"et, rutrum"),("Chlamydia",23,"mattis. Integer eu lacus. Quisque imperdiet,");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Chlamydia trachomatis",7,"amet, dapibus id, blandit at, nisi."),("Cholera",19,"purus"),("Chordoma",21,"risus quis"),("Chorea",28,"In"),("Chronic fatigue syndrome",11,"fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit."),("Circadian rhythm sleep disorder",26,"felis."),("Coccidioidomycosis",26,"amet"),("Colitis",21,"ut,"),("Common cold",18,"auctor, nunc nulla vulputate dui, nec tempus mauris erat eget"),("Condyloma",16,"ante");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Congestive heart disease",1,"Mauris"),("Coronary heart disease",21,"odio. Etiam ligula tortor, dictum eu, placerat eget,"),("Cowpox",25,"Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper"),("Cretinism",6,"accumsan interdum libero"),("Crohn's Disease",22,"sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla"),("Dengue",27,"consectetuer, cursus et, magna. Praesent"),("Diabetes mellitus",7,"cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit"),("Diphtheria",27,"pede"),("Dehydration",5,"amet nulla. Donec non justo. Proin non"),("Ear infection",25,"odio tristique pharetra. Quisque ac libero");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Ebola",21,"nec tempus mauris erat eget ipsum."),("Encephalitis",2,"vestibulum"),("Emphysema",12,"malesuada id, erat. Etiam vestibulum massa"),("Epilepsy",7,"dolor. Quisque"),("Erectile dysfunctions",1,"Suspendisse aliquet, sem ut cursus luctus,"),("Fibromyalgia",17,"non justo. Proin"),("Foodborne illness",20,"a felis ullamcorper viverra. Maecenas"),("Gangrene",6,"Aliquam tincidunt, nunc ac mattis ornare, lectus ante"),("Gastroenteritis",27,"et ipsum cursus"),("Genital herpes",3,"dolor quam, elementum at, egestas a,");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("GERD",1,"facilisi. Sed neque. Sed eget lacus. Mauris non dui"),("Goitre",20,"elit, a"),("Gonorrhea",18,"pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna."),("Heart disease",15,"semper rutrum."),("Hepatitis A",10,"lacus. Etiam bibendum fermentum metus. Aenean"),("Hepatitis B",6,"eget mollis lectus pede et risus. Quisque libero lacus,"),("Hepatitis C",21,"elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,"),("Hepatitis D",25,"vitae, orci."),("Hepatitis E",1,"tellus, imperdiet non, vestibulum nec, euismod in, dolor."),("Histiocytosis (Childhood Cancer)",14,"sapien. Aenean massa. Integer vitae nibh. Donec");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("HIV",26,"Donec luctus aliquet odio. Etiam ligula tortor,"),("Human papillomavirus",22,"id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis"),("Huntington's disease",21,"aliquet"),("Hypermetropia",18,"a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus"),("Hyperopia",10,"Pellentesque ultricies dignissim"),("Hyperthyroidism",9,"facilisi. Sed neque. Sed eget lacus. Mauris"),("Hypothyroid",23,"lectus"),("Hypotonia",27,"Vestibulum accumsan neque et nunc. Quisque ornare"),("Impetigo",11,"luctus felis"),("Infertility",15,"dictum. Phasellus in");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Influenza",13,"et magnis dis parturient montes, nascetur ridiculus mus. Donec"),("Interstitial cystitis",3,"facilisis non, bibendum sed,"),("Iritis",24,"varius orci, in"),("Iron-deficiency anemia",21,"elit, pharetra"),("Irritable bowel syndrome",20,"leo. Morbi"),("Ignious Syndrome",25,"egestas nunc sed libero."),("Jaundice",19,"erat neque"),("Keloids",8,"amet, risus. Donec nibh enim,"),("Kuru",19,"a, dui. Cras pellentesque."),("Kwashiorkor",23,"dui. Fusce aliquam, enim nec tempus");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Laryngitis",15,"velit justo nec ante."),("Lead poisoning",11,"eleifend non,"),("Legionellosis",13,"non, feugiat nec, diam. Duis mi enim,"),("Leishmaniasis",11,"Aliquam gravida mauris ut mi."),("Leprosy",12,"gravida sagittis. Duis gravida."),("Leptospirosis",11,"mi felis, adipiscing fringilla, porttitor vulputate, posuere"),("Listeriosis",24,"auctor ullamcorper, nisl arcu iaculis enim,"),("Leukemia",11,"imperdiet non, vestibulum nec,"),("Lice",17,"vel quam dignissim pharetra. Nam ac nulla. In"),("Loiasis",14,"Integer");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Lung cancer",12,"tincidunt tempus risus. Donec egestas. Duis"),("Lupus erythematosus",25,"id nunc interdum feugiat."),("Lyme disease",1,"metus. Aliquam erat volutpat."),("Lymphogranuloma venereum",6,"semper rutrum. Fusce"),("Lymphoma",14,"dolor sit"),("Mad cow disease",12,"Nam tempor diam dictum sapien. Aenean massa. Integer"),("Malaria",22,"ac risus. Morbi metus."),("Marburg fever",28,"fermentum metus. Aenean"),("Measles",7,"et netus et malesuada fames ac turpis egestas."),("Melanoma",20,"arcu vel");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Melioidosis",13,"auctor vitae, aliquet"),("Metastatic cancer",9,"aliquet."),("Ménière's disease",17,"ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus"),("Meningitis",4,"ut mi."),("Migraine",16,"hendrerit a, arcu."),("Mononucleosis",16,"parturient"),("Multiple myeloma",20,"justo faucibus lectus, a"),("Multiple sclerosis",10,"nec"),("Mumps",9,"ac, feugiat non,"),("Muscular dystrophy",7,"Pellentesque ultricies dignissim");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Myasthenia gravis",10,"ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem"),("Myelitis",18,"ac ipsum. Phasellus vitae"),("Myoclonus",21,"dui nec urna suscipit"),("Myopia",26,"mus. Proin vel nisl."),("Myxedema",1,"Sed id risus quis diam luctus lobortis. Class aptent"),("Morquio Syndrome",20,"sit amet luctus vulputate, nisi sem semper"),("Mattticular syndrome",3,"Donec fringilla."),("Mononucleosis",23,"mauris"),("Neoplasm",11,"ante lectus convallis est, vitae sodales nisi"),("Non-gonococcal urethritis",11,"Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Necrotizing Fasciitis",12,"Ut nec urna et"),("Night blindness",14,"augue, eu tempor erat neque non quam."),("Obesity",2,"orci sem eget"),("Osteoarthritis",7,"nec, eleifend non, dapibus"),("Osteoporosis",10,"tincidunt."),("Otitis",25,"mauris sit amet lorem semper"),("Palindromic rheumatism",26,"imperdiet non, vestibulum nec, euismod in,"),("Paratyphoid fever",21,"condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing"),("Parkinson's disease",23,"amet nulla. Donec"),("Pelvic inflammatory disease",6,"ipsum sodales purus, in molestie");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Peritonitis",1,"Duis"),("Periodontal disease",25,"Donec vitae erat vel pede"),("Pertussis",3,"Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu"),("Phenylketonuria",15,"tristique ac, eleifend"),("Plague",7,"viverra. Donec"),("Poliomyelitis",5,"sagittis felis. Donec tempor, est ac mattis semper, dui lectus"),("Porphyria",28,"risus. Duis"),("Progeria",14,"eros nec tellus. Nunc lectus pede, ultrices a, auctor"),("Prostatitis",16,"fermentum fermentum arcu. Vestibulum ante ipsum primis"),("Psittacosis",25,"ut eros non enim commodo hendrerit. Donec porttitor tellus");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Psoriasis",5,"semper rutrum. Fusce"),("Pubic lice",18,"non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit"),("Pulmonary embolism",8,"a purus."),("Pilia",23,"elementum, dui quis accumsan convallis, ante lectus"),("pneumonia",1,"penatibus et magnis dis parturient montes, nascetur"),("Q fever",6,"dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus"),("Ques fever",6,"ornare. In faucibus. Morbi vehicula."),("Rabies",16,"scelerisque scelerisque dui. Suspendisse ac metus vitae velit"),("Repetitive strain injury",13,"erat eget ipsum. Suspendisse sagittis."),("Rheumatic fever",4,"Integer mollis.");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Rheumatic heart",8,"ridiculus mus. Donec"),("Rheumatism",3,"Nunc mauris. Morbi non sapien molestie orci tincidunt"),("Rheumatoid arthritis",6,"adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,"),("Rickets",28,"libero. Proin mi. Aliquam gravida mauris ut mi."),("Rift Valley fever",20,"quis arcu vel quam dignissim pharetra. Nam"),("Rocky Mountain spotted fever",22,"dolor dapibus gravida."),("Rubella",20,"non, lobortis quis, pede."),("Salmonellosis",13,"tempor, est ac mattis semper, dui lectus"),("Scabies",26,"dui, semper et, lacinia vitae, sodales at,"),("Scarlet fever",20,"dolor dapibus gravida. Aliquam tincidunt,");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Sciatica",11,"euismod est arcu ac orci. Ut semper pretium neque."),("Scleroderma",3,"nibh dolor, nonummy"),("Scrapie",25,"sed, est. Nunc laoreet"),("Scurvy",27,"eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor."),("Sepsis",12,"lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus"),("Septicemia",25,"Sed nec metus facilisis lorem tristique aliquet."),("SARS",12,"nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis"),("Shigellosis",22,"id ante dictum cursus. Nunc"),("Shin splints",22,"vel arcu. Curabitur ut odio vel est tempor bibendum. Donec"),("Shingles",5,"Aliquam gravida mauris ut mi.");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Sickle-cell anemia",20,"ornare egestas ligula. Nullam"),("Siderosis",18,"montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique"),("SIDS",6,"in, tempus eu,"),("Silicosis",25,"Mauris non dui nec urna suscipit nonummy. Fusce"),("Smallpox",13,"libero nec ligula consectetuer rhoncus."),("Stevens-Johnson syndrome",26,"Nulla facilisi. Sed neque. Sed eget lacus. Mauris"),("Stomach flu",17,"egestas. Sed pharetra, felis eget varius ultrices, mauris"),("Stomach ulcers",11,"luctus lobortis. Class aptent taciti sociosqu ad litora torquent"),("Strabismus",5,"id risus"),("Strep throat",15,"sed dictum eleifend,");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Streptococcal infection",1,"gravida mauris ut mi. Duis risus odio, auctor"),("Synovitis",20,"Sed eu eros. Nam consequat dolor vitae"),("Syphilis",16,"Ut semper pretium neque. Morbi"),("Swine influenza",15,"velit. Sed malesuada augue ut lacus. Nulla tincidunt,"),("Schizophrenia",1,"quam a felis ullamcorper viverra. Maecenas"),("Taeniasis",12,"iaculis enim, sit amet ornare lectus justo eu"),("Tay-Sachs disease",12,"non nisi."),("Tennis elbow",20,"in aliquet lobortis, nisi nibh lacinia orci,"),("Teratoma",6,"malesuada. Integer id magna"),("Tetanus",15,"dui. Cum sociis natoque penatibus");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Thalassaemia",7,"velit eu sem. Pellentesque"),("Thrush",18,"rutrum urna, nec luctus felis purus ac tellus. Suspendisse"),("Thymoma",7,"arcu"),("Tinnitus",18,"Curabitur ut odio vel est tempor bibendum. Donec felis orci,"),("Tonsillitis",9,"id,"),("Tooth decay",17,"molestie orci tincidunt adipiscing. Mauris"),("Toxic shock syndrome",10,"tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac"),("Trichinosis",7,"Sed malesuada"),("Trichomoniasis",7,"nec quam. Curabitur vel lectus. Cum"),("Trisomy",28,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Tuberculosis",24,"eget metus. In nec orci. Donec"),("Tularemia",10,"augue malesuada malesuada. Integer id magna"),("Tungiasis",21,"dolor, nonummy ac, feugiat"),("Typhoid fever",2,"eu arcu. Morbi sit amet massa."),("Typhus",2,"Ut sagittis lobortis"),("Tumor",4,"semper, dui lectus rutrum urna, nec luctus felis purus"),("Ulcerative colitis",12,"mollis. Integer tincidunt aliquam arcu."),("Ulcers",1,"Nullam feugiat placerat velit. Quisque"),("Uremia",3,"vehicula et, rutrum eu, ultrices sit amet,"),("Urticaria",25,"est ac mattis semper, dui lectus rutrum urna, nec luctus");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Uveitis",4,"sagittis augue, eu tempor"),("Varicella",19,"enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec"),("Varicose veins",17,"nec, euismod in, dolor."),("Vasovagal syncope",23,"Integer tincidunt aliquam"),("Vitiligo",23,"nec luctus felis purus"),("Von Hippel-Lindau disease",12,"malesuada ut, sem."),("Viral fever",19,"sagittis lobortis"),("Viral meningitis",20,"et"),("VAlley fever",19,"convallis, ante lectus convallis est, vitae sodales nisi"),("Warkany syndrome",7,"diam nunc,");
INSERT INTO `diseases` (`name`,`id_department`,`description`) VALUES ("Warts",20,"eu dui. Cum sociis natoque penatibus et magnis dis"),("Watkins",11,"urna. Nunc quis arcu vel quam dignissim"),("Yellow fever",11,"id sapien. Cras dolor"),("Yersiniosis",8,"dolor sit amet, consectetuer adipiscing elit. Curabitur");
-- table diseases counts 254 units

-- insert drugs into drugs table
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (3,"Acid",8,"posuere at, velit. Cras lorem lorem, luctus ut,",17),(3,"Aerosols",7,"aliquet nec, imperdiet nec, leo. Morbi neque tellus,",7),(3,"Alcohol",1,"feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem",21),(3,"Alkyl Nitrite",2,"nulla vulputate dui, nec",31),(3,"Amphetamines",5,"tristique senectus",44),(3,"Amyl Nitrite",1,"metus. Vivamus",37),(3,"Anabolic Steroids",3,"viverra. Donec tempus, lorem fringilla ornare placerat,",7),(3,"Anavar",4,"dui, semper",27),(3,"Angel Dust",1,"auctor velit. Aliquam nisl. Nulla eu neque",23),(3,"Annihilation",2,"metus sit amet ante. Vivamus non lorem",46);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (2,"Baccy",7,"ante dictum cursus. Nunc mauris elit, dictum eu, eleifend",36),(2,"Base",7,"fringilla cursus purus. Nullam scelerisque neque sed",8),(2,"Bath Salts",2,"blandit. Nam nulla",21),(2,"Benzo Fury",4,"fringilla, porttitor vulputate, posuere",8),(2,"Benzos",2,"tempor erat neque non quam.",12),(2,"Bevvy",1,"sodales purus,",28),(2,"Blotters",6,"In faucibus. Morbi vehicula. Pellentesque",5),(2,"Blues",2,"Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet",2),(2,"Bom-25",5,"vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam",28),(2,"Bonsai",4,"Proin mi. Aliquam gravida mauris ut",43);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (2,"Bonsai Supersleep",1,"netus et malesuada fames ac",7),(2,"Booze",8,"Nunc ut erat. Sed nunc",8),(2,"Bounce",5,"taciti sociosqu ad litora torquent",17),(2,"Bromo",5,"quis diam. Pellentesque habitant",25),(2,"Bubbles",7,"Duis sit amet",27),(2,"Buprenorphine",7,"Duis risus odio,",13),(2,"Butane",1,"ac arcu.",19),(2,"Butyl Nitrite",9,"ipsum primis in faucibus orci",17),(2,"BZP",6,"cubilia Curae; Phasellus",9),(2,"Cannabis",2,"nulla vulputate dui, nec tempus mauris erat eget ipsum.",27);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (2,"CB",1,"interdum. Sed auctor odio a",48),(2,"Chalk",2,"tincidunt, nunc ac mattis",18),(2,"Charge",3,"tempus risus. Donec egestas. Duis ac",8),(2,"Chargers",2,"Curabitur ut odio",38),(2,"Charlie",7,"quam",21),(2,"Chat",5,"eu tellus. Phasellus elit pede, malesuada vel,",9),(2,"Cheech",7,"felis, adipiscing fringilla, porttitor vulputate, posuere",16),(2,"Chicken Fever",9,"pharetra ut, pharetra sed,",47),(2,"Chicken Yellow",3,"ante ipsum primis in faucibus orci luctus",5),(2,"Chico",5,"lectus. Nullam suscipit,",13);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (2,"Chong Snow",5,"facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate,",20),(2,"Ciggies",6,"in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan",15),(2,"Cocaine",5,"natoque penatibus et magnis dis parturient montes, nascetur ridiculus",17),(2,"Codeine",6,"consectetuer",43),(2,"Codis500",7,"Aenean sed pede nec ante blandit viverra. Donec tempus,",40),(2,"Coke",1,"ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,",22),(2,"Cough Syrup",4,"ornare lectus justo eu arcu. Morbi sit",12),(2,"Council",1,"cursus in, hendrerit consectetuer,",16),(2,"Crack",5,"rhoncus.",45),(2,"Crank",7,"Lorem",42);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (2,"Crazy medicine",5,"augue malesuada malesuada. Integer",29),(2,"Cristy",3,"lacinia.",34),(2,"Crystal Meth",7,"eget varius ultrices, mauris ipsum porta elit,",49),(2,"D2PM",3,"Nullam lobortis quam a felis",13),(2,"Deca-durabolin",6,"et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat",7),(2,"Desoxypipradrol",3,"pede, ultrices a,",39),(2,"Diamorphine",9,"lectus quis",12),(2,"Dianabol",5,"bibendum. Donec felis orci, adipiscing non, luctus sit",7),(2,"Diazepam",8,"Donec tincidunt. Donec",5),(2,"Dihydrocodeine",7,"tempor",1);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (2,"Dimethocaine",7,"lectus ante dictum mi, ac mattis",9),(2,"Diphenylmethylpyrrolidine",1,"lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus",48),(2,"Dope",5,"eget magna. Suspendisse tristique",27),(2,"Double Stacked",9,"amet diam eu dolor egestas rhoncus. Proin nisl sem,",26),(2,"Dr Death",4,"Etiam gravida molestie arcu. Sed eu nibh vulputate",37),(2,"Drone",7,"ipsum ac mi eleifend egestas. Sed pharetra, felis",31),(2,"Eckies",5,"mi felis, adipiscing fringilla, porttitor",38),(2,"Eclipse",2,"accumsan neque et nunc. Quisque",5),(2,"Ecstasy",7,"mi felis, adipiscing fringilla, porttitor vulputate, posuere",49),(2,"Energy-1",1,"justo. Proin non massa non ante",21);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (2,"Eric 3",8,"dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In",18),(2,"Fags",5,"magna, malesuada vel, convallis in, cursus et, eros. Proin",2),(2,"Fairy Dust",7,"a feugiat tellus lorem eu metus. In lorem.",5),(2,"Fast lane",6,"ac tellus.",27),(2,"Fenazepam",1,"enim. Curabitur massa. Vestibulum accumsan neque et",1),(2,"Fly Agaric Mushrooms",3,"nunc.",31),(2,"Freebase",3,"dolor sit amet, consectetuer adipiscing",40),(2,"Gabapentin",6,"In lorem. Donec elementum, lorem ut aliquam",49),(2,"Gabba",9,"tempor bibendum. Donec felis",18),(2,"Gamma-butyrolactone",7,"nec, diam. Duis mi enim, condimentum",17);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (2,"Gamma hydroxybutyrate",5,"ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,",21),(2,"Ganjha",1,"sit amet ante. Vivamus non lorem vitae odio sagittis semper.",33),(2,"Gas",2,"amet risus. Donec egestas.",39),(2,"GBH",7,"at",34),(2,"GBL",6,"sit",49),(2,"Gear",6,"Sed",12),(2,"GHB",8,"Donec non justo. Proin non massa non ante bibendum ullamcorper.",9),(2,"Glass",6,"semper rutrum. Fusce dolor quam, elementum at, egestas",48),(2,"Glue",9,"a",10),(2,"Go fast",3,"lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam",44);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Grass",7,"congue turpis. In condimentum. Donec",2),(4,"Happy Pills",9,"eu, euismod ac, fermentum vel, mauris. Integer sem elit,",7),(4,"Hash",5,"semper egestas, urna justo faucibus",8),(4,"Heroin",4,"ac tellus. Suspendisse sed dolor. Fusce mi",27),(4,"Hippie Crack",8,"pretium",7),(4,"Hog",7,"erat semper rutrum. Fusce",24),(4,"Holy Sage",5,"lacus. Quisque imperdiet, erat nonummy ultricies ornare,",1),(4,"Horsey",6,"mauris, rhoncus id, mollis nec, cursus a,",34),(4,"Ice",6,"ac ipsum. Phasellus vitae mauris sit",24),(4,"Ivory Wave",9,"pharetra, felis eget varius ultrices, mauris ipsum porta elit,",1);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Jabs",2,"Nam",27),(4,"Jellies",7,"aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim",6),(4,"Junk",7,"luctus vulputate, nisi sem",39),(4,"Ket",9,"Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum,",45),(4,"Ketamine",2,"et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus",14),(4,"Khat",7,"congue a, aliquet vel, vulputate",38),(4,"Killer",5,"lacus.",44),(4,"Kit",4,"a, auctor non, feugiat nec, diam.",46),(4,"Laughing Gas",7,"erat,",22),(4,"Legal Highs",2,"sit amet lorem semper auctor. Mauris vel",32);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Liberty Cap Mushrooms",2,"molestie in, tempus eu, ligula. Aenean euismod mauris eu",15),(4,"Librium",9,"nunc nulla vulputate",9),(4,"Linctus",8,"dapibus quam quis",44),(4,"Liquid Ecstasy",4,"Duis a mi",26),(4,"Liquid Gold",6,"et, lacinia vitae, sodales",32),(4,"LSD",8,"Maecenas iaculis aliquet diam. Sed",45),(4,"Lyrica",3,"Praesent luctus. Curabitur egestas nunc sed",12),(4,"Magic",7,"nec orci. Donec nibh. Quisque nonummy ipsum",21),(4,"Magic Mushrooms",4,"ante lectus convallis est, vitae sodales nisi magna sed",28),(4,"Mandy",3,"nec tempus mauris erat eget ipsum. Suspendisse",35);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Marijuana",7,"torquent per conubia nostra, per inceptos hymenaeos. Mauris",30),(4,"MC",9,"Nullam enim.",1),(4,"Mcat",2,"eget mollis lectus",19),(4,"M-cat",1,"Integer tincidunt aliquam arcu. Aliquam ultrices iaculis",18),(4,"MDAT",4,"eu odio tristique pharetra. Quisque ac libero",41),(4,"MDMA",3,"turpis vitae",12),(4,"MDPV",8,"eu tellus eu augue porttitor interdum. Sed auctor",34),(4,"Meow Meow",7,"quis",17),(4,"Meph",8,"mollis vitae, posuere at, velit. Cras lorem lorem,",35),(4,"Mephedrone",8,"a, aliquet",12);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Mescaline",2,"ante. Vivamus non lorem vitae",38),(4,"Meth",4,"ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit",43),(4,"Methadone",2,"pretium aliquet, metus urna convallis erat, eget",48),(4,"Methamphetamine",2,"rutrum, justo. Praesent luctus. Curabitur egestas",13),(4,"Methedrone",4,"felis, adipiscing",35),(4,"Methoxetamine",4,"interdum feugiat. Sed nec metus facilisis lorem tristique aliquet.",2),(4,"Methylone",3,"amet ultricies sem",44),(4,"Mexican Magic Mint",3,"rhoncus id, mollis nec, cursus a, enim. Suspendisse",24),(4,"Mexxy",4,"nec luctus felis",41),(4,"Mexy",5,"placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl.",28);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Miaow",7,"vel est",26),(4,"Miaow Miaow",6,"tincidunt orci quis lectus. Nullam suscipit,",42),(4,"Mitsubishi Turbo",8,"pharetra sed, hendrerit a,",48),(4,"MKET",4,"Morbi neque tellus, imperdiet non, vestibulum nec,",30),(4,"Mogadon",6,"Sed et libero. Proin mi. Aliquam",44),(4,"Morphine",1,"pede.",25),(4,"Moxy",3,"metus eu erat semper rutrum. Fusce dolor",23),(4,"M-smack",3,"urna,",30),(4,"Mushies",9,"lectus pede, ultrices a, auctor",27),(4,"MXE",7,"nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor",47);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Naphyrone",5,"semper auctor. Mauris vel",48),(4,"N-Bomb",8,"non enim. Mauris quis turpis vitae purus gravida sagittis. Duis",22),(4,"Neurontin",1,"risus. Nunc ac sem ut dolor dapibus",2),(4,"New Drugs",6,"Aliquam ornare, libero",27),(4,"New Psychoactive Substances",8,"risus. Morbi metus. Vivamus euismod",44),(4,"Nexus",3,"arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor",36),(4,"Nicotine",5,"ipsum cursus vestibulum.",4),(4,"Nitrazepam",1,"Nulla",46),(4,"Nitrous Oxide",7,"magnis",9),(4,"NPS",8,"magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum",3);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"NRG1",7,"non, luctus sit amet, faucibus ut, nulla.",12),(4,"NRG-1",7,"Donec non justo. Proin non massa non ante bibendum ullamcorper.",41),(4,"Nurofen Plus/Max",9,"vestibulum massa rutrum magna. Cras convallis",17),(4,"Opiate/Opioid Painkillers",1,"nec, diam. Duis mi",17),(4,"Party Pills",2,"nisi",45),(4,"PCP",6,"arcu imperdiet ullamcorper.",19),(4,"Peace Pills",8,"blandit",15),(4,"Pep",7,"ligula",7),(4,"Peyote",2,"habitant morbi tristique",3),(4,"Peyote Buttons",5,"ac, fermentum",32);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Phenazepam",8,"tincidunt dui augue eu",3),(4,"Phencyclidine",1,"orci",43),(4,"Pills",7,"arcu. Vestibulum ante ipsum primis",33),(4,"Pink Ecstacy",4,"ante ipsum primis",45),(4,"Pink McDonalds",1,"iaculis odio.",5),(4,"Piperazines",6,"et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis",39),(4,"Plant Food",7,"vel quam dignissim pharetra. Nam ac nulla. In tincidunt",35),(4,"PMA",9,"ornare. In faucibus. Morbi vehicula. Pellentesque",38),(4,"PMMA",8,"amet",28),(4,"Poppers",5,"consectetuer ipsum nunc",20);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (4,"Pot",1,"erat. Vivamus nisi. Mauris",21),(4,"Pregabalin",3,"vulputate ullamcorper magna. Sed eu eros. Nam",33),(4,"Purple Wave",5,"egestas a,",21),(4,"Qaadka",6,"mauris elit, dictum eu, eleifend nec,",25),(4,"Qat",6,"ut odio vel est",29),(4,"Quat",2,"sem,",47),(4,"Rave",4,"leo. Vivamus nibh dolor,",37),(4,"Red Mitsubishi",7,"montes, nascetur ridiculus mus. Proin",46),(4,"Reefer",1,"gravida sagittis. Duis",21),(4,"Resin",2,"sapien,",1);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (3,"Rhino Ket",4,"sem, consequat nec, mollis vitae, posuere at, velit. Cras",32),(3,"Rock",8,"vitae odio sagittis semper. Nam tempor diam dictum",46),(3,"Roflcopter",9,"magna. Cras convallis convallis dolor. Quisque tincidunt pede",13),(3,"Rohypnol",1,"facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.",22),(3,"Roids",5,"gravida non, sollicitudin a, malesuada",41),(3,"Rolexs",7,"sollicitudin adipiscing ligula. Aenean gravida nunc sed",19),(3,"Rollies",9,"dolor dapibus gravida. Aliquam tincidunt,",35),(3,"Roofies",3,"mollis. Phasellus libero mauris,",31),(3,"Salvia",7,"non, hendrerit id, ante. Nunc mauris sapien, cursus",39),(3,"Shabu",7,"aliquam, enim nec tempus scelerisque, lorem ipsum",10);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (3,"Shrooms",5,"et nunc. Quisque ornare tortor",10),(3,"Silver bullet +",1,"Donec est mauris, rhoncus id, mollis nec, cursus a, enim.",5),(3,"Silver Bullet",2,"magna",26),(3,"Skag",2,"Proin",31),(3,"Skunk",8,"mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin",27),(3,"Smack",6,"tincidunt",1),(3,"Smiley Paper",6,"Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis",41),(3,"Smiley’s",2,"Vivamus non lorem vitae odio",17),(3,"Smoke",1,"egestas nunc",4),(3,"Smokes",7,"ac libero nec ligula consectetuer",26);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (3,"Snifter",3,"semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies",38),(3,"Snow",4,"ultrices sit amet, risus.",19),(3,"Soapbar",3,"arcu iaculis",24),(3,"Solid",2,"Phasellus vitae mauris sit amet",2),(3,"Solvents",2,"ornare sagittis felis. Donec tempor,",19),(3,"Special K",4,"Sed congue, elit sed consequat",45),(3,"Speed",2,"aliquet odio. Etiam",20),(3,"Spice",1,"Cum sociis natoque penatibus et magnis dis parturient montes,",41),(3,"Stanozolol",1,"sapien. Nunc pulvinar arcu et pede.",14),(3,"Sulph",8,"sem, consequat nec, mollis vitae, posuere at, velit.",12);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (3,"Sustanon 250",9,"tellus. Suspendisse",24),(3,"Sweeties",7,"montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla",36),(3,"Synthetic Cannabinoids",6,"nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras",4),(3,"Syrup",6,"Donec elementum,",3),(3,"Tabs",4,"nulla",10),(3,"Temazepam",3,"consectetuer",33),(3,"Tina",1,"vel est tempor bibendum. Donec felis orci, adipiscing non, luctus",20),(3,"TNT",7,"a,",28),(3,"Tramadol",1,"Duis ac arcu. Nunc mauris. Morbi non sapien molestie",17),(3,"Tramal",4,"auctor ullamcorper, nisl arcu",25);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (1,"Tranquillisers",1,"Duis sit amet diam eu",5),(1,"Tranx",9,"vehicula risus. Nulla",16),(1,"Trips",6,"nisl. Nulla eu neque pellentesque",7),(1,"Ultram",1,"Phasellus dolor elit, pellentesque",43),(1,"Valium",8,"Fusce fermentum fermentum",33),(1,"Vallies",4,"scelerisque neque. Nullam",26),(1,"Vanilla Sky",2,"non, cursus non, egestas",34),(1,"Vitamin K",7,"diam at pretium aliquet,",13),(1,"Volatile substances",7,"Aenean",1),(1,"Weed",5,"egestas lacinia. Sed congue, elit sed consequat",28);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (1,"Whippits",8,"Class aptent taciti sociosqu ad litora torquent",32),(1,"White Magic",3,"consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing",15),(1,"White Stuff",1,"dignissim magna a tortor. Nunc commodo",13),(1,"Whizz",9,"sed",18),(1,"XTC",2,"felis ullamcorper viverra. Maecenas iaculis aliquet diam.",37),(1,"Yaba",6,"pede. Cras vulputate velit eu",37),(1,"Zip",3,"Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem",4),(1,"2-DPMP",6,"Vivamus nibh dolor, nonummy ac,",3),(1,"2CB",8,"in lobortis",26),(1,"2Ci",3,"Phasellus dolor",30);
INSERT INTO `drugs` (`dosage`,`name`,`drug_category`,`description`,`hazard_ratio`) VALUES (1,"2C-I-NBOMe",4,"enim commodo",39),(1,"2CT-7",2,"non massa non ante bibendum ullamcorper. Duis",16),(1,"4MMC",5,"ut, sem.",25),(1,"5-APB",7,"lorem, luctus ut, pellentesque eget,",48),(1,"5-IAI",9,"risus odio, auctor vitae, aliquet nec, imperdiet nec, leo.",18),(1,"5-IT",1,"auctor, velit eget laoreet posuere, enim nisl elementum purus,",22),(1,"6-APB",4,"lacus. Etiam bibendum fermentum metus. Aenean sed pede",12),(1,"6-IT",8,"augue",25),(1,"25I",7,"erat, in consectetuer ipsum nunc id",44),(1,"25I-NBOMe",5,"Fusce aliquam,",8);
UPDATE drugs SET drug_category='ANTIPYRETICS' WHERE drug_category='1';
UPDATE drugs SET drug_category='ANALGESICS' WHERE drug_category='2';
UPDATE drugs SET drug_category='ANTIMALARIAL' WHERE drug_category='3';
UPDATE drugs SET drug_category='ANTIBIOTICS' WHERE drug_category='4';
UPDATE drugs SET drug_category='ANTISEPTICS' WHERE drug_category='5';
UPDATE drugs SET drug_category='ANTIDEPRESSANS' WHERE drug_category='6';
UPDATE drugs SET drug_category='HORMONAL' WHERE drug_category='7';
UPDATE drugs SET drug_category='TRANQUILIZERS' WHERE drug_category='8';
UPDATE drugs SET drug_category='OTHERS' WHERE drug_category='9';
-- table drugs counts 260 units

-- bind tables diseases and symptoms to get ManyToOne table diseases_symptoms
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (1,110),(2,6),(3,326),(4,251),(5,222),(6,115),(7,302),(8,164),(9,78),(10,133);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (11,43),(12,80),(13,53),(14,281),(15,305),(16,337),(17,287),(18,164),(19,190),(20,7);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (21,320),(22,32),(23,20),(24,108),(25,13),(26,309),(27,118),(28,137),(29,259),(30,153);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (31,271),(32,218),(33,325),(34,173),(35,100),(36,82),(37,182),(38,284),(39,274),(40,179);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (41,263),(42,316),(43,56),(44,265),(45,278),(46,35),(47,328),(48,254),(49,286),(50,65);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (51,118),(52,271),(53,165),(54,78),(55,209),(56,51),(57,5),(58,262),(59,116),(60,287);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (61,68),(62,144),(63,92),(64,160),(65,117),(66,228),(67,25),(68,26),(69,32),(70,275);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (71,272),(72,181),(73,333),(74,212),(75,225),(76,168),(77,335),(78,225),(79,4),(80,304);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (81,23),(82,301),(83,272),(84,107),(85,292),(86,6),(87,225),(88,116),(89,72),(90,291);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (91,31),(92,215),(93,41),(94,167),(95,156),(96,322),(97,57),(98,253),(99,301),(100,313);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (1,144),(2,38),(3,197),(4,28),(5,117),(6,305),(7,212),(8,333),(9,218),(10,11);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (11,145),(12,139),(13,78),(14,165),(15,66),(16,223),(17,183),(18,252),(19,298),(20,236);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (21,37),(22,22),(23,163),(24,212),(25,237),(26,10),(27,73),(28,113),(29,145),(30,206);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (31,141),(32,160),(33,54),(34,222),(35,54),(36,6),(37,177),(38,246),(39,275),(40,233);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (41,309),(42,234),(43,286),(44,149),(45,338),(46,200),(47,38),(48,249),(49,271),(50,176);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (51,167),(52,114),(53,2),(54,151),(55,300),(56,85),(57,269),(58,144),(59,215),(60,41);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (61,103),(62,118),(63,88),(64,54),(65,262),(66,209),(67,275),(68,241),(69,148),(70,170);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (71,263),(72,109),(73,279),(74,53),(75,321),(76,308),(77,17),(78,86),(79,340),(80,165);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (81,108),(82,138),(83,156),(84,134),(85,252),(86,249),(87,140),(88,259),(89,230),(90,86);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (91,278),(92,37),(93,108),(94,165),(95,160),(96,318),(97,188),(98,322),(99,103),(100,293);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (1,244),(2,283),(3,101),(4,40),(5,89),(6,254),(7,76),(8,291),(9,68),(10,161);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (11,118),(12,77),(13,243),(14,5),(15,23),(16,12),(17,132),(18,104),(19,221),(20,332);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (21,300),(22,139),(23,115),(24,247),(25,157),(26,104),(27,306),(28,84),(29,251),(30,304);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (31,294),(32,44),(33,114),(34,63),(35,286),(36,60),(37,73),(38,84),(39,166),(40,109);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (41,253),(42,210),(43,22),(44,238),(45,297),(46,259),(47,31),(48,105),(49,327),(50,114);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (51,65),(52,28),(53,159),(54,185),(55,258),(56,185),(57,167),(58,246),(59,325),(60,104);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (61,252),(62,50),(63,105),(64,223),(65,248),(66,60),(67,250),(68,341),(69,238),(70,207);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (71,335),(72,138),(73,141),(74,263),(75,85),(76,323),(77,298),(78,97),(79,87),(80,236);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (81,236),(82,147),(83,146),(84,72),(85,255),(86,134),(87,273),(88,158),(89,185),(90,258);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (91,5),(92,337),(93,138),(94,271),(95,183),(96,35),(97,271),(98,277),(99,10),(100,205);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (100,306),(101,276),(102,220),(103,32),(104,100),(105,179),(106,163),(107,251),(108,166),(109,246);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (110,241),(111,103),(112,333),(113,84),(114,89),(115,90),(116,85),(117,326),(118,156),(119,132);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (120,173),(121,105),(122,121),(123,32),(124,54),(125,196),(126,59),(127,111),(128,152),(129,6);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (130,339),(131,328),(132,82),(133,273),(134,216),(135,124),(136,297),(137,274),(138,216),(139,227);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (140,194),(141,262),(142,164),(143,91),(144,238),(145,112),(146,150),(147,309),(148,336),(149,95);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (150,192),(151,197),(152,110),(153,286),(154,209),(155,305),(156,145),(157,312),(158,52),(159,184);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (160,148),(161,147),(162,133),(163,12),(164,264),(165,148),(166,140),(167,164),(168,186),(169,271);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (170,304),(171,44),(172,17),(173,249),(174,116),(175,95),(176,134),(177,16),(178,221),(179,312);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (180,79),(181,186),(182,233),(183,267),(184,225),(185,184),(186,234),(187,193),(188,268),(189,337);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (190,338),(191,338),(192,26),(193,126),(194,15),(195,100),(196,66),(197,37),(198,168),(199,57);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (100,257),(101,149),(102,107),(103,28),(104,131),(105,142),(106,39),(107,36),(108,246),(109,89);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (110,244),(111,209),(112,151),(113,171),(114,159),(115,123),(116,115),(117,121),(118,105),(119,86);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (120,27),(121,95),(122,12),(123,118),(124,99),(125,182),(126,113),(127,84),(128,130),(129,325);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (130,98),(131,95),(132,288),(133,23),(134,312),(135,143),(136,43),(137,217),(138,314),(139,75);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (140,179),(141,224),(142,298),(143,55),(144,246),(145,288),(146,321),(147,296),(148,18),(149,331);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (150,83),(151,73),(152,185),(153,313),(154,50),(155,135),(156,280),(157,34),(158,317),(159,113);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (160,66),(161,63),(162,157),(163,146),(164,112),(165,79),(166,234),(167,177),(168,279),(169,55);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (170,330),(171,204),(172,95),(173,211),(174,157),(175,147),(176,114),(177,301),(178,316),(179,114);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (180,170),(181,230),(182,71),(183,193),(184,224),(185,214),(186,134),(187,229),(188,169),(189,314);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (190,283),(191,301),(192,48),(193,153),(194,142),(195,167),(196,140),(197,57),(198,26),(199,249);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (100,52),(101,311),(102,121),(103,72),(104,74),(105,24),(106,222),(107,105),(108,195),(109,325);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (110,103),(111,94),(112,69),(113,51),(114,90),(115,11),(116,47),(117,289),(118,177),(119,174);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (120,120),(121,156),(122,303),(123,163),(124,244),(125,91),(126,52),(127,285),(128,36),(129,186);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (130,139),(131,128),(132,162),(133,26),(134,245),(135,124),(136,223),(137,139),(138,220),(139,316);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (140,17),(141,160),(142,77),(143,307),(144,101),(145,308),(146,298),(147,4),(148,20),(149,262);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (150,66),(151,287),(152,338),(153,296),(154,313),(155,142),(156,71),(157,183),(158,333),(159,165);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (160,43),(161,73),(162,320),(163,249),(164,261),(165,37),(166,264),(167,248),(168,294),(169,259);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (170,88),(171,169),(172,316),(173,151),(174,308),(175,178),(176,243),(177,67),(178,296),(179,136);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (180,118),(181,17),(182,154),(183,250),(184,234),(185,86),(186,328),(187,3),(188,291),(189,172);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (190,230),(191,288),(192,61),(193,136),(194,48),(195,337),(196,259),(197,331),(198,8),(199,1);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (242,194),(224,297),(210,45),(237,68),(202,134),(234,125),(234,340),(208,296),(205,74),(244,46);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (217,305),(203,81),(202,313),(247,103),(203,313),(202,259),(244,331),(213,143),(241,178),(250,39);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (248,63),(231,165),(238,199),(221,233),(231,117),(226,315),(207,223),(201,122),(238,192),(220,51);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (234,236),(215,315),(227,264),(254,74),(238,228),(226,337),(234,315),(208,319),(231,1),(225,164);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (233,223),(254,256),(225,79),(254,327),(241,251),(223,225),(218,124),(232,25),(226,76),(205,319);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (235,100),(235,212),(225,174),(231,22),(205,273),(222,38),(246,75),(216,232),(221,332),(234,20);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (246,34),(244,204),(250,194),(217,259),(231,154),(227,22),(201,105),(230,113),(238,63),(212,164);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (226,32),(204,78),(248,182),(206,196),(248,153),(242,323),(217,188),(233,154),(202,33),(224,252);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (212,151),(203,251),(227,103),(254,19),(219,66),(237,117),(247,257),(241,216),(221,215),(231,262);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (208,127),(220,201),(216,317),(233,93),(229,74),(213,336),(219,14),(235,51),(204,213),(209,27);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (248,286),(230,92),(217,241),(252,27),(238,327),(203,284),(227,76),(212,143),(230,198),(205,300);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (217,219),(244,167),(222,74),(254,206),(222,187),(207,115),(217,57),(229,264),(210,102),(204,198);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (219,70),(224,161),(231,58),(240,199),(227,296),(219,169),(215,159),(218,78),(230,263),(206,218);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (242,127),(251,137),(248,163),(203,329),(239,193),(201,13),(229,209),(245,164),(242,57),(226,327);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (245,190),(204,243),(242,46),(250,183),(225,308),(224,3),(215,335),(246,207),(215,293),(237,188);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (217,125),(207,111),(240,218),(246,104),(243,72),(226,131),(236,276),(253,227),(232,295),(235,218);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (225,213),(231,110),(239,276),(205,212),(208,184),(213,230),(247,78),(208,176),(250,116),(224,262);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (248,104),(241,297),(244,274),(240,121),(244,190),(201,226),(218,185),(249,229),(251,128),(226,125);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (254,184),(254,260),(214,210),(233,23),(248,104),(231,219),(225,65),(211,41),(227,163),(204,266);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (243,146),(221,29),(236,275),(217,280),(243,194),(213,119),(214,309),(224,118),(235,101),(228,38);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (216,240),(211,72),(235,77),(231,188),(204,87),(239,128),(207,300),(246,69),(231,66),(247,340);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (231,117),(203,77),(214,106),(222,328),(250,264),(241,331),(239,211),(245,182),(241,248),(240,264);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (201,119),(246,155),(206,96),(232,39),(254,186),(238,3),(208,34),(227,91),(233,20),(232,221);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (245,279),(212,3),(222,205),(215,179),(228,235),(207,245),(247,287),(229,155),(219,26),(212,331);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (218,305),(204,219),(249,72),(210,235),(229,11),(236,126),(218,56),(245,234),(209,71),(208,219);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (203,245),(245,182),(243,297),(213,247),(221,132),(226,185),(224,342),(248,295),(226,194),(244,188);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (224,111),(206,301),(232,280),(232,101),(253,69),(238,122),(247,181),(249,306),(221,326),(234,58);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (205,13),(208,88),(215,298),(210,166),(214,15),(248,251),(211,328),(250,84),(229,329),(216,339);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (206,62),(206,86),(235,307),(239,275),(253,154),(232,247),(247,302),(222,119),(243,323),(241,189);
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES (219,66),(251,41),(205,9),(251,201),(218,4),(239,317),(234,243),(215,197),(220,315),(225,253);
-- table diseases_symptoms counts 900 units

-- bind tables diseases and drugs to get ManyToOne table diseases_drugs
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,11,77,"egestas. Aliquam nec",22),(20,12,3,"Duis dignissim",14),(20,13,52,"ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in",14),(20,14,31,"orci luctus et ultrices",11),(20,15,94,"Duis volutpat nunc sit",28),(20,16,127,"ridiculus mus. Aenean",31),(20,17,101,"in faucibus orci luctus et ultrices posuere",36),(20,18,174,"feugiat non, lobortis quis, pede. Suspendisse dui.",22),(20,19,187,"rutrum urna, nec luctus felis purus ac tellus. Suspendisse",18),(20,20,148,"facilisis facilisis, magna tellus faucibus",21);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,1,29,"Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.",45),(20,2,50,"sapien. Cras dolor dolor, tempus",29),(20,3,227,"id",10),(20,4,64,"lectus. Nullam suscipit, est ac facilisis facilisis, magna",40),(20,5,108,"Nam ligula elit,",45),(20,6,76,"ante blandit viverra. Donec tempus,",11),(20,7,239,"pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac",35),(20,8,90,"semper, dui lectus rutrum urna, nec luctus felis purus",45),(20,9,230,"sodales at, velit. Pellentesque ultricies dignissim",41),(20,10,81,"orci quis",48);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,21,55,"convallis",25),(20,22,231,"pulvinar arcu et pede. Nunc sed orci",33),(20,23,217,"dis parturient montes,",27),(20,24,70,"amet, dapibus id, blandit at,",14),(20,25,196,"Nunc quis arcu vel quam dignissim pharetra.",40),(20,26,106,"condimentum eget,",24),(20,27,5,"Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean",27),(20,28,29,"Cras pellentesque. Sed",49),(20,29,115,"aliquet, metus urna convallis erat, eget tincidunt dui augue eu",40),(20,30,189,"Phasellus libero mauris,",29);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,31,127,"malesuada ut, sem. Nulla interdum. Curabitur dictum.",49),(20,32,47,"dui. Fusce diam nunc, ullamcorper eu,",17),(20,33,165,"senectus et netus et malesuada fames ac turpis egestas.",28),(20,34,164,"eu,",25),(20,35,131,"eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam",32),(20,36,120,"primis in faucibus orci luctus et ultrices",12),(20,37,70,"Aliquam nec enim. Nunc ut erat. Sed nunc est,",46),(20,38,170,"primis in faucibus orci luctus et ultrices posuere cubilia Curae;",41),(20,39,230,"luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi",22),(20,40,254,"amet ornare lectus justo eu arcu.",23);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,41,156,"quis arcu vel quam dignissim pharetra. Nam ac nulla.",7),(20,42,238,"dictum placerat, augue. Sed molestie. Sed id risus quis diam",29),(20,43,109,"eu",37),(20,44,134,"ipsum cursus",30),(20,45,134,"a mi fringilla",20),(20,46,254,"magna.",41),(20,47,181,"at pede. Cras vulputate velit eu sem. Pellentesque",33),(20,48,14,"elit, pellentesque a, facilisis non, bibendum sed, est.",15),(20,49,101,"in sodales elit erat vitae risus.",48),(20,50,135,"ultrices. Vivamus rhoncus. Donec est. Nunc",38);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,51,213,"arcu. Nunc mauris. Morbi non sapien",12),(20,52,181,"venenatis lacus. Etiam bibendum",40),(20,53,90,"velit eget laoreet posuere, enim nisl elementum",21),(20,54,242,"non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc",26),(20,55,99,"euismod",22),(20,56,225,"Sed auctor odio a purus. Duis elementum, dui quis",12),(20,57,107,"id",16),(20,58,48,"fermentum fermentum",3),(20,59,180,"metus eu",9),(20,60,147,"nec tempus mauris erat eget ipsum. Suspendisse",16);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,61,237,"Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus",43),(20,62,259,"nec mauris blandit mattis. Cras",36),(20,63,59,"risus. In mi pede,",4),(20,64,44,"Sed et libero. Proin mi.",5),(20,65,226,"penatibus et magnis dis parturient montes, nascetur",44),(20,66,241,"vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem",46),(20,67,16,"In faucibus. Morbi vehicula. Pellentesque tincidunt",19),(20,68,138,"a tortor. Nunc commodo auctor",24),(20,69,216,"Nam tempor diam dictum sapien. Aenean massa.",29),(20,70,242,"Mauris eu turpis. Nulla aliquet.",17);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,71,89,"adipiscing ligula. Aenean gravida",37),(20,72,120,"erat nonummy ultricies ornare, elit elit fermentum",35),(20,73,147,"vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus,",49),(20,74,166,"orci luctus",1),(20,75,16,"at, nisi. Cum sociis natoque penatibus et magnis dis",24),(20,76,122,"netus et malesuada fames ac turpis",20),(20,77,184,"semper, dui lectus rutrum urna, nec luctus felis purus",30),(20,78,147,"libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit",33),(20,79,158,"Mauris magna. Duis dignissim",11),(20,80,207,"aliquet magna a neque. Nullam ut nisi a",40);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,81,85,"odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.",7),(20,82,101,"vitae semper egestas, urna",49),(20,83,17,"lacus. Cras interdum. Nunc sollicitudin commodo",7),(20,84,70,"commodo at, libero. Morbi accumsan laoreet ipsum.",38),(20,85,212,"Donec tincidunt. Donec vitae erat vel",2),(20,86,93,"sapien.",12),(20,87,200,"non nisi. Aenean eget",6),(20,88,225,"non leo. Vivamus nibh dolor, nonummy",25),(20,89,161,"luctus sit amet, faucibus ut, nulla. Cras eu",25),(20,90,1,"Duis dignissim tempor arcu.",48);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (20,91,36,"Nulla semper tellus id nunc",15),(20,92,36,"est arcu ac orci. Ut",33),(20,93,84,"lobortis risus. In mi pede, nonummy ut, molestie in,",24),(20,94,96,"pede sagittis augue, eu tempor erat neque non quam.",40),(20,95,245,"augue, eu tempor erat neque non",16),(20,96,64,"at, nisi.",47),(20,97,9,"dapibus rutrum, justo. Praesent",24),(20,98,129,"mi",17),(20,99,257,"erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus",5),(20,100,43,"ac metus vitae",29);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,1,211,"at fringilla purus mauris",13),(10,2,230,"malesuada. Integer id",35),(10,3,196,"nisl sem, consequat nec, mollis vitae,",41),(10,4,188,"dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus.",3),(10,5,234,"diam. Sed diam lorem,",1),(10,6,36,"eu, ligula. Aenean euismod mauris eu",41),(10,7,31,"a tortor. Nunc commodo auctor velit. Aliquam nisl.",14),(10,8,252,"et magnis dis parturient",8),(10,9,177,"Nunc quis arcu vel",7),(10,10,173,"porttitor interdum.",28);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,11,163,"mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras",15),(10,12,98,"non magna. Nam ligula elit, pretium",36),(10,13,51,"quam, elementum at, egestas",4),(10,14,197,"sem eget",31),(10,15,237,"auctor ullamcorper, nisl",29),(10,16,256,"feugiat nec, diam. Duis mi enim, condimentum eget,",28),(10,17,231,"Nullam",46),(10,18,136,"nec, diam. Duis mi enim, condimentum eget, volutpat ornare,",31),(10,19,18,"penatibus et magnis dis parturient montes, nascetur ridiculus mus.",38),(10,20,88,"nonummy. Fusce fermentum fermentum",2);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,21,245,"eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum",20),(10,22,20,"sagittis lobortis mauris. Suspendisse aliquet molestie",2),(10,23,114,"faucibus ut,",17),(10,24,86,"libero et",25),(10,25,218,"sed tortor. Integer aliquam adipiscing lacus. Ut nec",31),(10,26,46,"ornare, libero at auctor ullamcorper, nisl arcu",49),(10,27,222,"eget odio. Aliquam vulputate",33),(10,28,3,"ut ipsum ac",22),(10,29,201,"neque",8),(10,30,95,"at sem molestie sodales. Mauris blandit enim consequat purus.",9);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,31,151,"augue malesuada malesuada. Integer id magna",28),(10,32,111,"lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras",6),(10,33,109,"ac orci. Ut semper pretium neque. Morbi quis",25),(10,34,90,"mi lorem, vehicula et, rutrum",44),(10,35,165,"iaculis, lacus pede sagittis augue, eu tempor",22),(10,36,158,"ultrices iaculis",31),(10,37,115,"et netus et malesuada fames ac turpis egestas. Fusce",48),(10,38,259,"mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy",48),(10,39,180,"nunc sit amet metus. Aliquam erat volutpat.",49),(10,40,23,"dui augue eu",15);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,41,222,"lectus pede, ultrices a, auctor",23),(10,42,162,"imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,",23),(10,43,50,"Donec nibh. Quisque nonummy",29),(10,44,182,"Pellentesque",6),(10,45,12,"et magnis",26),(10,46,234,"ridiculus mus.",22),(10,47,53,"Nullam scelerisque neque sed sem egestas blandit. Nam",43),(10,48,109,"vel",38),(10,49,113,"sem semper erat,",27),(10,50,212,"porttitor interdum. Sed auctor odio a purus. Duis elementum, dui",30);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,51,115,"Quisque",24),(10,52,172,"nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus",21),(10,53,226,"quam",28),(10,54,253,"semper cursus.",3),(10,55,117,"lacinia orci, consectetuer euismod",34),(10,56,40,"interdum ligula",39),(10,57,48,"Sed auctor odio a purus. Duis elementum, dui quis",7),(10,58,191,"fringilla. Donec feugiat metus sit amet ante. Vivamus non",47),(10,59,151,"Suspendisse commodo tincidunt",11),(10,60,184,"morbi tristique senectus et netus et malesuada fames ac",13);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,61,69,"sit amet orci.",21),(10,62,102,"nulla. Integer vulputate, risus a ultricies",1),(10,63,142,"Cras vehicula aliquet libero. Integer in magna.",21),(10,64,76,"mollis. Duis sit amet diam eu dolor egestas",32),(10,65,16,"vestibulum. Mauris magna. Duis dignissim tempor",25),(10,66,232,"augue scelerisque mollis. Phasellus",4),(10,67,39,"consectetuer euismod est arcu ac orci. Ut semper pretium neque.",39),(10,68,149,"magna. Nam ligula elit, pretium",34),(10,69,236,"nunc sed libero. Proin sed turpis nec mauris",32),(10,70,44,"tellus eu",44);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,71,109,"et magnis dis parturient montes, nascetur ridiculus mus. Donec",15),(10,72,208,"id, erat. Etiam vestibulum",25),(10,73,64,"magnis dis parturient montes, nascetur ridiculus mus.",29),(10,74,253,"venenatis a, magna. Lorem ipsum dolor sit amet,",32),(10,75,100,"a, magna.",6),(10,76,99,"consectetuer adipiscing elit. Aliquam",20),(10,77,176,"et ultrices posuere cubilia Curae; Donec tincidunt.",7),(10,78,52,"eget metus. In nec orci. Donec nibh. Quisque",8),(10,79,188,"risus quis diam luctus",45),(10,80,162,"mattis velit justo",5);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,81,176,"odio. Etiam ligula tortor, dictum",29),(10,82,257,"magna nec quam.",33),(10,83,224,"vestibulum. Mauris magna. Duis dignissim tempor",38),(10,84,145,"mauris blandit mattis. Cras eget nisi",28),(10,85,180,"massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet",11),(10,86,218,"eu augue porttitor interdum. Sed auctor",21),(10,87,179,"elementum, lorem ut aliquam",31),(10,88,102,"interdum enim non nisi. Aenean eget metus. In nec orci.",25),(10,89,179,"sed",46),(10,90,89,"id enim. Curabitur massa.",20);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,91,48,"ante lectus convallis est, vitae sodales nisi magna sed dui.",26),(10,92,222,"dictum mi,",6),(10,93,72,"enim, gravida sit amet, dapibus id, blandit at,",11),(10,94,169,"Morbi",7),(10,95,109,"ipsum. Suspendisse sagittis. Nullam vitae",46),(10,96,255,"mattis velit",38),(10,97,112,"Aliquam tincidunt, nunc ac mattis ornare, lectus ante",29),(10,98,118,"libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis",40),(10,99,93,"ipsum primis in faucibus orci luctus et",29),(10,100,9,"mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus",9);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,1,238,"lacus vestibulum lorem, sit amet ultricies sem magna nec quam.",42),(10,2,227,"nisi.",2),(10,3,77,"In lorem. Donec elementum, lorem ut aliquam",27),(10,4,108,"rutrum lorem ac risus. Morbi metus. Vivamus euismod urna.",44),(10,5,196,"euismod in, dolor. Fusce feugiat. Lorem ipsum",19),(10,6,37,"Ut tincidunt",15),(10,7,158,"lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis",37),(10,8,230,"neque non quam.",21),(10,9,47,"sodales. Mauris blandit enim consequat",29),(10,10,33,"non leo. Vivamus nibh dolor,",33);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,11,170,"mauris blandit mattis.",30),(10,12,154,"natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",46),(10,13,243,"Sed eu nibh vulputate mauris sagittis placerat. Cras dictum",23),(10,14,250,"nisi. Aenean eget metus.",14),(10,15,160,"lacus. Quisque imperdiet, erat",36),(10,16,251,"netus et malesuada fames ac turpis egestas. Fusce aliquet",31),(10,17,145,"orci luctus et ultrices posuere cubilia Curae; Phasellus",31),(10,18,55,"semper auctor. Mauris vel turpis. Aliquam",7),(10,19,131,"Aliquam ornare, libero at",35),(10,20,31,"amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer",25);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,21,189,"imperdiet nec, leo. Morbi",12),(10,22,223,"arcu. Sed eu nibh vulputate",48),(10,23,61,"Phasellus ornare. Fusce mollis. Duis sit amet diam eu",16),(10,24,211,"varius. Nam porttitor scelerisque neque. Nullam nisl.",37),(10,25,250,"ac turpis egestas. Fusce aliquet",7),(10,26,243,"aliquam,",22),(10,27,76,"Curabitur vel lectus.",45),(10,28,93,"vel, faucibus",38),(10,29,203,"urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum",12),(10,30,33,"at pretium aliquet, metus urna convallis erat, eget",21);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,31,35,"amet nulla. Donec non justo. Proin non massa non",16),(10,32,49,"Aliquam gravida mauris ut mi.",6),(10,33,225,"lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam",37),(10,34,28,"magna sed dui. Fusce aliquam, enim nec",44),(10,35,35,"nonummy",47),(10,36,217,"consequat purus. Maecenas libero est,",45),(10,37,188,"et netus et",38),(10,38,42,"nunc. Quisque ornare tortor at risus. Nunc",43),(10,39,179,"pharetra. Quisque ac libero nec",39),(10,40,131,"Phasellus dapibus",14);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,41,122,"Suspendisse ac metus vitae velit egestas",43),(10,42,79,"elit sed",3),(10,43,33,"Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec",5),(10,44,16,"tincidunt dui augue eu tellus.",7),(10,45,28,"gravida molestie arcu.",5),(10,46,101,"malesuada fames",34),(10,47,198,"tempus non,",43),(10,48,220,"in, dolor. Fusce feugiat. Lorem ipsum dolor sit",37),(10,49,260,"euismod",9),(10,50,58,"Sed eu nibh vulputate mauris sagittis placerat. Cras",10);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,51,164,"elementum purus, accumsan interdum",40),(10,52,206,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus",12),(10,53,253,"sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh",37),(10,54,252,"et malesuada fames ac turpis egestas. Aliquam",43),(10,55,30,"imperdiet nec, leo. Morbi neque tellus, imperdiet",27),(10,56,102,"consequat, lectus sit",47),(10,57,65,"hendrerit a, arcu.",40),(10,58,244,"libero. Proin mi. Aliquam",8),(10,59,136,"egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam",17),(10,60,166,"luctus et ultrices posuere cubilia Curae; Phasellus ornare.",31);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,61,138,"Cum sociis natoque penatibus et",32),(10,62,159,"diam lorem, auctor quis, tristique ac, eleifend",39),(10,63,137,"est ac facilisis facilisis,",5),(10,64,151,"Duis sit amet",9),(10,65,260,"rutrum urna,",18),(10,66,94,"Suspendisse",20),(10,67,92,"blandit.",12),(10,68,186,"tellus",24),(10,69,39,"at lacus. Quisque purus sapien, gravida non, sollicitudin",41),(10,70,231,"posuere, enim nisl",25);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,71,42,"vel, faucibus id, libero. Donec consectetuer",3),(10,72,187,"purus gravida",10),(10,73,74,"enim. Mauris quis turpis vitae purus gravida",32),(10,74,72,"amet ultricies sem magna nec quam. Curabitur vel lectus.",25),(10,75,253,"sapien. Nunc",25),(10,76,7,"tempus scelerisque, lorem ipsum sodales purus, in",1),(10,77,107,"lectus sit amet luctus",45),(10,78,113,"sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum,",36),(10,79,143,"dapibus gravida. Aliquam tincidunt, nunc ac mattis",38),(10,80,47,"sodales nisi magna sed",27);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,81,137,"nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis",33),(10,82,163,"eu, ultrices",45),(10,83,141,"sem magna nec quam. Curabitur vel lectus. Cum sociis",41),(10,84,176,"mollis. Phasellus libero mauris, aliquam",25),(10,85,47,"Morbi sit",11),(10,86,175,"torquent per conubia nostra, per inceptos hymenaeos.",43),(10,87,184,"Vestibulum ante ipsum primis in faucibus orci luctus",31),(10,88,241,"enim. Nunc ut erat. Sed nunc est, mollis non,",42),(10,89,85,"orci quis lectus. Nullam suscipit, est ac",25),(10,90,206,"euismod est arcu",25);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,91,212,"enim consequat purus.",11),(10,92,75,"Aliquam adipiscing",34),(10,93,212,"non quam. Pellentesque habitant morbi tristique senectus",36),(10,94,230,"eget lacus. Mauris non dui nec urna",7),(10,95,170,"quam a felis ullamcorper viverra. Maecenas",40),(10,96,103,"dolor elit, pellentesque",47),(10,97,238,"ac, fermentum vel, mauris. Integer sem",47),(10,98,25,"cursus et,",12),(10,99,166,"In mi pede,",25),(10,100,189,"orci. Ut semper pretium",22);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,100,166,"eu odio tristique pharetra.",24),(10,101,98,"at, egestas a, scelerisque sed,",31),(10,102,230,"In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas",38),(10,103,245,"Mauris molestie pharetra nibh.",31),(10,104,258,"lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras",28),(10,105,229,"cursus. Nunc mauris elit, dictum eu, eleifend nec,",40),(10,106,238,"Donec tincidunt. Donec vitae erat vel pede blandit",38),(10,107,83,"viverra. Donec tempus, lorem",14),(10,108,222,"cursus et, eros. Proin ultrices. Duis volutpat",18),(10,109,181,"et netus",9);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,110,70,"amet, consectetuer adipiscing elit. Aliquam auctor, velit",7),(10,111,2,"at pede. Cras vulputate velit eu sem. Pellentesque ut",15),(10,112,10,"Quisque",41),(10,113,27,"eget laoreet posuere, enim nisl elementum",31),(10,114,137,"accumsan convallis, ante lectus convallis est,",5),(10,115,233,"enim, gravida sit amet, dapibus id,",37),(10,116,17,"purus gravida sagittis. Duis",31),(10,117,228,"rutrum urna, nec luctus felis purus ac",10),(10,118,228,"mi fringilla mi lacinia mattis.",18),(10,119,45,"Donec at arcu. Vestibulum ante ipsum primis in faucibus orci",6);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,120,100,"mollis. Phasellus libero mauris, aliquam",38),(10,121,217,"ultrices. Duis volutpat",1),(10,122,221,"quis turpis vitae",14),(10,123,211,"et magnis dis",1),(10,124,138,"egestas a, scelerisque sed, sapien.",16),(10,125,143,"in aliquet lobortis, nisi",11),(10,126,242,"ac arcu. Nunc mauris. Morbi non sapien",14),(10,127,67,"dolor elit, pellentesque a, facilisis non, bibendum sed, est.",16),(10,128,23,"eget nisi",17),(10,129,188,"mollis lectus pede et risus. Quisque",37);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,130,144,"at, libero. Morbi accumsan",12),(10,131,7,"enim diam vel arcu. Curabitur ut",10),(10,132,76,"dis parturient montes, nascetur ridiculus mus. Aenean eget magna.",9),(10,133,227,"odio",9),(10,134,248,"tincidunt vehicula risus. Nulla eget metus eu erat semper",3),(10,135,99,"orci tincidunt adipiscing.",9),(10,136,100,"interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt",41),(10,137,86,"convallis erat, eget tincidunt dui augue",24),(10,138,105,"neque non quam. Pellentesque habitant morbi tristique",15),(10,139,220,"mollis dui, in",27);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,140,260,"venenatis vel, faucibus id, libero. Donec consectetuer",41),(10,141,222,"sodales at,",29),(10,142,124,"parturient montes, nascetur ridiculus mus. Proin",15),(10,143,44,"lorem vitae odio sagittis",27),(10,144,146,"mi pede, nonummy ut, molestie in, tempus eu, ligula.",27),(10,145,39,"ultrices. Vivamus rhoncus. Donec est.",27),(10,146,58,"tincidunt tempus",45),(10,147,207,"ac mattis ornare, lectus ante dictum mi, ac mattis",17),(10,148,85,"congue a, aliquet vel, vulputate eu, odio.",41),(10,149,146,"semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam",37);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (10,150,87,"Nunc ut",14),(10,151,53,"lorem, sit amet ultricies sem magna nec quam.",28),(10,152,75,"Vivamus euismod urna. Nullam lobortis quam a",20),(10,153,208,"In condimentum. Donec",17),(10,154,235,"imperdiet non, vestibulum nec, euismod in, dolor. Fusce",35),(10,155,110,"Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis",6),(10,156,21,"Duis",37),(10,157,38,"eleifend vitae,",42),(10,158,97,"quam a felis ullamcorper viverra. Maecenas iaculis",46),(10,159,170,"tristique pharetra. Quisque ac libero nec ligula consectetuer",4);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,160,213,"dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare",33),(30,161,53,"Nullam feugiat placerat velit. Quisque varius. Nam",17),(30,162,21,"posuere cubilia Curae; Donec tincidunt. Donec vitae",38),(30,163,249,"nibh enim, gravida sit amet,",4),(30,164,55,"mauris blandit mattis. Cras eget nisi",31),(30,165,248,"commodo auctor velit. Aliquam nisl.",19),(30,166,214,"tempor lorem, eget mollis lectus pede",25),(30,167,258,"ultricies ligula. Nullam",42),(30,168,192,"turpis egestas. Fusce aliquet",9),(30,169,73,"nonummy",1);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,170,53,"consectetuer",36),(30,171,154,"lectus",37),(30,172,192,"laoreet,",2),(30,173,92,"Nullam nisl.",8),(30,174,90,"quis urna. Nunc",17),(30,175,59,"Nullam enim. Sed nulla ante,",12),(30,176,64,"mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla,",13),(30,177,2,"mauris erat eget",11),(30,178,208,"Cras eu tellus eu augue porttitor",33),(30,179,173,"aliquam eu, accumsan sed, facilisis",42);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,180,103,"Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh",8),(30,181,151,"nunc. Quisque ornare tortor",29),(30,182,240,"enim. Sed nulla ante, iaculis nec, eleifend non, dapibus",24),(30,183,131,"dolor, nonummy ac, feugiat non,",44),(30,184,236,"a, dui. Cras pellentesque. Sed dictum. Proin",9),(30,185,227,"Nunc mauris elit, dictum eu, eleifend nec, malesuada",17),(30,186,48,"vehicula risus. Nulla",8),(30,187,114,"nec, eleifend non, dapibus rutrum,",30),(30,188,121,"nisi nibh lacinia orci, consectetuer euismod est arcu ac orci.",25),(30,189,60,"Mauris nulla. Integer",33);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,190,15,"metus urna convallis",42),(30,191,99,"Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet",27),(30,192,166,"sit amet, faucibus ut, nulla.",3),(30,193,75,"urna convallis erat, eget",21),(30,194,75,"velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices.",18),(30,195,4,"velit eget laoreet posuere, enim",5),(30,196,193,"ultrices iaculis",24),(30,197,70,"dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus",38),(30,198,189,"hendrerit id, ante. Nunc mauris sapien, cursus",7),(30,199,133,"varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla",5);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,100,103,"sed, hendrerit a, arcu. Sed et libero. Proin",15),(30,101,180,"sagittis placerat.",25),(30,102,174,"odio tristique pharetra. Quisque ac libero nec ligula",47),(30,103,246,"nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat",45),(30,104,189,"malesuada vel, convallis in, cursus",1),(30,105,72,"felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.",23),(30,106,234,"nunc ac mattis",40),(30,107,162,"dui lectus rutrum urna, nec luctus felis purus ac tellus.",20),(30,108,121,"vulputate dui, nec tempus mauris erat",15),(30,109,67,"nunc nulla vulputate dui,",2);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,110,245,"ante ipsum primis in faucibus",7),(30,111,260,"sed, est. Nunc laoreet lectus quis massa. Mauris",11),(30,112,44,"Donec elementum, lorem ut aliquam iaculis, lacus pede",5),(30,113,33,"ipsum sodales purus, in molestie tortor nibh sit",39),(30,114,250,"Fusce fermentum fermentum arcu. Vestibulum ante",39),(30,115,57,"magna. Praesent interdum",21),(30,116,168,"ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.",25),(30,117,242,"metus facilisis lorem tristique",19),(30,118,51,"faucibus ut, nulla. Cras eu",16),(30,119,244,"a,",25);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,120,194,"fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam",27),(30,121,200,"quam a felis ullamcorper viverra. Maecenas",34),(30,122,179,"erat",49),(30,123,139,"cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit",20),(30,124,76,"dui, nec tempus mauris erat",21),(30,125,67,"arcu. Vestibulum ante",9),(30,126,45,"blandit. Nam nulla",29),(30,127,163,"mauris, rhoncus id, mollis nec, cursus a,",12),(30,128,99,"iaculis, lacus pede sagittis augue, eu tempor erat neque non",18),(30,129,177,"suscipit, est ac facilisis facilisis, magna",48);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,130,6,"amet, risus. Donec nibh enim, gravida",5),(30,131,207,"mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.",2),(30,132,195,"ut quam vel sapien imperdiet ornare. In",27),(30,133,171,"pede",12),(30,134,167,"risus. Nulla eget metus eu erat",42),(30,135,194,"tincidunt pede ac urna.",26),(30,136,172,"mi lorem, vehicula et, rutrum eu, ultrices",30),(30,137,178,"condimentum eget, volutpat ornare,",31),(30,138,107,"placerat",11),(30,139,37,"nec",30);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,140,90,"Cras pellentesque. Sed",21),(30,141,44,"justo eu arcu. Morbi sit amet massa. Quisque",8),(30,142,185,"quis lectus. Nullam suscipit, est ac facilisis facilisis,",26),(30,143,115,"vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse",25),(30,144,150,"sit amet risus. Donec egestas. Aliquam nec enim. Nunc",37),(30,145,104,"egestas nunc sed libero. Proin sed turpis nec mauris",40),(30,146,120,"tempus eu, ligula. Aenean",5),(30,147,126,"Nulla facilisi. Sed neque. Sed eget",41),(30,148,104,"dignissim tempor",2),(30,149,36,"a mi fringilla mi lacinia mattis.",17);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,150,212,"Donec felis",44),(30,151,88,"ipsum non arcu. Vivamus",22),(30,152,3,"non nisi. Aenean eget metus. In nec orci.",18),(30,153,181,"Phasellus nulla.",2),(30,154,219,"penatibus et magnis",3),(30,155,259,"feugiat. Lorem ipsum dolor",36),(30,156,35,"nec metus facilisis lorem tristique aliquet. Phasellus",38),(30,157,223,"pellentesque eget, dictum placerat, augue.",8),(30,158,9,"mauris a nunc. In at pede. Cras vulputate velit eu",42),(30,159,222,"amet, risus.",20);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,160,3,"est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse",30),(30,161,234,"fringilla. Donec feugiat metus sit amet ante. Vivamus non",39),(30,162,231,"eu erat semper rutrum. Fusce dolor quam,",35),(30,163,50,"luctus",26),(30,164,140,"rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,",29),(30,165,139,"Quisque imperdiet, erat nonummy ultricies",19),(30,166,185,"massa. Suspendisse",20),(30,167,205,"tellus eu augue porttitor interdum.",47),(30,168,74,"Aliquam rutrum lorem",15),(30,169,242,"dolor, tempus non, lacinia",45);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,170,206,"felis. Donec tempor, est ac mattis",15),(30,171,227,"tincidunt congue turpis. In condimentum.",42),(30,172,106,"eu, euismod ac, fermentum",31),(30,173,182,"Nullam lobortis quam a felis ullamcorper viverra. Maecenas",17),(30,174,15,"placerat. Cras",16),(30,175,172,"mi lorem, vehicula et,",3),(30,176,3,"Donec porttitor tellus non",13),(30,177,88,"nostra, per inceptos hymenaeos. Mauris ut quam",37),(30,178,198,"lacinia mattis. Integer eu",35),(30,179,233,"dolor. Quisque tincidunt pede ac urna. Ut tincidunt",32);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,180,90,"dolor. Quisque tincidunt pede ac",6),(30,181,37,"malesuada",13),(30,182,99,"consectetuer, cursus et, magna. Praesent interdum",44),(30,183,155,"arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi.",32),(30,184,236,"a, facilisis",13),(30,185,239,"Etiam ligula",18),(30,186,158,"sollicitudin orci sem eget massa. Suspendisse eleifend.",36),(30,187,243,"dui. Fusce aliquam, enim nec tempus scelerisque, lorem",33),(30,188,47,"vitae aliquam eros turpis non enim. Mauris quis turpis vitae",32),(30,189,3,"risus.",12);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,190,85,"eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor.",34),(30,191,53,"sit amet, risus. Donec",35),(30,192,29,"lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit",34),(30,193,40,"magnis dis parturient",25),(30,194,101,"taciti sociosqu ad litora torquent per conubia nostra, per inceptos",16),(30,195,93,"vel, vulputate eu,",3),(30,196,246,"massa. Mauris vestibulum, neque sed dictum eleifend,",39),(30,197,44,"Nunc commodo auctor velit. Aliquam nisl.",15),(30,198,49,"dolor quam, elementum at, egestas",41),(30,199,23,"et, magna. Praesent interdum ligula eu enim.",11);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,100,97,"faucibus ut,",7),(30,101,76,"Donec egestas.",47),(30,102,9,"ut, pellentesque eget, dictum placerat, augue. Sed molestie.",30),(30,103,41,"amet ornare lectus justo eu",33),(30,104,91,"tortor. Nunc commodo auctor",11),(30,105,125,"eu, eleifend nec, malesuada ut, sem.",5),(30,106,156,"non nisi. Aenean eget metus. In nec orci.",26),(30,107,232,"egestas hendrerit neque. In ornare sagittis felis. Donec",13),(30,108,242,"In tincidunt congue",47),(30,109,155,"Maecenas mi felis, adipiscing fringilla, porttitor",32);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,110,161,"Curae; Donec tincidunt. Donec vitae",46),(30,111,251,"consectetuer ipsum nunc id enim.",26),(30,112,48,"sagittis",1),(30,113,212,"Aliquam nisl. Nulla eu neque",31),(30,114,172,"Proin mi. Aliquam gravida mauris ut",15),(30,115,184,"Proin non massa non",36),(30,116,146,"metus vitae velit egestas lacinia. Sed congue, elit",25),(30,117,106,"orci. Donec nibh. Quisque nonummy ipsum non arcu.",14),(30,118,78,"magna. Suspendisse",11),(30,119,28,"adipiscing elit. Etiam laoreet, libero et",34);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,120,26,"sit amet, dapibus id, blandit at, nisi. Cum sociis",23),(30,121,75,"dui. Fusce",12),(30,122,192,"Lorem ipsum dolor",14),(30,123,165,"vel arcu eu odio tristique pharetra. Quisque ac",47),(30,124,206,"turpis vitae purus gravida sagittis. Duis gravida. Praesent eu",12),(30,125,155,"libero est, congue a,",45),(30,126,32,"pharetra sed, hendrerit a, arcu.",38),(30,127,23,"ac turpis egestas. Fusce aliquet",30),(30,128,154,"tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim",25),(30,129,209,"arcu imperdiet ullamcorper. Duis at lacus. Quisque",2);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,130,178,"ullamcorper viverra. Maecenas iaculis",17),(30,131,191,"hymenaeos. Mauris ut quam vel sapien imperdiet",41),(30,132,211,"Quisque ac libero nec ligula",46),(30,133,140,"velit justo nec ante. Maecenas mi felis, adipiscing fringilla,",15),(30,134,222,"consectetuer mauris id sapien. Cras dolor",29),(30,135,105,"dictum mi,",44),(30,136,155,"sapien, cursus in, hendrerit consectetuer, cursus et,",20),(30,137,34,"feugiat non,",12),(30,138,197,"et malesuada fames ac turpis egestas.",48),(30,139,32,"convallis dolor. Quisque",21);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,140,61,"tellus faucibus leo, in lobortis tellus",12),(30,141,78,"neque. Nullam ut nisi a odio semper cursus. Integer",44),(30,142,92,"nibh. Aliquam ornare,",49),(30,143,48,"ante",34),(30,144,222,"sem elit, pharetra ut, pharetra sed, hendrerit",39),(30,145,193,"enim. Etiam imperdiet dictum magna. Ut",47),(30,146,51,"dignissim magna a tortor. Nunc commodo auctor velit. Aliquam",10),(30,147,223,"a neque. Nullam ut nisi a odio semper cursus. Integer",41),(30,148,98,"In condimentum. Donec at arcu. Vestibulum ante ipsum",45),(30,149,220,"lobortis, nisi nibh lacinia orci, consectetuer euismod",30);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,150,132,"Nunc ut erat. Sed nunc est,",12),(30,151,165,"augue, eu tempor",41),(30,152,89,"lobortis mauris.",5),(30,153,242,"tortor. Integer aliquam adipiscing lacus. Ut nec",28),(30,154,13,"sed leo. Cras vehicula",6),(30,155,202,"fermentum arcu.",31),(30,156,84,"dolor. Donec fringilla.",39),(30,157,10,"magna tellus faucibus",19),(30,158,130,"commodo",34),(30,159,21,"justo eu",15);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,160,145,"auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris",7),(30,161,98,"ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere",9),(30,162,166,"ornare lectus",34),(30,163,46,"neque",45),(30,164,149,"Praesent luctus. Curabitur egestas nunc sed libero. Proin sed",2),(30,165,31,"ornare tortor at risus. Nunc",35),(30,166,72,"quis, pede. Praesent eu",32),(30,167,40,"vestibulum. Mauris magna.",21),(30,168,178,"non ante bibendum ullamcorper. Duis cursus,",22),(30,169,3,"Nam interdum",12);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,170,84,"eu",35),(30,171,106,"magna. Nam ligula elit, pretium et,",31),(30,172,218,"neque. In ornare sagittis felis. Donec tempor,",35),(30,173,35,"elementum sem, vitae aliquam",5),(30,174,234,"commodo auctor velit. Aliquam nisl.",37),(30,175,33,"eu eros. Nam consequat dolor vitae dolor.",30),(30,176,168,"dictum ultricies ligula. Nullam enim. Sed",17),(30,177,49,"laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui",37),(30,178,234,"netus",33),(30,179,105,"Quisque",35);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,180,256,"in, cursus et, eros. Proin ultrices. Duis",10),(30,181,116,"at arcu. Vestibulum ante ipsum primis in faucibus orci",23),(30,182,61,"ipsum porta elit, a feugiat tellus lorem eu metus.",40),(30,183,127,"malesuada fames ac turpis egestas. Aliquam",34),(30,184,101,"lacus. Aliquam rutrum lorem",30),(30,185,160,"nunc risus varius orci, in consequat enim diam vel",20),(30,186,194,"Vestibulum",11),(30,187,84,"facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.",19),(30,188,210,"Phasellus ornare. Fusce mollis. Duis sit amet diam",14),(30,189,165,"feugiat nec, diam. Duis mi enim, condimentum eget, volutpat",46);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,190,199,"porttitor interdum. Sed auctor odio a purus. Duis elementum,",19),(30,191,188,"tellus",37),(30,192,168,"Vivamus molestie dapibus ligula.",44),(30,193,204,"libero lacus, varius et, euismod et, commodo at, libero.",48),(30,194,53,"molestie tortor nibh",41),(30,195,169,"ante. Vivamus non lorem vitae",9),(30,196,151,"sit amet diam",30),(30,197,141,"Sed congue, elit sed consequat auctor, nunc nulla vulputate",30),(30,198,71,"Curabitur ut",6),(30,199,222,"non enim. Mauris quis turpis vitae purus gravida sagittis.",10);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,253,34,"nisi sem semper erat, in consectetuer ipsum",36),(30,209,170,"Donec est. Nunc ullamcorper, velit in aliquet lobortis,",29),(30,231,103,"pede. Cum sociis natoque penatibus et magnis dis",3),(30,243,65,"tellus, imperdiet non, vestibulum nec,",43),(30,239,211,"convallis est, vitae sodales nisi magna",2),(30,239,171,"Morbi",5),(30,217,130,"nisl sem, consequat nec,",16),(30,219,198,"enim. Nunc ut erat.",14),(30,247,68,"at, velit. Cras lorem lorem, luctus ut,",20),(30,219,130,"mauris erat eget ipsum. Suspendisse",32);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,235,122,"Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam",4),(30,242,18,"iaculis aliquet diam. Sed diam lorem, auctor quis, tristique",10),(30,224,197,"semper erat, in consectetuer ipsum nunc",41),(30,212,142,"magna, malesuada vel, convallis in, cursus",41),(30,215,101,"vestibulum, neque sed dictum",17),(30,245,60,"sit amet diam eu dolor egestas rhoncus. Proin",40),(30,253,166,"nulla. Cras eu tellus",2),(30,230,8,"tempor",4),(30,217,232,"Duis cursus, diam at pretium aliquet, metus urna",27),(30,246,23,"tempor augue ac ipsum. Phasellus vitae mauris sit amet",25);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,215,70,"ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat",41),(30,231,110,"ipsum leo elementum sem, vitae aliquam eros turpis",31),(30,241,139,"facilisis, magna tellus faucibus leo, in lobortis tellus",33),(30,222,57,"auctor non, feugiat",43),(30,244,135,"Sed auctor odio a purus.",7),(30,222,164,"accumsan neque et nunc. Quisque ornare tortor at risus.",12),(30,251,26,"aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu",21),(30,224,4,"sit amet, dapibus id, blandit at, nisi. Cum sociis natoque",40),(30,229,105,"elit. Nulla facilisi. Sed neque. Sed eget",17),(30,221,260,"metus. Vivamus euismod urna. Nullam lobortis quam",2);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,245,168,"diam luctus",31),(30,225,206,"luctus. Curabitur egestas nunc sed libero. Proin",31),(30,243,35,"vitae, orci. Phasellus dapibus quam quis diam.",15),(30,206,9,"egestas nunc sed libero. Proin",36),(30,222,258,"congue, elit sed consequat auctor, nunc nulla",39),(30,214,237,"faucibus. Morbi vehicula. Pellentesque",42),(30,234,132,"facilisis lorem tristique aliquet.",42),(30,203,134,"ultrices iaculis odio.",35),(30,202,32,"Nulla eu neque pellentesque",18),(30,251,245,"ipsum sodales purus, in molestie tortor nibh sit amet",23);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,212,217,"Proin non massa non ante bibendum ullamcorper. Duis cursus,",21),(30,206,231,"natoque penatibus et magnis dis parturient montes, nascetur",48),(30,201,160,"magnis dis parturient montes, nascetur ridiculus mus. Donec",17),(30,245,53,"vel lectus. Cum sociis natoque penatibus et magnis dis parturient",24),(30,242,203,"et netus et malesuada fames ac turpis egestas. Fusce",15),(30,226,73,"congue a, aliquet vel, vulputate eu, odio.",18),(30,242,214,"Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare,",40),(30,208,101,"libero. Proin sed",49),(30,214,215,"convallis erat, eget tincidunt dui augue",10),(30,245,250,"mollis lectus",26);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (30,232,173,"condimentum eget,",27),(30,207,116,"ullamcorper.",43),(30,207,163,"cubilia Curae; Donec tincidunt.",4),(30,242,254,"mattis ornare, lectus ante dictum",39),(30,223,162,"penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec",28),(30,229,2,"molestie",8),(30,241,121,"Nulla facilisi.",3),(30,226,228,"turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus.",15),(30,253,134,"enim mi tempor lorem, eget mollis lectus pede et risus.",4),(30,207,105,"Vestibulum ante ipsum primis",48);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,240,160,"parturient montes, nascetur ridiculus",5),(40,228,243,"hendrerit",6),(40,254,205,"lectus",37),(40,230,217,"Cras vehicula aliquet libero. Integer in magna. Phasellus dolor",48),(40,253,191,"feugiat metus sit amet ante. Vivamus non lorem vitae",32),(40,241,93,"sed tortor. Integer aliquam adipiscing lacus. Ut nec urna",32),(40,230,84,"libero nec ligula consectetuer rhoncus. Nullam velit",20),(40,250,8,"ac,",28),(40,212,180,"Aliquam erat volutpat. Nulla dignissim. Maecenas",43),(40,240,52,"Cras lorem lorem,",8);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,214,189,"ac, fermentum vel, mauris. Integer",39),(40,249,241,"sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed",2),(40,254,172,"sed dui. Fusce aliquam, enim nec tempus scelerisque,",12),(40,214,233,"velit. Aliquam nisl. Nulla eu",34),(40,221,79,"Nulla facilisi. Sed neque. Sed eget lacus.",1),(40,236,151,"euismod est",39),(40,254,65,"neque. Morbi quis",22),(40,211,236,"aliquet, sem ut cursus luctus,",14),(40,208,83,"malesuada fringilla est. Mauris",6),(40,249,138,"iaculis nec, eleifend non, dapibus rutrum, justo. Praesent",11);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,254,234,"libero. Proin sed turpis nec mauris blandit mattis.",35),(40,247,54,"lacus. Aliquam rutrum lorem ac risus. Morbi metus.",1),(40,221,190,"ornare tortor at risus. Nunc ac",11),(40,211,67,"Phasellus vitae mauris sit amet lorem",28),(40,228,162,"elit, pellentesque",33),(40,238,170,"parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique",41),(40,230,250,"ante ipsum primis in faucibus orci luctus",26),(40,242,170,"rutrum eu, ultrices sit amet, risus. Donec",37),(40,206,53,"vitae",3),(40,223,60,"aliquet odio. Etiam ligula tortor, dictum",3);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,214,170,"Nullam",37),(40,226,260,"diam. Pellentesque habitant",35),(40,230,191,"dui",48),(40,222,161,"vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum",44),(40,203,49,"accumsan convallis, ante lectus convallis est, vitae",8),(40,228,163,"congue, elit sed consequat",46),(40,208,188,"nisi. Mauris nulla. Integer",1),(40,236,22,"Integer sem",45),(40,204,130,"urna et arcu imperdiet ullamcorper. Duis at",12),(40,251,127,"vel, convallis",17);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,221,239,"Aliquam erat volutpat. Nulla facilisis. Suspendisse",12),(40,210,260,"Donec tempor, est ac mattis semper, dui lectus rutrum",41),(40,252,49,"Nunc sed orci lobortis augue scelerisque",10),(40,243,160,"Sed",14),(40,237,43,"et, eros. Proin ultrices.",8),(40,239,103,"congue,",28),(40,229,130,"quis accumsan convallis, ante lectus convallis est,",39),(40,248,123,"nec metus facilisis lorem",21),(40,241,186,"magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum",33),(40,244,55,"eu sem.",12);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,201,108,"mattis semper, dui lectus rutrum urna,",13),(40,244,162,"molestie tortor nibh sit amet orci. Ut sagittis",20),(40,204,64,"magna. Ut tincidunt orci quis lectus.",23),(40,231,76,"consequat auctor, nunc nulla",12),(40,201,108,"dolor. Fusce mi lorem, vehicula",3),(40,224,243,"urna. Vivamus molestie dapibus ligula.",38),(40,239,249,"lorem, eget mollis lectus pede",46),(40,236,108,"et, lacinia vitae, sodales at,",16),(40,222,160,"nisi sem semper erat, in consectetuer",4),(40,230,199,"iaculis odio. Nam",16);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,254,85,"Suspendisse aliquet molestie tellus.",44),(40,237,191,"interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt",43),(40,236,243,"luctus ut,",17),(40,229,243,"Nunc laoreet lectus quis massa. Mauris vestibulum, neque",25),(40,230,59,"orci",9),(40,207,210,"sed,",22),(40,226,154,"Suspendisse aliquet,",45),(40,207,77,"lacus. Mauris",49),(40,203,231,"condimentum eget, volutpat ornare, facilisis",19),(40,253,17,"Nam porttitor scelerisque",7);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,240,145,"at, nisi. Cum sociis natoque penatibus",33),(40,220,147,"nonummy ut, molestie in, tempus eu, ligula. Aenean euismod",14),(40,209,204,"malesuada fames ac turpis egestas.",11),(40,223,185,"non, hendrerit id, ante. Nunc mauris sapien,",49),(40,242,9,"felis purus ac tellus. Suspendisse sed",36),(40,226,163,"Etiam vestibulum massa rutrum magna. Cras convallis",34),(40,246,176,"facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.",30),(40,233,252,"dolor sit amet, consectetuer adipiscing",23),(40,209,159,"Nullam",5),(40,228,35,"vestibulum, neque sed dictum eleifend, nunc risus varius",7);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,225,239,"eget",29),(40,254,259,"nibh. Donec est",45),(40,246,24,"ante ipsum primis in faucibus orci",30),(40,229,231,"ac mattis semper, dui lectus rutrum urna, nec",24),(40,238,55,"lorem eu metus. In",21),(40,242,206,"vel lectus. Cum sociis natoque penatibus et magnis dis parturient",31),(40,224,119,"velit",12),(40,245,149,"ornare, elit elit fermentum risus, at fringilla purus",47),(40,248,169,"ipsum. Suspendisse non",1),(40,234,42,"ullamcorper.",4);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,217,147,"Quisque",45),(40,244,67,"vel, vulputate eu, odio. Phasellus at augue id ante dictum",36),(40,239,58,"at, nisi. Cum",14),(40,242,109,"dolor egestas rhoncus. Proin nisl sem, consequat",6),(40,254,105,"quis, pede. Suspendisse dui. Fusce diam nunc,",49),(40,241,223,"vel, convallis in, cursus",14),(40,222,189,"fringilla",6),(40,242,9,"quam",21),(40,247,206,"eu odio tristique pharetra. Quisque",9),(40,236,86,"ac arcu. Nunc mauris. Morbi non sapien molestie",8);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,241,64,"Nullam feugiat",37),(40,211,88,"nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat",43),(40,239,101,"quis",12),(40,230,129,"pede.",14),(40,229,155,"tellus. Suspendisse sed dolor. Fusce",4),(40,229,48,"Phasellus vitae mauris",21),(40,202,159,"cubilia Curae; Phasellus",43),(40,230,175,"hendrerit consectetuer, cursus et, magna. Praesent",2),(40,225,160,"magnis dis parturient montes, nascetur ridiculus mus. Aenean eget",43),(40,253,28,"ipsum. Suspendisse non leo.",44);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,248,109,"risus",48),(40,208,53,"amet, faucibus ut, nulla. Cras eu tellus",3),(40,252,214,"adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc",21),(40,249,52,"Ut",11),(40,227,121,"Aliquam nisl. Nulla eu",13),(40,222,66,"sed sem egestas blandit. Nam",31),(40,208,59,"non",30),(40,236,94,"Cras sed leo. Cras vehicula aliquet libero.",11),(40,210,79,"auctor non, feugiat nec, diam. Duis mi enim, condimentum eget,",44),(40,250,238,"lacinia",39);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,203,23,"et magnis dis parturient montes, nascetur",34),(40,218,142,"semper cursus. Integer mollis. Integer tincidunt aliquam arcu.",4),(40,208,228,"euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.",5),(40,251,214,"mollis. Duis sit amet diam eu",48),(40,201,28,"lectus",9),(40,246,119,"Mauris eu turpis. Nulla aliquet.",43),(40,230,187,"erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.",31),(40,251,6,"lorem eu metus. In lorem.",42),(40,203,15,"nec ante blandit viverra. Donec",26),(40,239,200,"tincidunt dui augue",28);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,230,45,"enim. Etiam",43),(40,247,16,"placerat, augue. Sed molestie. Sed id risus quis",25),(40,232,107,"eget metus eu erat semper",35),(40,208,192,"interdum enim non nisi. Aenean",27),(40,213,117,"volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing",29),(40,208,9,"consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat",45),(40,205,155,"metus. Aenean",46),(40,239,72,"Nunc lectus pede, ultrices",27),(40,225,157,"Duis elementum, dui quis accumsan convallis, ante lectus convallis est,",30),(40,244,185,"pede. Nunc sed orci lobortis augue scelerisque mollis.",18);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,236,156,"convallis in, cursus et, eros. Proin ultrices. Duis",44),(40,201,205,"dui. Cras pellentesque. Sed dictum. Proin eget odio.",47),(40,240,241,"ipsum.",1),(40,239,19,"egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta",24),(40,231,37,"aliquet, sem ut cursus",7),(40,234,184,"Quisque fringilla euismod enim. Etiam gravida molestie",7),(40,228,196,"nisi. Cum sociis natoque",35),(40,225,45,"Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse",1),(40,220,85,"velit. Aliquam nisl.",11),(40,229,257,"ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci,",29);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,224,133,"ac",22),(40,234,174,"nulla ante, iaculis nec, eleifend",25),(40,250,116,"Vivamus non lorem",3),(40,254,24,"ligula elit, pretium et, rutrum",20),(40,221,235,"Morbi sit amet",39),(40,238,107,"velit dui, semper et, lacinia vitae, sodales at, velit.",46),(40,221,5,"ut mi. Duis",6),(40,220,122,"varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla",18),(40,216,128,"elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris",10),(40,209,131,"at, iaculis quis, pede. Praesent eu dui.",10);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,246,169,"pharetra sed, hendrerit a, arcu. Sed et libero.",17),(40,233,49,"nonummy ipsum non arcu.",16),(40,241,242,"risus. Donec",26),(40,230,212,"cursus a, enim.",34),(40,225,32,"enim commodo hendrerit.",22),(40,223,243,"nisl sem, consequat",36),(40,232,73,"eget mollis lectus pede et risus. Quisque libero",29),(40,247,29,"a feugiat tellus lorem eu",18),(40,242,91,"risus a ultricies adipiscing,",44),(40,219,209,"a purus. Duis elementum,",33);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,247,32,"mollis dui, in",16),(40,235,118,"mattis. Cras eget nisi dictum augue malesuada malesuada. Integer",15),(40,221,49,"nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia",45),(40,236,38,"velit. Cras",42),(40,227,147,"posuere",1),(40,236,66,"id, erat. Etiam vestibulum massa rutrum magna.",6),(40,254,183,"placerat, augue.",12),(40,205,178,"Suspendisse",12),(40,205,1,"cubilia Curae; Donec tincidunt. Donec",34),(40,240,24,"nunc sed pede. Cum sociis natoque penatibus et",25);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,226,184,"vitae,",6),(40,215,171,"Nullam enim. Sed nulla ante, iaculis nec, eleifend non,",26),(40,203,211,"commodo ipsum. Suspendisse non leo. Vivamus",12),(40,201,68,"massa lobortis",28),(40,206,62,"ipsum primis in faucibus orci luctus et ultrices",14),(40,250,30,"a, dui. Cras pellentesque. Sed dictum. Proin eget",4),(40,233,32,"Donec sollicitudin adipiscing ligula.",39),(40,212,105,"non nisi. Aenean eget metus. In",2),(40,242,22,"ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent",4),(40,233,247,"lectus rutrum urna, nec",3);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,232,225,"eu odio tristique pharetra. Quisque ac libero nec ligula",22),(40,248,84,"sem",4),(40,248,154,"convallis dolor. Quisque tincidunt pede ac",34),(40,242,102,"vestibulum. Mauris magna. Duis dignissim tempor arcu.",33),(40,211,124,"eu",19),(40,240,247,"eget tincidunt dui augue eu tellus. Phasellus elit pede,",21),(40,253,238,"lectus quis massa. Mauris",7),(40,225,68,"vestibulum. Mauris magna. Duis dignissim tempor arcu.",1),(40,234,131,"nunc id enim. Curabitur massa.",44),(40,227,245,"ullamcorper. Duis at lacus. Quisque",3);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,205,228,"Sed malesuada augue",49),(40,226,230,"orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec",12),(40,207,182,"ullamcorper, nisl arcu",29),(40,215,112,"Duis dignissim tempor arcu. Vestibulum ut",25),(40,212,208,"vitae velit egestas lacinia. Sed congue,",1),(40,250,218,"vitae, posuere at, velit. Cras lorem lorem, luctus ut,",15),(40,229,189,"sit amet, dapibus id, blandit at, nisi. Cum",3),(40,222,16,"erat. Sed nunc est, mollis non,",6),(40,234,259,"Integer",33),(40,213,12,"semper pretium neque. Morbi quis urna. Nunc quis",38);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,243,13,"ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat.",5),(40,254,173,"arcu. Aliquam ultrices iaculis odio. Nam",26),(40,228,41,"neque. Nullam nisl. Maecenas",47),(40,202,256,"in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus",7),(40,232,23,"mauris, rhoncus id, mollis",4),(40,254,126,"molestie sodales. Mauris blandit enim consequat purus. Maecenas libero",26),(40,214,137,"nec, mollis vitae, posuere at,",22),(40,253,155,"Sed congue, elit sed consequat auctor, nunc",23),(40,205,9,"Nunc sed orci",36),(40,250,59,"nibh.",37);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,226,191,"at",10),(40,219,254,"Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui,",16),(40,208,215,"dui.",19),(40,222,26,"euismod et, commodo",39),(40,209,238,"elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non",3),(40,236,108,"Fusce mi lorem, vehicula et, rutrum eu, ultrices sit",9),(40,239,160,"nibh enim,",15),(40,205,224,"pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam",33),(40,210,127,"lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus",39),(40,217,26,"sed dui. Fusce",30);
INSERT INTO `diseases_drugs` (`drug_amount`,`id_disease`,`id_drug`,`description`,`drug_efficiency_ratio`) VALUES (40,224,132,"est tempor bibendum. Donec felis orci, adipiscing non, luctus sit",13),(40,245,1,"neque.",26),(40,229,55,"lacus. Ut nec urna et",47),(40,223,161,"vel sapien imperdiet ornare. In faucibus.",39),(40,227,158,"lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate",32),(40,244,5,"in, hendrerit consectetuer, cursus et, magna. Praesent interdum",42),(40,226,160,"dictum placerat, augue. Sed molestie.",6),(40,221,152,"semper pretium neque. Morbi quis urna. Nunc quis",42),(40,203,163,"pellentesque, tellus sem mollis dui, in sodales elit erat vitae",25),(40,228,163,"quam dignissim pharetra. Nam ac nulla.",45);
-- table diseases_drugs counts 900 units

-- insert card records into cards_records table
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (69,"29",240,1,"2014-04-14"),(51,"34",248,1,"2015-09-11"),(24,"66",23,0,"2014-12-24"),(1,"75",209,1,"2015-02-27"),(7,"99",193,1,"2015-07-18"),(74,"94",79,0,"2015-07-27"),(7,"68",240,1,"2014-08-16"),(33,"68",240,1,"2015-06-03"),(60,"34",180,0,"2015-08-11"),(79,"28",68,0,"2015-02-21");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (11,"31",122,0,"2013-12-29"),(82,"48",252,0,"2014-05-21"),(100,"38",250,0,"2014-01-20"),(94,"72",11,0,"2014-06-28"),(64,"67",181,0,"2015-04-09"),(9,"56",158,0,"2014-09-21"),(18,"31",180,0,"2015-09-18"),(51,"35",132,1,"2015-05-29"),(70,"35",188,1,"2014-08-02"),(63,"94",189,1,"2014-10-17");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (48,"28",231,1,"2015-06-12"),(5,"77",81,1,"2014-10-16"),(64,"28",174,1,"2014-07-26"),(58,"94",141,0,"2014-04-05"),(20,"5",87,0,"2014-11-29"),(98,"80",69,0,"2015-05-27"),(53,"10",45,1,"2014-03-22"),(48,"94",207,0,"2015-04-05"),(51,"38",204,0,"2013-12-22"),(33,"68",251,1,"2014-03-23");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (32,"66",250,1,"2014-12-06"),(27,"72",15,0,"2014-03-14"),(7,"5",43,0,"2013-10-23"),(53,"31",157,0,"2015-05-16"),(50,"35",76,1,"2015-08-04"),(95,"34",29,1,"2014-10-29"),(86,"38",122,0,"2014-11-25"),(48,"31",26,1,"2013-12-15"),(77,"31",3,1,"2014-04-30"),(20,"10",236,1,"2014-06-06");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (72,"75",16,0,"2015-07-27"),(73,"66",145,1,"2014-09-17"),(80,"99",122,0,"2015-01-27"),(51,"62",76,0,"2014-07-23"),(4,"10",254,0,"2014-05-31"),(20,"28",186,1,"2014-11-23"),(99,"72",148,0,"2014-04-21"),(24,"72",128,1,"2015-04-29"),(52,"20",66,0,"2015-08-13"),(28,"99",235,1,"2015-10-14");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (98,"48",106,0,"2015-08-17"),(8,"22",126,0,"2014-02-20"),(93,"35",144,0,"2014-02-21"),(8,"99",96,0,"2014-07-25"),(1,"20",234,0,"2015-01-10"),(39,"29",151,1,"2014-12-02"),(69,"31",214,0,"2014-06-24"),(50,"8",64,1,"2013-11-07"),(33,"22",237,1,"2015-05-31"),(67,"35",65,1,"2015-03-01");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (49,"31",104,1,"2015-04-29"),(38,"67",56,0,"2015-03-19"),(96,"29",107,0,"2013-11-24"),(41,"72",214,1,"2014-04-12"),(86,"62",58,0,"2015-04-11"),(81,"28",184,0,"2015-01-02"),(66,"37",170,0,"2014-02-28"),(7,"66",23,0,"2015-02-24"),(58,"29",187,0,"2014-02-26"),(52,"34",153,0,"2013-12-24");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (11,"10",153,0,"2015-09-18"),(29,"28",129,1,"2014-02-13"),(72,"62",18,1,"2014-06-16"),(57,"20",95,0,"2015-04-01"),(17,"94",165,1,"2014-01-04"),(37,"72",228,1,"2014-02-17"),(39,"20",230,0,"2014-05-14"),(71,"4",101,1,"2015-04-16"),(94,"77",101,1,"2015-04-28"),(87,"72",217,0,"2014-11-07");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (72,"56",188,1,"2015-08-07"),(1,"5",180,1,"2015-08-26"),(36,"20",183,1,"2014-09-16"),(90,"75",169,1,"2014-07-22"),(24,"56",37,0,"2014-04-19"),(83,"80",43,1,"2014-09-06"),(67,"20",72,1,"2015-09-09"),(97,"35",233,1,"2015-06-14"),(86,"4",148,1,"2015-06-21"),(6,"77",177,1,"2014-06-28");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (57,"5",218,1,"2013-12-18"),(15,"37",73,1,"2015-06-06"),(5,"68",201,0,"2015-04-10"),(38,"75",96,1,"2015-01-16"),(43,"68",243,0,"2015-08-27"),(5,"56",129,0,"2014-02-13"),(15,"34",60,0,"2014-08-10"),(85,"94",135,1,"2015-10-01"),(73,"68",4,0,"2014-04-18"),(63,"34",133,1,"2014-09-04");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (96,"80",158,1,"2015-05-08"),(26,"37",35,0,"2014-03-16"),(15,"29",45,0,"2015-08-02"),(57,"4",48,1,"2014-02-10"),(98,"80",245,0,"2014-03-19"),(90,"28",187,1,"2014-03-12"),(59,"67",97,0,"2015-05-21"),(22,"75",84,1,"2015-02-05"),(87,"94",187,1,"2014-11-23"),(96,"68",77,0,"2013-11-15");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (69,"37",147,0,"2015-08-31"),(27,"37",154,1,"2015-08-01"),(38,"72",90,0,"2015-03-04"),(63,"72",81,1,"2015-04-25"),(83,"48",43,1,"2014-02-26"),(24,"56",141,0,"2015-05-21"),(86,"74",186,1,"2014-04-08"),(81,"5",84,0,"2014-08-01"),(30,"99",90,0,"2014-06-17"),(65,"22",226,0,"2014-03-01");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (33,"74",61,1,"2015-05-21"),(47,"74",70,0,"2014-08-26"),(14,"10",119,1,"2014-07-14"),(75,"77",74,1,"2014-01-07"),(44,"4",88,0,"2014-05-13"),(49,"37",168,0,"2014-08-21"),(34,"80",237,1,"2013-10-25"),(32,"20",177,1,"2015-05-09"),(18,"22",100,1,"2014-12-07"),(4,"56",241,0,"2013-12-11");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (81,"38",224,0,"2013-12-24"),(60,"72",203,1,"2015-05-08"),(84,"34",70,0,"2015-10-15"),(62,"77",142,0,"2015-05-25"),(7,"67",48,0,"2014-01-24"),(84,"99",93,1,"2014-04-17"),(78,"75",142,1,"2014-08-30"),(71,"77",196,1,"2014-04-28"),(24,"72",204,0,"2014-12-10"),(23,"80",174,1,"2014-04-28");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (44,"37",175,0,"2015-05-24"),(76,"72",235,0,"2014-08-20"),(12,"5",75,0,"2015-06-11"),(12,"94",228,0,"2013-12-11"),(32,"37",179,0,"2015-10-09"),(78,"34",217,1,"2015-07-15"),(99,"35",82,1,"2015-03-20"),(16,"80",210,0,"2014-09-06"),(24,"10",40,1,"2014-04-30"),(22,"34",78,0,"2014-09-26");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (13,"56",192,0,"2014-02-15"),(81,"77",25,0,"2015-03-01"),(35,"37",93,1,"2014-04-10"),(75,"74",6,0,"2014-04-11"),(1,"94",237,0,"2014-02-13"),(81,"37",68,1,"2015-03-05"),(7,"29",222,0,"2014-01-23"),(32,"35",221,0,"2014-06-14"),(71,"29",62,0,"2014-08-09"),(33,"77",226,0,"2014-02-05");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (36,"22",170,0,"2015-04-25"),(53,"74",219,0,"2013-11-07"),(52,"62",101,0,"2015-02-18"),(69,"4",22,1,"2013-11-18"),(68,"29",123,0,"2015-01-01"),(69,"31",34,1,"2014-03-19"),(37,"29",134,1,"2014-12-23"),(21,"94",36,0,"2014-06-10"),(66,"10",149,1,"2015-06-25"),(95,"62",100,1,"2015-06-09");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (27,"5",17,1,"2015-08-09"),(79,"35",160,1,"2013-12-04"),(72,"72",191,0,"2014-07-23"),(9,"67",70,0,"2014-12-07"),(20,"72",127,1,"2015-03-30"),(80,"56",103,0,"2015-03-10"),(16,"37",52,1,"2015-09-16"),(93,"34",159,0,"2014-11-16"),(3,"72",118,0,"2014-04-13"),(80,"80",102,1,"2014-04-28");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (34,"28",70,0,"2014-11-03"),(30,"72",246,0,"2014-11-30"),(83,"99",56,1,"2014-07-02"),(83,"75",77,1,"2015-03-10"),(3,"75",241,0,"2014-10-10"),(60,"94",227,0,"2014-01-03"),(94,"72",241,1,"2014-12-20"),(16,"35",135,1,"2015-03-10"),(10,"68",24,1,"2015-08-16"),(1,"94",83,1,"2014-06-27");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (74,"68",150,0,"2015-10-04"),(71,"4",254,0,"2014-12-24"),(51,"68",167,1,"2014-08-03"),(13,"80",185,1,"2015-04-25"),(93,"20",88,0,"2014-11-23"),(27,"94",216,1,"2015-03-29"),(45,"35",164,0,"2015-03-16"),(4,"67",47,0,"2014-01-13"),(79,"5",124,0,"2014-05-25"),(73,"68",232,1,"2015-04-10");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (20,"5",207,0,"2014-12-23"),(12,"56",66,0,"2014-12-28"),(66,"56",225,0,"2014-11-01"),(49,"68",42,0,"2013-10-20"),(29,"80",228,1,"2015-02-13"),(88,"68",63,1,"2014-11-15"),(60,"29",162,1,"2015-06-12"),(67,"48",73,0,"2015-05-15"),(93,"31",214,0,"2015-10-17"),(69,"8",135,0,"2015-06-29");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (87,"22",135,1,"2015-04-13"),(49,"4",25,0,"2015-03-28"),(82,"28",128,0,"2015-06-19"),(44,"67",215,1,"2014-08-02"),(98,"22",212,1,"2014-06-07"),(68,"72",122,0,"2014-11-15"),(88,"37",95,1,"2013-11-03"),(84,"66",226,0,"2015-05-27"),(26,"37",208,1,"2014-03-13"),(51,"94",95,1,"2013-10-30");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (93,"72",169,0,"2014-01-03"),(59,"35",180,1,"2015-06-22"),(40,"66",247,1,"2015-08-25"),(53,"10",9,1,"2014-03-08"),(33,"5",33,1,"2015-04-05"),(30,"29",49,0,"2015-06-29"),(54,"67",63,0,"2015-07-04"),(100,"35",175,1,"2014-01-26"),(7,"72",238,1,"2015-05-01"),(36,"10",91,0,"2014-09-25");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (38,"20",248,1,"2014-06-13"),(55,"35",17,1,"2014-12-24"),(10,"74",31,0,"2014-01-25"),(8,"38",82,1,"2014-06-21"),(94,"34",129,1,"2014-01-22"),(27,"66",198,1,"2013-11-21"),(58,"34",92,1,"2015-10-13"),(6,"74",242,1,"2015-05-07"),(63,"8",13,0,"2015-05-05"),(14,"48",92,0,"2014-09-24");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (94,"38",131,0,"2013-12-06"),(99,"75",108,0,"2014-06-19"),(83,"22",183,1,"2013-12-11"),(66,"62",187,1,"2014-02-25"),(52,"94",171,1,"2015-02-23"),(29,"72",167,0,"2014-07-26"),(28,"72",35,0,"2014-03-07"),(66,"31",229,1,"2014-02-26"),(40,"94",232,1,"2013-11-04"),(55,"75",162,1,"2015-01-28");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (78,"20",234,1,"2015-06-18"),(77,"5",171,0,"2015-05-23"),(94,"80",151,1,"2014-12-07"),(46,"66",17,0,"2015-09-21"),(42,"22",246,0,"2013-12-02"),(21,"72",28,0,"2015-04-27"),(20,"31",129,0,"2014-03-07"),(47,"10",159,0,"2014-09-29"),(34,"38",52,1,"2015-10-05"),(60,"67",63,1,"2014-05-11");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (80,"74",96,0,"2015-08-24"),(37,"5",193,0,"2015-09-05"),(43,"62",242,0,"2014-01-31"),(45,"20",145,1,"2014-12-04"),(80,"37",200,1,"2014-08-22"),(81,"31",182,1,"2015-09-07"),(16,"67",131,0,"2015-07-26"),(56,"22",93,0,"2014-08-14"),(86,"35",230,1,"2015-04-22"),(41,"66",239,1,"2015-07-03");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (81,"10",109,1,"2015-02-11"),(28,"94",169,0,"2014-08-15"),(28,"22",143,0,"2013-12-09"),(56,"67",6,0,"2014-07-23"),(94,"10",13,0,"2015-09-03"),(42,"5",253,0,"2015-03-02"),(61,"48",218,0,"2014-09-02"),(88,"72",249,0,"2014-11-03"),(85,"35",57,1,"2015-07-24"),(70,"66",114,0,"2013-11-20");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (70,"74",38,0,"2015-10-09"),(52,"66",31,1,"2014-11-17"),(55,"20",53,1,"2014-12-23"),(92,"56",124,1,"2014-03-08"),(7,"34",233,1,"2014-04-06"),(2,"72",53,1,"2014-03-27"),(65,"56",45,0,"2014-11-02"),(39,"10",242,0,"2014-10-17"),(5,"56",123,1,"2013-12-08"),(29,"35",72,1,"2015-06-17");
INSERT INTO `cards_records` (`id_card`,`id_doctor`,`id_disease`,`is_doctor_needed`,`start_date`) VALUES (45,"48",68,0,"2014-10-28"),(40,"34",23,0,"2015-02-18"),(28,"66",28,1,"2014-03-15"),(96,"38",227,1,"2014-04-08"),(28,"94",196,1,"2015-02-12"),(5,"35",222,1,"2015-09-06"),(77,"20",206,1,"2015-08-03"),(13,"67",237,0,"2015-03-14"),(57,"75",97,0,"2014-12-27"),(81,"22",107,0,"2014-01-20");
UPDATE cards_records SET id_doctor=NULL WHERE is_doctor_needed=0;
UPDATE cards_records SET end_date = CURRENT_DATE - INTERVAL FLOOR(RAND() * 31) DAY WHERE is_doctor_needed=0;
-- table cards_records counts 300 units

-- bind tables cards_records and symptoms to get ManyToOne table cardrecords_symptoms
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (271,211,"2011-04-08"),(203,224,"2011-01-03"),(222,154,"2013-06-02"),(170,99,"2013-06-24"),(231,7,"2014-03-28"),(59,105,"2014-04-22"),(138,64,"2013-07-02"),(287,157,"2013-03-23"),(295,232,"2013-08-12"),(99,264,"2012-06-14");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (255,319,"2013-02-11"),(195,40,"2014-01-07"),(197,147,"2010-12-25"),(269,134,"2011-01-27"),(137,36,"2012-02-06"),(292,239,"2012-01-27"),(105,277,"2011-08-04"),(113,119,"2011-01-18"),(293,209,"2011-08-03"),(74,268,"2013-11-08");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (288,206,"2013-05-26"),(154,210,"2013-09-11"),(12,222,"2013-07-17"),(240,41,"2011-03-20"),(168,84,"2011-09-07"),(24,304,"2012-04-14"),(106,201,"2011-02-13"),(220,137,"2013-11-06"),(240,37,"2012-10-09"),(205,129,"2012-03-08");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (204,230,"2011-10-04"),(230,306,"2013-05-05"),(274,72,"2011-02-22"),(77,329,"2011-03-13"),(84,143,"2013-04-06"),(37,126,"2013-01-02"),(249,151,"2014-09-10"),(82,264,"2012-03-30"),(248,159,"2013-10-28"),(131,216,"2014-01-23");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (10,272,"2010-11-25"),(214,23,"2012-12-20"),(15,61,"2011-07-04"),(66,251,"2013-04-03"),(230,43,"2012-07-25"),(206,264,"2012-06-30"),(113,181,"2014-05-02"),(29,262,"2012-11-13"),(253,289,"2013-01-23"),(147,54,"2011-08-15");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (83,213,"2011-06-24"),(119,47,"2011-04-23"),(64,295,"2012-09-04"),(234,36,"2012-10-12"),(196,67,"2011-02-04"),(288,153,"2014-08-30"),(27,261,"2014-03-25"),(51,63,"2010-11-27"),(277,25,"2012-09-12"),(257,168,"2012-01-18");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (75,47,"2014-04-04"),(225,233,"2011-03-02"),(262,231,"2013-02-06"),(206,247,"2014-09-29"),(155,3,"2013-04-12"),(15,293,"2014-07-11"),(122,151,"2014-09-14"),(128,56,"2011-12-09"),(18,152,"2014-08-20"),(18,20,"2012-06-19");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (6,193,"2012-08-18"),(134,84,"2011-10-02"),(129,326,"2013-09-30"),(31,307,"2014-05-16"),(178,74,"2013-06-11"),(108,50,"2013-05-15"),(70,341,"2013-11-04"),(53,155,"2014-05-15"),(277,56,"2012-01-30"),(251,34,"2013-01-03");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (117,155,"2013-10-11"),(43,299,"2014-02-13"),(79,129,"2011-09-15"),(50,174,"2014-01-25"),(123,252,"2011-02-25"),(85,125,"2014-06-20"),(213,63,"2010-11-18"),(129,54,"2011-07-10"),(184,139,"2010-10-01"),(48,194,"2013-11-01");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (158,97,"2014-03-14"),(297,295,"2010-10-22"),(11,52,"2012-01-21"),(286,342,"2010-10-05"),(210,225,"2012-03-04"),(245,65,"2012-06-17"),(187,245,"2013-12-09"),(162,150,"2014-06-15"),(84,280,"2011-09-13"),(272,241,"2014-02-27");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (194,175,"2011-07-27"),(91,65,"2014-05-30"),(81,72,"2010-12-05"),(154,242,"2012-12-09"),(285,241,"2014-04-14"),(152,241,"2011-05-28"),(183,205,"2012-03-30"),(16,35,"2013-09-17"),(202,339,"2014-07-06"),(256,289,"2014-01-11");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (164,254,"2014-09-12"),(277,252,"2012-03-07"),(72,213,"2013-12-11"),(158,294,"2011-10-19"),(179,244,"2013-11-20"),(16,138,"2013-04-02"),(73,122,"2014-01-21"),(263,107,"2010-12-23"),(92,29,"2012-06-16"),(44,72,"2012-11-27");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (234,60,"2014-07-30"),(269,139,"2014-02-11"),(149,222,"2012-06-28"),(234,289,"2014-10-01"),(209,114,"2012-07-26"),(272,212,"2011-12-06"),(134,182,"2011-06-01"),(78,233,"2010-11-27"),(79,314,"2013-12-06"),(94,187,"2010-10-22");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (299,314,"2013-06-18"),(168,118,"2013-01-21"),(72,295,"2010-10-05"),(153,130,"2012-01-18"),(128,125,"2011-12-07"),(103,252,"2013-09-30"),(252,300,"2014-08-22"),(236,334,"2013-05-09"),(74,339,"2012-06-25"),(77,266,"2011-11-09");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (62,201,"2010-11-17"),(150,79,"2012-09-02"),(50,136,"2011-12-15"),(33,243,"2014-01-09"),(101,200,"2012-04-24"),(157,123,"2012-07-12"),(227,157,"2013-02-23"),(164,2,"2014-06-11"),(149,274,"2013-11-23"),(286,257,"2013-03-11");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (241,214,"2012-07-12"),(263,96,"2013-04-19"),(154,285,"2012-07-08"),(35,23,"2010-10-14"),(155,75,"2014-03-14"),(160,164,"2010-12-11"),(152,330,"2011-08-24"),(285,183,"2012-06-06"),(194,218,"2012-02-09"),(167,79,"2011-12-16");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (97,99,"2014-06-17"),(249,39,"2013-12-06"),(204,50,"2011-04-06"),(5,328,"2013-06-08"),(248,187,"2011-12-31"),(277,47,"2013-12-24"),(148,338,"2013-08-06"),(247,126,"2011-11-04"),(235,84,"2012-04-01"),(15,246,"2012-07-09");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (99,325,"2012-12-24"),(255,158,"2013-04-16"),(94,300,"2012-03-04"),(91,108,"2014-09-29"),(93,322,"2014-01-18"),(257,316,"2011-04-07"),(121,37,"2013-10-01"),(104,250,"2013-02-12"),(17,61,"2012-11-02"),(135,176,"2014-01-27");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (228,136,"2011-03-22"),(285,245,"2013-02-16"),(176,206,"2013-04-05"),(240,227,"2014-09-09"),(175,299,"2013-07-08"),(90,315,"2013-08-28"),(223,220,"2012-11-23"),(45,195,"2011-12-23"),(268,329,"2013-03-24"),(188,221,"2013-03-03");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (300,49,"2012-05-26"),(178,324,"2011-02-18"),(61,308,"2013-09-07"),(124,304,"2014-06-18"),(233,222,"2013-06-04"),(214,199,"2012-11-05"),(94,23,"2012-09-01"),(179,262,"2013-11-30"),(98,7,"2010-10-27"),(37,221,"2010-10-03");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (86,222,"2012-05-26"),(257,28,"2011-11-26"),(192,84,"2014-08-19"),(195,15,"2011-09-17"),(228,106,"2012-04-20"),(234,270,"2014-02-23"),(24,330,"2013-04-06"),(165,261,"2013-07-16"),(150,276,"2013-10-09"),(114,242,"2011-03-14");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (241,108,"2012-03-17"),(79,125,"2011-04-25"),(132,243,"2010-10-22"),(164,303,"2014-01-15"),(55,184,"2011-07-25"),(260,59,"2012-07-24"),(88,326,"2011-11-21"),(73,269,"2011-08-12"),(213,185,"2012-11-05"),(207,180,"2011-11-19");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (98,205,"2010-12-13"),(44,123,"2013-01-12"),(114,126,"2014-05-08"),(134,52,"2013-01-11"),(222,41,"2012-03-02"),(6,81,"2013-09-19"),(49,246,"2014-02-20"),(69,315,"2014-06-16"),(248,65,"2013-03-07"),(238,336,"2013-07-23");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (132,140,"2011-04-03"),(186,57,"2014-08-26"),(123,87,"2011-10-21"),(17,140,"2010-10-28"),(293,129,"2014-04-25"),(164,174,"2013-03-16"),(237,101,"2010-10-23"),(158,210,"2010-10-09"),(250,5,"2014-09-09"),(158,48,"2011-01-31");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (21,113,"2014-04-22"),(157,137,"2013-10-24"),(278,44,"2013-06-12"),(25,96,"2012-08-31"),(277,333,"2014-05-22"),(64,186,"2014-05-08"),(20,195,"2014-10-01"),(118,142,"2012-06-24"),(81,209,"2013-11-14"),(21,317,"2011-12-19");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (265,16,"2013-11-30"),(229,54,"2011-09-09"),(179,69,"2012-07-24"),(37,11,"2013-03-25"),(3,119,"2013-07-21"),(12,158,"2010-11-15"),(110,37,"2011-09-13"),(82,164,"2013-08-30"),(74,233,"2013-06-03"),(14,323,"2012-12-01");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (17,268,"2013-06-09"),(47,337,"2011-03-22"),(126,93,"2011-11-05"),(65,50,"2011-08-16"),(165,173,"2012-04-18"),(195,236,"2014-03-28"),(116,303,"2013-01-17"),(1,12,"2011-07-12"),(206,54,"2011-08-16"),(186,158,"2012-06-01");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (34,158,"2012-09-25"),(120,327,"2014-08-13"),(37,114,"2013-09-11"),(14,285,"2013-09-10"),(65,138,"2012-09-18"),(99,115,"2011-03-17"),(220,298,"2013-07-31"),(197,63,"2012-03-07"),(22,9,"2013-08-26"),(78,132,"2010-11-21");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (182,135,"2011-06-04"),(83,178,"2011-03-27"),(268,3,"2013-04-24"),(274,75,"2014-05-20"),(177,319,"2012-07-12"),(21,12,"2014-01-09"),(112,25,"2014-08-10"),(81,296,"2013-06-18"),(104,26,"2013-09-30"),(132,282,"2011-10-30");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (295,232,"2011-01-18"),(106,254,"2012-08-29"),(11,271,"2011-05-03"),(117,15,"2012-02-11"),(88,22,"2011-04-28"),(244,204,"2013-08-18"),(127,217,"2013-03-29"),(95,141,"2012-08-16"),(230,323,"2012-10-22"),(291,50,"2013-10-06");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (166,85,"2011-04-22"),(144,104,"2013-04-23"),(25,44,"2014-05-14"),(128,302,"2012-06-30"),(193,181,"2011-03-25"),(196,270,"2013-02-06"),(144,329,"2013-03-31"),(71,239,"2013-03-27"),(18,79,"2014-09-21"),(36,297,"2013-04-28");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (248,31,"2014-03-03"),(63,20,"2014-08-04"),(296,131,"2011-01-19"),(111,47,"2014-07-22"),(18,282,"2014-09-17"),(252,25,"2012-08-27"),(246,60,"2011-01-21"),(73,277,"2013-04-10"),(90,65,"2011-09-19"),(180,322,"2011-03-18");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (150,87,"2012-11-23"),(123,172,"2011-12-26"),(169,31,"2014-07-31"),(247,275,"2010-12-20"),(133,297,"2012-12-26"),(132,62,"2013-01-29"),(4,249,"2014-08-29"),(216,198,"2011-11-02"),(275,17,"2010-12-03"),(295,336,"2010-12-06");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (9,32,"2012-01-08"),(48,10,"2012-02-07"),(109,291,"2012-07-28"),(133,212,"2013-08-10"),(59,288,"2011-06-24"),(182,176,"2012-04-06"),(40,20,"2013-12-19"),(95,48,"2013-03-23"),(207,63,"2013-10-29"),(283,79,"2012-01-22");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (254,273,"2014-06-03"),(117,291,"2013-08-27"),(66,288,"2011-07-09"),(31,317,"2010-12-09"),(169,3,"2014-09-30"),(97,257,"2012-03-11"),(163,93,"2014-07-04"),(147,202,"2012-03-02"),(252,4,"2012-03-24"),(186,267,"2011-12-09");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (38,203,"2012-03-17"),(189,36,"2011-12-25"),(253,163,"2012-05-18"),(225,205,"2011-03-27"),(9,74,"2013-05-18"),(197,319,"2011-03-13"),(13,318,"2012-08-17"),(9,89,"2012-05-10"),(222,232,"2011-06-18"),(180,282,"2010-10-28");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (174,10,"2013-05-16"),(30,104,"2012-04-24"),(90,292,"2013-08-14"),(119,249,"2011-04-08"),(21,287,"2012-01-27"),(296,168,"2014-08-28"),(212,206,"2013-12-16"),(61,15,"2012-10-08"),(228,7,"2012-07-05"),(168,326,"2014-09-19");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (17,123,"2013-05-21"),(48,216,"2013-10-14"),(179,179,"2014-07-14"),(285,118,"2011-04-21"),(23,20,"2011-04-09"),(42,235,"2013-09-26"),(293,333,"2012-11-30"),(112,177,"2010-12-15"),(158,52,"2012-09-20"),(149,75,"2013-01-21");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (252,189,"2014-09-20"),(21,5,"2010-11-21"),(205,188,"2014-09-28"),(135,281,"2010-10-23"),(9,329,"2010-12-21"),(16,265,"2010-10-04"),(177,149,"2014-08-25"),(289,117,"2012-11-08"),(218,154,"2012-06-12"),(106,13,"2012-11-06");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (178,149,"2011-07-19"),(54,227,"2012-08-14"),(44,295,"2011-04-22"),(125,273,"2010-10-16"),(239,137,"2014-01-25"),(81,70,"2014-07-07"),(271,3,"2010-10-06"),(181,237,"2013-06-30"),(122,136,"2010-12-28"),(59,226,"2013-08-06");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (39,229,"2014-06-23"),(288,297,"2011-12-20"),(192,35,"2012-10-31"),(81,333,"2011-06-23"),(8,232,"2011-02-02"),(86,211,"2012-07-11"),(208,45,"2011-09-29"),(50,293,"2013-01-07"),(220,232,"2013-02-14"),(221,304,"2012-08-27");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (49,3,"2012-03-09"),(187,67,"2014-01-05"),(237,278,"2011-05-01"),(159,6,"2014-08-02"),(128,147,"2014-04-04"),(167,161,"2013-02-25"),(55,277,"2011-05-05"),(276,75,"2012-10-07"),(83,50,"2012-07-17"),(91,10,"2011-03-23");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (170,273,"2012-03-10"),(52,81,"2013-05-03"),(117,187,"2011-08-05"),(57,51,"2014-07-29"),(142,322,"2013-04-25"),(26,116,"2011-10-07"),(56,242,"2010-12-27"),(201,193,"2013-10-10"),(117,128,"2012-08-25"),(43,210,"2014-05-19");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (119,48,"2012-06-03"),(283,317,"2011-08-18"),(232,20,"2014-07-11"),(295,251,"2013-11-22"),(245,32,"2012-04-13"),(182,170,"2013-07-17"),(117,4,"2010-12-23"),(11,20,"2012-05-03"),(289,122,"2012-11-28"),(180,293,"2012-10-12");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (250,252,"2013-06-30"),(183,55,"2012-06-27"),(230,86,"2011-04-07"),(22,247,"2013-12-22"),(94,77,"2011-10-24"),(216,287,"2011-01-11"),(60,242,"2012-06-18"),(100,83,"2012-05-30"),(39,304,"2012-01-15"),(211,19,"2014-07-24");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (6,299,"2012-07-22"),(287,117,"2013-07-23"),(246,148,"2011-12-25"),(33,246,"2012-01-30"),(52,296,"2013-12-04"),(60,13,"2012-11-13"),(232,73,"2013-11-24"),(289,261,"2013-06-24"),(111,213,"2013-07-15"),(300,324,"2014-09-20");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (80,293,"2011-07-31"),(149,327,"2013-07-15"),(206,298,"2013-06-10"),(104,71,"2014-08-23"),(141,26,"2013-01-01"),(198,8,"2011-12-24"),(197,168,"2014-04-07"),(19,86,"2011-10-13"),(125,268,"2011-02-17"),(204,229,"2011-04-10");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (61,103,"2012-07-14"),(171,294,"2013-07-10"),(2,73,"2014-07-19"),(183,117,"2011-10-14"),(157,341,"2013-02-03"),(275,129,"2014-07-23"),(108,294,"2012-07-12"),(109,210,"2011-09-16"),(276,19,"2013-09-24"),(104,26,"2014-03-22");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (110,180,"2012-04-15"),(238,213,"2013-08-15"),(230,325,"2011-02-24"),(293,140,"2013-12-21"),(103,139,"2011-05-28"),(56,262,"2011-11-05"),(297,306,"2012-11-02"),(279,135,"2011-01-24"),(258,307,"2013-05-19"),(15,243,"2011-11-18");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (18,59,"2011-04-08"),(28,272,"2012-06-01"),(237,126,"2013-08-25"),(108,302,"2011-02-02"),(292,150,"2013-04-26"),(88,231,"2013-08-16"),(249,238,"2013-04-03"),(72,134,"2011-07-31"),(130,57,"2011-12-31"),(109,95,"2011-10-02");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (246,88,"2012-10-12"),(179,248,"2013-09-03"),(236,196,"2012-10-26"),(251,136,"2011-04-25"),(113,14,"2012-05-22"),(280,131,"2012-03-20"),(56,50,"2014-01-13"),(268,122,"2011-09-04"),(242,131,"2012-04-25"),(14,125,"2013-05-18");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (204,110,"2012-05-17"),(269,75,"2014-09-06"),(57,141,"2010-11-20"),(265,10,"2011-06-19"),(186,201,"2012-11-14"),(83,254,"2014-07-20"),(108,298,"2010-10-29"),(74,52,"2014-08-08"),(217,168,"2014-03-01"),(107,288,"2011-07-10");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (73,159,"2011-12-05"),(47,268,"2013-03-31"),(193,16,"2011-10-06"),(277,102,"2012-12-25"),(164,256,"2013-08-12"),(259,14,"2011-08-23"),(289,116,"2012-03-30"),(73,90,"2011-06-12"),(202,339,"2014-09-02"),(259,96,"2013-05-08");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (13,41,"2014-01-15"),(299,165,"2011-02-26"),(111,170,"2010-10-01"),(42,103,"2013-12-30"),(159,46,"2012-12-26"),(146,215,"2012-12-07"),(157,314,"2013-04-07"),(142,15,"2013-06-21"),(113,187,"2014-01-04"),(299,240,"2012-07-17");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (218,146,"2012-05-02"),(102,311,"2012-06-21"),(158,336,"2014-06-27"),(35,1,"2011-05-06"),(12,274,"2013-12-24"),(170,216,"2011-05-23"),(155,283,"2013-03-03"),(143,268,"2013-04-26"),(210,8,"2012-04-22"),(184,177,"2012-09-14");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (283,103,"2012-08-26"),(87,76,"2012-12-25"),(125,155,"2011-04-21"),(41,194,"2012-05-22"),(231,109,"2012-06-26"),(283,129,"2012-06-06"),(132,104,"2011-09-09"),(212,5,"2013-03-20"),(150,187,"2011-08-27"),(78,66,"2013-10-05");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (240,233,"2012-08-04"),(22,71,"2010-12-30"),(292,204,"2013-04-20"),(137,263,"2011-02-13"),(194,329,"2013-08-15"),(41,246,"2012-08-01"),(276,327,"2014-03-24"),(4,144,"2013-10-25"),(109,3,"2013-06-29"),(27,261,"2013-10-19");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (41,229,"2010-10-04"),(261,172,"2014-04-06"),(120,170,"2012-03-14"),(90,10,"2013-12-20"),(30,339,"2013-04-11"),(102,23,"2011-06-15"),(243,48,"2012-04-24"),(232,341,"2011-12-07"),(93,117,"2014-02-27"),(81,224,"2012-03-17");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (128,287,"2011-08-28"),(237,38,"2012-04-04"),(57,298,"2013-10-21"),(153,1,"2012-09-10"),(74,161,"2013-03-29"),(266,334,"2011-08-16"),(123,214,"2013-09-24"),(286,147,"2014-01-22"),(110,217,"2014-08-22"),(263,216,"2012-06-25");
INSERT INTO `cardrecords_symptoms` (`id_cardrecord`,`id_symptom`,`added_date`) VALUES (159,9,"2010-12-17"),(246,113,"2010-12-21"),(176,81,"2014-10-04"),(5,298,"2013-07-02"),(200,202,"2012-11-25"),(228,247,"2013-07-31"),(29,332,"2011-03-09"),(107,12,"2013-07-05"),(85,60,"2011-01-14"),(228,326,"2011-12-16");
-- table cardrecords_symptoms counts 300 units

-- insert treatments into treatments table
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-04-11","2013-11-06"),("2011-10-25","2014-07-04"),("2012-06-03","2014-09-21"),("2012-05-14","2014-08-05"),("2012-03-25","2013-11-06"),("2013-08-26","2014-04-21"),("2013-03-23","2014-09-04"),("2012-10-08","2013-12-27"),("2012-10-04","2014-05-17"),("2012-11-22","2014-10-15");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-06-17","2014-09-29"),("2012-06-06","2014-07-23"),("2013-01-02","2014-01-29"),("2012-11-30","2014-03-08"),("2011-10-08","2013-12-25"),("2011-11-13","2014-03-19"),("2012-06-08","2014-06-03"),("2013-05-22","2014-07-06"),("2013-08-24","2014-05-14"),("2013-05-15","2013-10-26");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-04-14","2014-03-05"),("2013-07-18","2014-08-10"),("2011-11-12","2013-10-20"),("2011-10-17","2013-12-08"),("2011-12-20","2013-10-24"),("2013-02-03","2014-04-01"),("2012-03-07","2014-04-20"),("2012-12-18","2013-12-10"),("2012-09-11","2014-09-30"),("2013-05-24","2013-11-29");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-06-07","2014-02-02"),("2013-03-05","2014-01-27"),("2012-01-10","2014-01-29"),("2012-01-05","2014-04-12"),("2013-06-04","2014-07-13"),("2013-05-28","2014-08-12"),("2012-08-30","2014-07-16"),("2012-09-23","2014-07-07"),("2011-11-01","2014-03-29"),("2013-05-22","2014-07-08");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-09-16","2014-07-26"),("2012-08-28","2014-07-20"),("2013-08-15","2013-11-26"),("2013-01-11","2013-12-01"),("2013-05-21","2014-05-08"),("2012-07-04","2014-05-22"),("2013-07-28","2014-01-12"),("2013-05-01","2014-04-06"),("2013-07-22","2014-10-08"),("2011-10-17","2014-04-25");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2011-11-20","2014-04-05"),("2012-07-17","2014-09-07"),("2012-08-24","2014-05-20"),("2012-03-22","2014-05-01"),("2013-06-11","2014-06-28"),("2013-09-29","2014-07-13"),("2012-06-17","2014-07-30"),("2012-02-12","2014-01-29"),("2012-05-07","2014-03-21"),("2012-08-02","2014-06-23");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2011-12-04","2013-11-27"),("2012-11-13","2014-05-15"),("2012-12-26","2014-03-14"),("2013-01-26","2014-10-17"),("2012-06-07","2014-01-10"),("2012-03-11","2014-03-24"),("2012-06-23","2013-12-16"),("2012-09-29","2014-08-07"),("2012-11-17","2014-04-09"),("2011-11-13","2014-08-20");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-11-22","2014-03-25"),("2012-07-06","2013-12-09"),("2012-04-24","2013-11-16"),("2011-12-04","2014-05-18"),("2013-01-17","2013-11-08"),("2012-01-21","2014-05-22"),("2012-08-12","2014-09-02"),("2012-01-03","2014-06-12"),("2013-07-17","2014-08-14"),("2013-07-17","2014-07-29");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-01-20","2013-11-30"),("2013-07-22","2014-04-13"),("2012-09-26","2014-07-28"),("2012-11-27","2013-12-07"),("2012-04-16","2013-11-09"),("2012-12-18","2013-12-28"),("2013-02-27","2014-04-08"),("2012-09-22","2014-01-23"),("2013-05-08","2014-01-10"),("2013-09-22","2014-02-23");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-07-05","2013-11-10"),("2013-02-21","2014-06-27"),("2013-09-27","2014-09-01"),("2012-09-26","2013-12-29"),("2011-12-28","2014-06-12"),("2011-10-08","2014-08-05"),("2012-05-11","2014-10-13"),("2013-03-22","2014-07-10"),("2012-01-16","2014-04-15"),("2012-05-26","2014-04-16");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-06-04","2014-03-16"),("2012-03-24","2013-12-07"),("2013-07-17","2014-04-23"),("2011-10-29","2013-12-29"),("2012-01-19","2014-01-17"),("2013-08-04","2014-10-01"),("2013-08-14","2014-07-15"),("2013-09-04","2014-08-10"),("2013-06-24","2014-01-03"),("2011-11-07","2014-04-13");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-05-06","2014-08-30"),("2012-02-20","2014-01-18"),("2012-05-23","2014-06-01"),("2013-09-11","2014-03-25"),("2012-01-05","2014-04-06"),("2012-09-29","2014-09-05"),("2012-10-10","2013-12-02"),("2011-12-16","2014-07-29"),("2012-01-01","2013-11-23"),("2012-07-30","2013-11-12");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-09-26","2013-10-23"),("2012-05-27","2013-12-20"),("2012-05-23","2014-02-26"),("2012-02-16","2014-09-06"),("2012-01-26","2014-03-17"),("2012-10-29","2014-03-16"),("2013-09-13","2014-10-10"),("2012-09-19","2014-10-11"),("2012-11-12","2014-05-23"),("2011-10-26","2014-09-22");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-04-29","2014-01-10"),("2012-02-12","2013-11-24"),("2013-08-15","2013-12-20"),("2013-07-20","2014-07-17"),("2012-08-19","2014-04-03"),("2012-05-27","2014-02-22"),("2011-12-02","2014-09-03"),("2013-08-02","2014-05-17"),("2012-01-26","2013-12-06"),("2011-12-18","2014-08-15");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2011-10-16","2014-06-24"),("2013-02-08","2014-06-18"),("2012-05-09","2013-11-13"),("2012-10-18","2014-07-29"),("2013-06-07","2014-01-24"),("2012-08-28","2014-06-08"),("2011-10-16","2014-01-22"),("2011-11-19","2014-06-12"),("2012-01-13","2013-12-22"),("2012-11-02","2014-06-30");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2011-10-30","2014-09-18"),("2013-03-11","2014-06-05"),("2013-08-22","2014-01-14"),("2013-07-19","2014-07-30"),("2013-08-01","2014-02-01"),("2013-05-21","2013-11-14"),("2013-08-03","2014-03-31"),("2013-02-10","2014-02-07"),("2013-07-29","2014-08-02"),("2011-12-03","2014-03-18");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-10-21","2014-07-05"),("2013-05-02","2014-05-29"),("2012-07-28","2014-04-13"),("2011-11-22","2014-08-18"),("2012-02-13","2014-08-21"),("2011-11-10","2014-05-14"),("2012-12-04","2014-07-25"),("2012-11-21","2013-12-30"),("2013-08-11","2014-03-02"),("2012-02-13","2014-08-08");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-01-06","2014-01-10"),("2013-07-23","2014-04-02"),("2013-05-18","2014-01-22"),("2013-02-28","2014-01-06"),("2012-08-03","2014-01-30"),("2013-03-16","2014-01-29"),("2012-02-15","2014-04-19"),("2012-10-10","2014-03-28"),("2011-10-17","2014-01-11"),("2012-05-11","2014-01-31");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2011-12-25","2014-06-28"),("2013-03-03","2013-10-23"),("2013-05-08","2013-11-06"),("2013-08-03","2014-06-10"),("2012-09-10","2014-08-03"),("2012-05-07","2014-09-22"),("2013-02-25","2014-09-12"),("2012-09-13","2014-08-19"),("2013-06-09","2014-10-12"),("2013-01-11","2014-01-06");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-07-11","2013-12-27"),("2013-06-04","2014-02-17"),("2011-10-31","2014-07-12"),("2013-05-05","2014-03-08"),("2012-09-22","2014-04-15"),("2013-01-11","2014-02-01"),("2013-02-09","2014-04-29"),("2013-08-15","2014-03-29"),("2012-12-19","2014-07-07"),("2012-12-03","2014-08-03");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-09-25","2013-12-10"),("2012-11-30","2014-10-03"),("2013-03-12","2013-11-07"),("2013-02-07","2014-09-26"),("2013-04-21","2014-02-09"),("2013-01-24","2013-12-03"),("2012-11-29","2014-01-08"),("2013-03-14","2014-09-20"),("2013-05-28","2013-12-16"),("2012-07-13","2014-10-10");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-06-20","2013-11-16"),("2013-06-07","2014-01-07"),("2013-05-28","2014-05-09"),("2011-12-02","2014-03-13"),("2012-12-30","2014-01-19"),("2011-11-25","2014-07-16"),("2013-08-19","2014-03-26"),("2012-09-10","2014-10-01"),("2012-06-25","2014-08-01"),("2012-03-16","2014-10-06");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2011-10-30","2014-05-24"),("2012-03-16","2014-06-17"),("2012-05-03","2014-03-24"),("2013-02-12","2014-09-16"),("2013-08-14","2013-12-06"),("2012-10-18","2014-07-30"),("2013-03-07","2014-05-22"),("2012-08-29","2014-05-30"),("2012-08-25","2013-12-19"),("2013-03-30","2014-07-02");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-09-25","2013-11-05"),("2011-11-30","2014-06-16"),("2013-06-22","2013-11-19"),("2013-09-25","2014-06-24"),("2013-09-20","2014-05-07"),("2012-11-06","2014-02-04"),("2012-01-16","2014-01-23"),("2012-05-04","2014-05-12"),("2013-09-03","2013-11-20"),("2012-04-08","2014-07-08");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-10-28","2014-01-05"),("2013-01-11","2014-09-29"),("2013-05-23","2014-06-01"),("2013-03-11","2014-08-16"),("2013-01-16","2014-05-18"),("2013-05-20","2013-11-03"),("2013-01-26","2014-01-21"),("2013-07-10","2014-04-22"),("2012-11-20","2014-08-08"),("2012-10-21","2014-07-25");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-08-22","2014-01-08"),("2013-01-31","2014-07-13"),("2013-06-15","2014-05-08"),("2013-02-02","2014-07-19"),("2011-10-07","2014-07-12"),("2013-09-25","2014-08-08"),("2012-10-23","2014-03-31"),("2013-03-07","2013-10-20"),("2012-02-11","2014-10-06"),("2011-11-01","2014-01-22");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-04-27","2014-05-30"),("2012-06-29","2014-04-18"),("2012-04-20","2014-07-05"),("2013-04-27","2014-05-23"),("2013-08-10","2013-12-07"),("2012-12-04","2014-08-21"),("2011-11-16","2014-01-01"),("2012-12-29","2014-09-21"),("2012-05-06","2014-08-10"),("2013-01-28","2013-11-28");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-05-30","2014-01-19"),("2013-04-27","2013-12-10"),("2011-11-21","2014-05-09"),("2012-10-28","2013-11-08"),("2013-04-03","2013-11-16"),("2012-04-06","2013-12-20"),("2012-05-31","2014-03-01"),("2013-01-05","2014-01-17"),("2013-01-05","2014-09-20"),("2013-01-09","2014-06-12");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2013-06-30","2014-09-11"),("2013-02-19","2014-06-29"),("2012-08-10","2014-05-15"),("2011-12-08","2013-11-10"),("2012-09-07","2014-08-25"),("2013-01-29","2014-03-08"),("2012-08-08","2014-09-03"),("2013-03-01","2014-03-31"),("2013-01-13","2014-06-23"),("2012-06-11","2014-02-09");
INSERT INTO `treatments` (`start_date`,`end_date`) VALUES ("2012-04-29","2013-11-08"),("2012-01-26","2014-07-18"),("2013-08-30","2014-09-04"),("2013-03-05","2014-09-28"),("2012-05-19","2014-06-09"),("2013-03-09","2014-04-03"),("2013-05-02","2014-09-16"),("2013-09-05","2014-05-22"),("2012-05-13","2014-08-24"),("2012-04-10","2014-08-28");
UPDATE `treatments` SET `id_card_record` = 252 WHERE `id` = 1;
UPDATE `treatments` SET `id_card_record` = 26 WHERE `id` = 2;
UPDATE `treatments` SET `id_card_record` = 220 WHERE `id` = 3;
UPDATE `treatments` SET `id_card_record` = 148 WHERE `id` = 4;
UPDATE `treatments` SET `id_card_record` = 98 WHERE `id` = 5;
UPDATE `treatments` SET `id_card_record` = 188 WHERE `id` = 6;
UPDATE `treatments` SET `id_card_record` = 218 WHERE `id` = 7;
UPDATE `treatments` SET `id_card_record` = 256 WHERE `id` = 8;
UPDATE `treatments` SET `id_card_record` = 128 WHERE `id` = 9;
UPDATE `treatments` SET `id_card_record` = 37 WHERE `id` = 10;
UPDATE `treatments` SET `id_card_record` = 272 WHERE `id` = 11;
UPDATE `treatments` SET `id_card_record` = 215 WHERE `id` = 12;
UPDATE `treatments` SET `id_card_record` = 8 WHERE `id` = 13;
UPDATE `treatments` SET `id_card_record` = 34 WHERE `id` = 14;
UPDATE `treatments` SET `id_card_record` = 14 WHERE `id` = 15;
UPDATE `treatments` SET `id_card_record` = 219 WHERE `id` = 16;
UPDATE `treatments` SET `id_card_record` = 256 WHERE `id` = 17;
UPDATE `treatments` SET `id_card_record` = 174 WHERE `id` = 18;
UPDATE `treatments` SET `id_card_record` = 260 WHERE `id` = 19;
UPDATE `treatments` SET `id_card_record` = 254 WHERE `id` = 20;
UPDATE `treatments` SET `id_card_record` = 267 WHERE `id` = 21;
UPDATE `treatments` SET `id_card_record` = 97 WHERE `id` = 22;
UPDATE `treatments` SET `id_card_record` = 128 WHERE `id` = 23;
UPDATE `treatments` SET `id_card_record` = 73 WHERE `id` = 24;
UPDATE `treatments` SET `id_card_record` = 42 WHERE `id` = 25;
UPDATE `treatments` SET `id_card_record` = 35 WHERE `id` = 26;
UPDATE `treatments` SET `id_card_record` = 124 WHERE `id` = 27;
UPDATE `treatments` SET `id_card_record` = 137 WHERE `id` = 28;
UPDATE `treatments` SET `id_card_record` = 116 WHERE `id` = 29;
UPDATE `treatments` SET `id_card_record` = 107 WHERE `id` = 30;
UPDATE `treatments` SET `id_card_record` = 104 WHERE `id` = 31;
UPDATE `treatments` SET `id_card_record` = 124 WHERE `id` = 32;
UPDATE `treatments` SET `id_card_record` = 47 WHERE `id` = 33;
UPDATE `treatments` SET `id_card_record` = 200 WHERE `id` = 34;
UPDATE `treatments` SET `id_card_record` = 210 WHERE `id` = 35;
UPDATE `treatments` SET `id_card_record` = 143 WHERE `id` = 36;
UPDATE `treatments` SET `id_card_record` = 196 WHERE `id` = 37;
UPDATE `treatments` SET `id_card_record` = 264 WHERE `id` = 38;
UPDATE `treatments` SET `id_card_record` = 55 WHERE `id` = 39;
UPDATE `treatments` SET `id_card_record` = 290 WHERE `id` = 40;
UPDATE `treatments` SET `id_card_record` = 264 WHERE `id` = 41;
UPDATE `treatments` SET `id_card_record` = 296 WHERE `id` = 42;
UPDATE `treatments` SET `id_card_record` = 161 WHERE `id` = 43;
UPDATE `treatments` SET `id_card_record` = 154 WHERE `id` = 44;
UPDATE `treatments` SET `id_card_record` = 101 WHERE `id` = 45;
UPDATE `treatments` SET `id_card_record` = 5 WHERE `id` = 46;
UPDATE `treatments` SET `id_card_record` = 218 WHERE `id` = 47;
UPDATE `treatments` SET `id_card_record` = 102 WHERE `id` = 48;
UPDATE `treatments` SET `id_card_record` = 131 WHERE `id` = 49;
UPDATE `treatments` SET `id_card_record` = 23 WHERE `id` = 50;
UPDATE `treatments` SET `id_card_record` = 78 WHERE `id` = 51;
UPDATE `treatments` SET `id_card_record` = 147 WHERE `id` = 52;
UPDATE `treatments` SET `id_card_record` = 18 WHERE `id` = 53;
UPDATE `treatments` SET `id_card_record` = 266 WHERE `id` = 54;
UPDATE `treatments` SET `id_card_record` = 169 WHERE `id` = 55;
UPDATE `treatments` SET `id_card_record` = 84 WHERE `id` = 56;
UPDATE `treatments` SET `id_card_record` = 249 WHERE `id` = 57;
UPDATE `treatments` SET `id_card_record` = 53 WHERE `id` = 58;
UPDATE `treatments` SET `id_card_record` = 29 WHERE `id` = 59;
UPDATE `treatments` SET `id_card_record` = 245 WHERE `id` = 60;
UPDATE `treatments` SET `id_card_record` = 282 WHERE `id` = 61;
UPDATE `treatments` SET `id_card_record` = 60 WHERE `id` = 62;
UPDATE `treatments` SET `id_card_record` = 32 WHERE `id` = 63;
UPDATE `treatments` SET `id_card_record` = 138 WHERE `id` = 64;
UPDATE `treatments` SET `id_card_record` = 64 WHERE `id` = 65;
UPDATE `treatments` SET `id_card_record` = 140 WHERE `id` = 66;
UPDATE `treatments` SET `id_card_record` = 210 WHERE `id` = 67;
UPDATE `treatments` SET `id_card_record` = 100 WHERE `id` = 68;
UPDATE `treatments` SET `id_card_record` = 227 WHERE `id` = 69;
UPDATE `treatments` SET `id_card_record` = 74 WHERE `id` = 70;
UPDATE `treatments` SET `id_card_record` = 261 WHERE `id` = 71;
UPDATE `treatments` SET `id_card_record` = 148 WHERE `id` = 72;
UPDATE `treatments` SET `id_card_record` = 174 WHERE `id` = 73;
UPDATE `treatments` SET `id_card_record` = 9 WHERE `id` = 74;
UPDATE `treatments` SET `id_card_record` = 49 WHERE `id` = 75;
UPDATE `treatments` SET `id_card_record` = 68 WHERE `id` = 76;
UPDATE `treatments` SET `id_card_record` = 82 WHERE `id` = 77;
UPDATE `treatments` SET `id_card_record` = 90 WHERE `id` = 78;
UPDATE `treatments` SET `id_card_record` = 85 WHERE `id` = 79;
UPDATE `treatments` SET `id_card_record` = 246 WHERE `id` = 80;
UPDATE `treatments` SET `id_card_record` = 222 WHERE `id` = 81;
UPDATE `treatments` SET `id_card_record` = 194 WHERE `id` = 82;
UPDATE `treatments` SET `id_card_record` = 288 WHERE `id` = 83;
UPDATE `treatments` SET `id_card_record` = 285 WHERE `id` = 84;
UPDATE `treatments` SET `id_card_record` = 236 WHERE `id` = 85;
UPDATE `treatments` SET `id_card_record` = 255 WHERE `id` = 86;
UPDATE `treatments` SET `id_card_record` = 36 WHERE `id` = 87;
UPDATE `treatments` SET `id_card_record` = 189 WHERE `id` = 88;
UPDATE `treatments` SET `id_card_record` = 280 WHERE `id` = 89;
UPDATE `treatments` SET `id_card_record` = 110 WHERE `id` = 90;
UPDATE `treatments` SET `id_card_record` = 164 WHERE `id` = 91;
UPDATE `treatments` SET `id_card_record` = 262 WHERE `id` = 92;
UPDATE `treatments` SET `id_card_record` = 83 WHERE `id` = 93;
UPDATE `treatments` SET `id_card_record` = 109 WHERE `id` = 94;
UPDATE `treatments` SET `id_card_record` = 258 WHERE `id` = 95;
UPDATE `treatments` SET `id_card_record` = 291 WHERE `id` = 96;
UPDATE `treatments` SET `id_card_record` = 244 WHERE `id` = 97;
UPDATE `treatments` SET `id_card_record` = 36 WHERE `id` = 98;
UPDATE `treatments` SET `id_card_record` = 246 WHERE `id` = 99;
UPDATE `treatments` SET `id_card_record` = 266 WHERE `id` = 100;
UPDATE `treatments` SET `id_card_record` = 72 WHERE `id` = 1;
UPDATE `treatments` SET `id_card_record` = 215 WHERE `id` = 2;
UPDATE `treatments` SET `id_card_record` = 154 WHERE `id` = 3;
UPDATE `treatments` SET `id_card_record` = 162 WHERE `id` = 4;
UPDATE `treatments` SET `id_card_record` = 38 WHERE `id` = 5;
UPDATE `treatments` SET `id_card_record` = 182 WHERE `id` = 6;
UPDATE `treatments` SET `id_card_record` = 154 WHERE `id` = 7;
UPDATE `treatments` SET `id_card_record` = 101 WHERE `id` = 8;
UPDATE `treatments` SET `id_card_record` = 63 WHERE `id` = 9;
UPDATE `treatments` SET `id_card_record` = 96 WHERE `id` = 10;
UPDATE `treatments` SET `id_card_record` = 269 WHERE `id` = 11;
UPDATE `treatments` SET `id_card_record` = 53 WHERE `id` = 12;
UPDATE `treatments` SET `id_card_record` = 270 WHERE `id` = 13;
UPDATE `treatments` SET `id_card_record` = 92 WHERE `id` = 14;
UPDATE `treatments` SET `id_card_record` = 289 WHERE `id` = 15;
UPDATE `treatments` SET `id_card_record` = 251 WHERE `id` = 16;
UPDATE `treatments` SET `id_card_record` = 97 WHERE `id` = 17;
UPDATE `treatments` SET `id_card_record` = 36 WHERE `id` = 18;
UPDATE `treatments` SET `id_card_record` = 164 WHERE `id` = 19;
UPDATE `treatments` SET `id_card_record` = 253 WHERE `id` = 20;
UPDATE `treatments` SET `id_card_record` = 282 WHERE `id` = 21;
UPDATE `treatments` SET `id_card_record` = 267 WHERE `id` = 22;
UPDATE `treatments` SET `id_card_record` = 124 WHERE `id` = 23;
UPDATE `treatments` SET `id_card_record` = 139 WHERE `id` = 24;
UPDATE `treatments` SET `id_card_record` = 257 WHERE `id` = 25;
UPDATE `treatments` SET `id_card_record` = 45 WHERE `id` = 26;
UPDATE `treatments` SET `id_card_record` = 134 WHERE `id` = 27;
UPDATE `treatments` SET `id_card_record` = 109 WHERE `id` = 28;
UPDATE `treatments` SET `id_card_record` = 267 WHERE `id` = 29;
UPDATE `treatments` SET `id_card_record` = 208 WHERE `id` = 30;
UPDATE `treatments` SET `id_card_record` = 178 WHERE `id` = 31;
UPDATE `treatments` SET `id_card_record` = 20 WHERE `id` = 32;
UPDATE `treatments` SET `id_card_record` = 274 WHERE `id` = 33;
UPDATE `treatments` SET `id_card_record` = 194 WHERE `id` = 34;
UPDATE `treatments` SET `id_card_record` = 177 WHERE `id` = 35;
UPDATE `treatments` SET `id_card_record` = 160 WHERE `id` = 36;
UPDATE `treatments` SET `id_card_record` = 114 WHERE `id` = 37;
UPDATE `treatments` SET `id_card_record` = 271 WHERE `id` = 38;
UPDATE `treatments` SET `id_card_record` = 157 WHERE `id` = 39;
UPDATE `treatments` SET `id_card_record` = 43 WHERE `id` = 40;
UPDATE `treatments` SET `id_card_record` = 86 WHERE `id` = 41;
UPDATE `treatments` SET `id_card_record` = 290 WHERE `id` = 42;
UPDATE `treatments` SET `id_card_record` = 90 WHERE `id` = 43;
UPDATE `treatments` SET `id_card_record` = 194 WHERE `id` = 44;
UPDATE `treatments` SET `id_card_record` = 204 WHERE `id` = 45;
UPDATE `treatments` SET `id_card_record` = 263 WHERE `id` = 46;
UPDATE `treatments` SET `id_card_record` = 151 WHERE `id` = 47;
UPDATE `treatments` SET `id_card_record` = 149 WHERE `id` = 48;
UPDATE `treatments` SET `id_card_record` = 183 WHERE `id` = 49;
UPDATE `treatments` SET `id_card_record` = 47 WHERE `id` = 50;
UPDATE `treatments` SET `id_card_record` = 93 WHERE `id` = 51;
UPDATE `treatments` SET `id_card_record` = 166 WHERE `id` = 52;
UPDATE `treatments` SET `id_card_record` = 267 WHERE `id` = 53;
UPDATE `treatments` SET `id_card_record` = 9 WHERE `id` = 54;
UPDATE `treatments` SET `id_card_record` = 244 WHERE `id` = 55;
UPDATE `treatments` SET `id_card_record` = 284 WHERE `id` = 56;
UPDATE `treatments` SET `id_card_record` = 207 WHERE `id` = 57;
UPDATE `treatments` SET `id_card_record` = 127 WHERE `id` = 58;
UPDATE `treatments` SET `id_card_record` = 138 WHERE `id` = 59;
UPDATE `treatments` SET `id_card_record` = 258 WHERE `id` = 60;
UPDATE `treatments` SET `id_card_record` = 264 WHERE `id` = 61;
UPDATE `treatments` SET `id_card_record` = 6 WHERE `id` = 62;
UPDATE `treatments` SET `id_card_record` = 100 WHERE `id` = 63;
UPDATE `treatments` SET `id_card_record` = 179 WHERE `id` = 64;
UPDATE `treatments` SET `id_card_record` = 65 WHERE `id` = 65;
UPDATE `treatments` SET `id_card_record` = 297 WHERE `id` = 66;
UPDATE `treatments` SET `id_card_record` = 60 WHERE `id` = 67;
UPDATE `treatments` SET `id_card_record` = 79 WHERE `id` = 68;
UPDATE `treatments` SET `id_card_record` = 209 WHERE `id` = 69;
UPDATE `treatments` SET `id_card_record` = 150 WHERE `id` = 70;
UPDATE `treatments` SET `id_card_record` = 136 WHERE `id` = 71;
UPDATE `treatments` SET `id_card_record` = 121 WHERE `id` = 72;
UPDATE `treatments` SET `id_card_record` = 28 WHERE `id` = 73;
UPDATE `treatments` SET `id_card_record` = 188 WHERE `id` = 74;
UPDATE `treatments` SET `id_card_record` = 150 WHERE `id` = 75;
UPDATE `treatments` SET `id_card_record` = 223 WHERE `id` = 76;
UPDATE `treatments` SET `id_card_record` = 272 WHERE `id` = 77;
UPDATE `treatments` SET `id_card_record` = 252 WHERE `id` = 78;
UPDATE `treatments` SET `id_card_record` = 184 WHERE `id` = 79;
UPDATE `treatments` SET `id_card_record` = 278 WHERE `id` = 80;
UPDATE `treatments` SET `id_card_record` = 249 WHERE `id` = 81;
UPDATE `treatments` SET `id_card_record` = 90 WHERE `id` = 82;
UPDATE `treatments` SET `id_card_record` = 8 WHERE `id` = 83;
UPDATE `treatments` SET `id_card_record` = 116 WHERE `id` = 84;
UPDATE `treatments` SET `id_card_record` = 17 WHERE `id` = 85;
UPDATE `treatments` SET `id_card_record` = 275 WHERE `id` = 86;
UPDATE `treatments` SET `id_card_record` = 132 WHERE `id` = 87;
UPDATE `treatments` SET `id_card_record` = 60 WHERE `id` = 88;
UPDATE `treatments` SET `id_card_record` = 232 WHERE `id` = 89;
UPDATE `treatments` SET `id_card_record` = 184 WHERE `id` = 90;
UPDATE `treatments` SET `id_card_record` = 207 WHERE `id` = 91;
UPDATE `treatments` SET `id_card_record` = 98 WHERE `id` = 92;
UPDATE `treatments` SET `id_card_record` = 170 WHERE `id` = 93;
UPDATE `treatments` SET `id_card_record` = 194 WHERE `id` = 94;
UPDATE `treatments` SET `id_card_record` = 166 WHERE `id` = 95;
UPDATE `treatments` SET `id_card_record` = 74 WHERE `id` = 96;
UPDATE `treatments` SET `id_card_record` = 252 WHERE `id` = 97;
UPDATE `treatments` SET `id_card_record` = 142 WHERE `id` = 98;
UPDATE `treatments` SET `id_card_record` = 58 WHERE `id` = 99;
UPDATE `treatments` SET `id_card_record` = 25 WHERE `id` = 100;
UPDATE `treatments` SET `id_card_record` = 143 WHERE `id` = 146;
UPDATE `treatments` SET `id_card_record` = 146 WHERE `id` = 271;
UPDATE `treatments` SET `id_card_record` = 202 WHERE `id` = 280;
UPDATE `treatments` SET `id_card_record` = 285 WHERE `id` = 219;
UPDATE `treatments` SET `id_card_record` = 74 WHERE `id` = 168;
UPDATE `treatments` SET `id_card_record` = 282 WHERE `id` = 145;
UPDATE `treatments` SET `id_card_record` = 299 WHERE `id` = 274;
UPDATE `treatments` SET `id_card_record` = 114 WHERE `id` = 109;
UPDATE `treatments` SET `id_card_record` = 6 WHERE `id` = 160;
UPDATE `treatments` SET `id_card_record` = 217 WHERE `id` = 160;
UPDATE `treatments` SET `id_card_record` = 284 WHERE `id` = 282;
UPDATE `treatments` SET `id_card_record` = 93 WHERE `id` = 140;
UPDATE `treatments` SET `id_card_record` = 241 WHERE `id` = 110;
UPDATE `treatments` SET `id_card_record` = 65 WHERE `id` = 124;
UPDATE `treatments` SET `id_card_record` = 111 WHERE `id` = 246;
UPDATE `treatments` SET `id_card_record` = 151 WHERE `id` = 283;
UPDATE `treatments` SET `id_card_record` = 71 WHERE `id` = 291;
UPDATE `treatments` SET `id_card_record` = 6 WHERE `id` = 177;
UPDATE `treatments` SET `id_card_record` = 66 WHERE `id` = 191;
UPDATE `treatments` SET `id_card_record` = 144 WHERE `id` = 298;
UPDATE `treatments` SET `id_card_record` = 66 WHERE `id` = 284;
UPDATE `treatments` SET `id_card_record` = 55 WHERE `id` = 268;
UPDATE `treatments` SET `id_card_record` = 65 WHERE `id` = 180;
UPDATE `treatments` SET `id_card_record` = 154 WHERE `id` = 121;
UPDATE `treatments` SET `id_card_record` = 210 WHERE `id` = 142;
UPDATE `treatments` SET `id_card_record` = 261 WHERE `id` = 165;
UPDATE `treatments` SET `id_card_record` = 19 WHERE `id` = 137;
UPDATE `treatments` SET `id_card_record` = 109 WHERE `id` = 271;
UPDATE `treatments` SET `id_card_record` = 222 WHERE `id` = 195;
UPDATE `treatments` SET `id_card_record` = 10 WHERE `id` = 271;
UPDATE `treatments` SET `id_card_record` = 195 WHERE `id` = 256;
UPDATE `treatments` SET `id_card_record` = 68 WHERE `id` = 233;
UPDATE `treatments` SET `id_card_record` = 229 WHERE `id` = 185;
UPDATE `treatments` SET `id_card_record` = 139 WHERE `id` = 196;
UPDATE `treatments` SET `id_card_record` = 295 WHERE `id` = 300 ;
UPDATE `treatments` SET `id_card_record` = 33 WHERE `id` = 125;
UPDATE `treatments` SET `id_card_record` = 100 WHERE `id` = 211;
UPDATE `treatments` SET `id_card_record` = 228 WHERE `id` = 210;
UPDATE `treatments` SET `id_card_record` = 223 WHERE `id` = 257;
UPDATE `treatments` SET `id_card_record` = 122 WHERE `id` = 211;
UPDATE `treatments` SET `id_card_record` = 235 WHERE `id` = 278;
UPDATE `treatments` SET `id_card_record` = 178 WHERE `id` = 234;
UPDATE `treatments` SET `id_card_record` = 176 WHERE `id` = 125;
UPDATE `treatments` SET `id_card_record` = 162 WHERE `id` = 110;
UPDATE `treatments` SET `id_card_record` = 239 WHERE `id` = 177;
UPDATE `treatments` SET `id_card_record` = 207 WHERE `id` = 176;
UPDATE `treatments` SET `id_card_record` = 134 WHERE `id` = 125;
UPDATE `treatments` SET `id_card_record` = 196 WHERE `id` = 282;
UPDATE `treatments` SET `id_card_record` = 261 WHERE `id` = 297;
UPDATE `treatments` SET `id_card_record` = 2 WHERE `id` = 144;
UPDATE `treatments` SET `id_card_record` = 144 WHERE `id` = 296;
UPDATE `treatments` SET `id_card_record` = 92 WHERE `id` = 223;
UPDATE `treatments` SET `id_card_record` = 70 WHERE `id` = 274;
UPDATE `treatments` SET `id_card_record` = 16 WHERE `id` = 169;
UPDATE `treatments` SET `id_card_record` = 295 WHERE `id` = 140;
UPDATE `treatments` SET `id_card_record` = 56 WHERE `id` = 157;
UPDATE `treatments` SET `id_card_record` = 92 WHERE `id` = 208;
UPDATE `treatments` SET `id_card_record` = 114 WHERE `id` = 107;
UPDATE `treatments` SET `id_card_record` = 92 WHERE `id` = 160;
UPDATE `treatments` SET `id_card_record` = 81 WHERE `id` = 133;
UPDATE `treatments` SET `id_card_record` = 178 WHERE `id` = 275;
UPDATE `treatments` SET `id_card_record` = 69 WHERE `id` = 198;
UPDATE `treatments` SET `id_card_record` = 58 WHERE `id` = 267;
UPDATE `treatments` SET `id_card_record` = 115 WHERE `id` = 200;
UPDATE `treatments` SET `id_card_record` = 57 WHERE `id` = 244;
UPDATE `treatments` SET `id_card_record` = 110 WHERE `id` = 138;
UPDATE `treatments` SET `id_card_record` = 102 WHERE `id` = 270;
UPDATE `treatments` SET `id_card_record` = 130 WHERE `id` = 192;
UPDATE `treatments` SET `id_card_record` = 69 WHERE `id` = 214;
UPDATE `treatments` SET `id_card_record` = 97 WHERE `id` = 287;
UPDATE `treatments` SET `id_card_record` = 184 WHERE `id` = 139;
UPDATE `treatments` SET `id_card_record` = 265 WHERE `id` = 141;
UPDATE `treatments` SET `id_card_record` = 151 WHERE `id` = 125;
UPDATE `treatments` SET `id_card_record` = 200 WHERE `id` = 197;
UPDATE `treatments` SET `id_card_record` = 246 WHERE `id` = 101;
UPDATE `treatments` SET `id_card_record` = 36 WHERE `id` = 158;
UPDATE `treatments` SET `id_card_record` = 173 WHERE `id` = 243;
UPDATE `treatments` SET `id_card_record` = 70 WHERE `id` = 172;
UPDATE `treatments` SET `id_card_record` = 297 WHERE `id` = 253;
UPDATE `treatments` SET `id_card_record` = 129 WHERE `id` = 134;
UPDATE `treatments` SET `id_card_record` = 157 WHERE `id` = 166;
UPDATE `treatments` SET `id_card_record` = 211 WHERE `id` = 196;
UPDATE `treatments` SET `id_card_record` = 110 WHERE `id` = 210;
UPDATE `treatments` SET `id_card_record` = 280 WHERE `id` = 267;
UPDATE `treatments` SET `id_card_record` = 27 WHERE `id` = 200;
UPDATE `treatments` SET `id_card_record` = 200 WHERE `id` = 228;
UPDATE `treatments` SET `id_card_record` = 89 WHERE `id` = 147;
UPDATE `treatments` SET `id_card_record` = 191 WHERE `id` = 174;
UPDATE `treatments` SET `id_card_record` = 164 WHERE `id` = 178;
UPDATE `treatments` SET `id_card_record` = 104 WHERE `id` = 295;
UPDATE `treatments` SET `id_card_record` = 45 WHERE `id` = 146;
UPDATE `treatments` SET `id_card_record` = 212 WHERE `id` = 130;
UPDATE `treatments` SET `id_card_record` = 96 WHERE `id` = 164;
UPDATE `treatments` SET `id_card_record` = 292 WHERE `id` = 170;
UPDATE `treatments` SET `id_card_record` = 199 WHERE `id` = 200;
UPDATE `treatments` SET `id_card_record` = 113 WHERE `id` = 277;
UPDATE `treatments` SET `id_card_record` = 194 WHERE `id` = 253;
UPDATE `treatments` SET `id_card_record` = 146 WHERE `id` = 171;
UPDATE `treatments` SET `id_card_record` = 240 WHERE `id` = 292;
UPDATE `treatments` SET `id_card_record` = 84 WHERE `id` = 155;
UPDATE treatments t1, treatments t2 SET t1.id_card_record=null WHERE t1.id>t2.id AND t1.id_card_record=t2.id_card_record;
-- table treatments counts 300 units

-- insert prescriptions into prescriptions table
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (52,"30","67","2013-10-13","2014-09-13",1),(266,"91","74","2014-03-21","2014-03-15",1),(163,"62","4","2013-10-01","2012-10-11",1),(130,"18","75","2013-12-06","2013-06-19",2),(246,"84","66","2013-05-29","2014-03-13",1),(264,"11","4","2013-09-21","2013-10-07",1),(194,"23","5","2014-01-28","2013-01-07",2),(26,"93","67","2013-01-04","2012-11-02",2),(66,"47","29","2013-09-08","2013-10-11",2),(100,"49","99","2012-11-30","2012-11-06",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (286,"93","4","2013-12-29","2014-08-20",1),(296,"50","10","2013-10-27","2014-05-01",1),(73,"2","66","2013-05-22","2013-03-01",1),(230,"60","94","2014-01-21","2014-06-24",1),(169,"97","99","2013-12-02","2014-06-25",2),(220,"4","72","2013-07-11","2012-12-16",2),(170,"47","56","2014-09-08","2014-05-16",1),(35,"85","35","2014-01-07","2014-03-16",2),(290,"53","48","2013-09-18","2013-06-11",2),(238,"27","66","2013-09-15","2012-12-17",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (211,"9","48","2012-12-07","2013-06-01",1),(223,"19","77","2014-09-28","2012-10-29",2),(261,"81","28","2013-12-20","2012-10-09",1),(141,"95","22","2014-03-26","2013-04-24",2),(297,"13","5","2013-05-23","2014-02-16",2),(83,"40","10","2014-05-03","2013-11-11",1),(35,"42","38","2014-01-14","2012-10-25",1),(3,"58","8","2013-07-26","2013-10-31",2),(6,"75","68","2013-09-19","2013-04-25",1),(130,"84","28","2014-07-19","2013-09-07",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (194,"48","4","2013-04-10","2013-10-27",2),(146,"72","8","2013-01-21","2013-06-10",1),(54,"62","38","2014-09-10","2013-12-23",2),(295,"76","74","2014-03-30","2013-10-30",2),(67,"13","99","2013-04-29","2014-03-08",1),(214,"23","77","2012-10-25","2013-02-14",1),(294,"75","94","2013-04-07","2014-07-17",2),(46,"60","28","2012-10-01","2013-01-01",2),(83,"27","77","2014-09-26","2014-02-18",1),(72,"71","37","2014-07-26","2014-09-30",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (276,"40","34","2013-10-09","2014-01-05",2),(261,"13","74","2013-06-13","2012-11-16",1),(300,"75","31","2013-12-17","2013-12-27",1),(233,"72","67","2012-10-20","2014-02-24",2),(61,"49","35","2012-12-25","2013-06-22",1),(91,"84","34","2014-08-09","2014-03-26",2),(70,"62","68","2014-09-19","2014-07-21",2),(69,"58","5","2014-05-24","2013-06-12",1),(150,"83","62","2014-06-25","2014-08-04",1),(225,"71","34","2012-10-26","2013-10-12",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (145,"19","37","2012-11-09","2012-12-13",2),(290,"19","67","2014-04-25","2012-10-14",2),(256,"18","99","2014-07-23","2013-12-11",1),(198,"60","75","2012-11-29","2014-05-14",2),(268,"25","68","2013-08-10","2014-05-24",1),(3,"48","99","2013-07-12","2013-09-08",1),(132,"19","99","2014-05-19","2014-02-08",1),(241,"91","28","2013-04-22","2013-05-31",2),(243,"92","48","2013-03-18","2013-07-24",2),(138,"19","66","2013-10-24","2013-09-30",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (117,"15","94","2014-04-08","2014-01-10",2),(15,"57","74","2013-02-08","2012-12-14",1),(116,"49","66","2013-04-18","2014-09-15",2),(59,"19","94","2013-05-22","2012-12-15",1),(159,"42","56","2013-01-15","2013-11-14",2),(62,"48","29","2013-12-10","2014-04-17",2),(152,"84","80","2013-04-13","2013-10-05",1),(278,"69","22","2013-12-01","2013-08-27",2),(184,"53","75","2014-05-11","2014-04-19",1),(297,"46","37","2014-06-17","2012-12-22",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (14,"58","75","2013-01-13","2013-08-15",1),(294,"76","72","2014-08-18","2013-11-16",2),(174,"27","77","2013-04-21","2013-03-27",2),(38,"63","99","2014-06-23","2013-02-08",1),(97,"53","99","2013-09-21","2013-09-28",1),(265,"63","31","2013-03-18","2013-01-04",1),(142,"91","29","2014-08-04","2012-12-15",1),(118,"81","56","2013-04-28","2013-04-11",2),(297,"71","5","2014-04-16","2012-10-27",1),(9,"23","31","2014-05-10","2013-01-18",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (103,"19","72","2013-06-21","2013-08-26",1),(264,"49","68","2013-12-10","2013-09-28",2),(224,"72","5","2013-05-04","2013-04-28",1),(272,"25","38","2014-03-09","2013-09-02",1),(22,"58","48","2014-07-09","2014-03-28",2),(99,"76","56","2012-12-16","2013-05-16",1),(85,"50","77","2014-06-24","2013-02-06",2),(236,"65","67","2012-12-10","2013-11-24",1),(227,"62","56","2014-01-09","2014-01-12",2),(73,"32","8","2014-07-01","2012-12-23",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (86,"19","56","2013-02-11","2014-09-03",2),(134,"98","74","2013-10-10","2012-10-30",1),(89,"79","28","2012-10-06","2014-09-18",1),(281,"93","75","2013-10-21","2013-01-27",2),(224,"12","68","2014-01-24","2013-05-01",1),(191,"71","34","2012-12-09","2013-06-10",1),(291,"76","75","2012-11-01","2012-12-14",1),(210,"42","38","2012-10-03","2013-06-10",2),(239,"62","94","2013-04-05","2014-05-27",2),(270,"49","22","2013-10-01","2013-10-15",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (215,"84","66","2013-03-05","2013-01-07",2),(86,"19","8","2013-08-01","2013-02-03",1),(184,"19","80","2013-02-11","2013-12-16",2),(174,"85","22","2013-02-18","2012-11-28",2),(168,"4","37","2013-11-09","2012-12-29",1),(72,"48","72","2013-05-06","2012-11-25",2),(112,"5","8","2012-10-31","2013-09-20",2),(281,"19","29","2013-07-02","2013-03-17",1),(61,"19","74","2013-07-28","2014-02-21",1),(87,"30","10","2014-09-04","2013-12-03",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (278,"9","68","2013-08-21","2012-12-20",2),(102,"71","35","2013-10-28","2014-03-23",1),(12,"2","29","2013-05-14","2014-07-16",1),(24,"13","37","2013-10-17","2012-10-23",1),(164,"42","28","2013-02-22","2014-08-05",2),(199,"75","56","2013-01-24","2014-10-10",2),(41,"98","5","2013-09-22","2014-08-23",1),(179,"9","62","2013-09-24","2014-07-18",2),(138,"72","74","2013-03-01","2013-01-26",2),(35,"78","72","2012-10-29","2014-04-20",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (215,"95","80","2013-12-22","2014-03-12",1),(88,"45","4","2014-02-15","2013-07-17",1),(162,"18","38","2013-10-03","2014-09-14",1),(248,"48","94","2012-10-16","2013-12-23",1),(96,"72","29","2013-10-14","2012-10-06",2),(176,"30","10","2013-12-23","2013-07-01",2),(153,"18","75","2013-04-11","2013-10-09",2),(253,"27","38","2014-10-06","2013-07-25",2),(88,"19","34","2014-02-03","2013-04-06",1),(282,"69","72","2013-11-03","2014-03-07",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (5,"92","20","2013-12-19","2014-10-05",1),(34,"57","34","2014-05-24","2014-03-30",2),(55,"81","35","2014-06-30","2014-05-08",1),(53,"40","48","2013-02-19","2014-08-21",2),(9,"76","20","2013-04-30","2013-06-09",1),(154,"72","29","2012-12-03","2013-04-25",1),(37,"41","62","2014-03-24","2013-09-17",1),(38,"97","94","2014-07-01","2014-08-26",1),(298,"98","22","2013-06-17","2013-10-18",2),(219,"79","38","2013-04-14","2014-09-27",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (96,"69","37","2013-03-26","2013-01-24",2),(57,"30","37","2014-03-07","2014-08-13",2),(183,"30","31","2012-12-23","2013-05-02",1),(209,"32","56","2014-08-01","2014-07-02",2),(9,"58","28","2013-03-23","2014-02-06",1),(103,"59","74","2014-05-03","2013-02-05",2),(163,"25","48","2012-12-10","2013-02-16",1),(216,"18","80","2014-07-04","2013-01-04",1),(106,"97","38","2014-09-13","2014-07-09",1),(152,"64","56","2014-06-07","2012-12-18",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (59,"95","67","2013-06-12","2012-10-31",2),(187,"4","66","2014-04-03","2013-04-05",2),(154,"11","99","2013-10-25","2012-11-03",1),(261,"76","10","2013-11-07","2013-03-11",2),(266,"92","75","2012-11-04","2013-09-22",2),(74,"48","4","2013-03-20","2014-10-02",2),(160,"98","31","2013-05-21","2013-10-16",1),(219,"59","68","2013-07-06","2013-10-28",1),(230,"53","38","2014-06-28","2012-10-07",1),(219,"27","67","2014-06-30","2014-08-25",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (125,"2","75","2014-08-12","2013-05-03",2),(68,"60","8","2013-11-28","2014-02-10",1),(185,"5","67","2013-02-11","2013-01-27",1),(156,"25","75","2013-06-27","2013-06-11",2),(162,"93","31","2013-01-08","2012-12-31",1),(138,"19","62","2014-06-02","2013-12-01",1),(164,"2","66","2012-12-26","2013-03-17",1),(289,"96","37","2013-09-11","2013-02-08",1),(219,"91","66","2013-07-16","2013-01-31",1),(277,"60","4","2012-10-16","2014-01-10",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (300,"93","67","2014-08-14","2014-04-19",2),(202,"65","67","2012-11-05","2012-12-15",2),(112,"41","35","2014-08-01","2013-02-03",2),(111,"71","74","2012-11-28","2014-09-03",2),(236,"5","80","2013-07-02","2013-01-09",1),(223,"59","99","2014-01-09","2012-11-11",1),(191,"71","22","2013-02-02","2014-03-01",2),(2,"92","35","2013-08-17","2013-03-11",2),(267,"57","10","2013-05-31","2013-12-04",1),(63,"64","66","2013-03-20","2013-10-07",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (123,"79","22","2013-09-05","2014-08-26",1),(285,"19","31","2013-12-04","2014-09-30",2),(197,"83","62","2012-10-05","2013-09-09",2),(98,"26","56","2013-04-19","2014-08-05",1),(247,"27","35","2013-01-16","2013-03-01",2),(94,"49","48","2013-09-19","2013-07-18",2),(262,"49","74","2013-11-20","2014-06-08",2),(147,"57","80","2013-09-07","2013-12-22",2),(105,"98","62","2014-09-28","2014-01-13",1),(115,"30","38","2013-05-14","2013-06-26",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (271,"62","28","2013-08-19","2014-05-18",1),(205,"62","72","2013-01-10","2013-07-19",1),(284,"12","5","2012-11-09","2013-11-13",2),(276,"19","28","2013-02-17","2014-03-12",1),(21,"4","56","2013-03-07","2013-03-13",2),(129,"75","5","2013-03-21","2014-07-15",2),(31,"5","28","2014-09-16","2012-11-03",2),(10,"40","75","2013-11-25","2012-10-20",2),(141,"4","99","2013-01-20","2014-03-31",2),(44,"23","29","2014-05-18","2013-01-28",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (137,"32","37","2013-04-27","2014-03-05",2),(4,"5","8","2014-07-26","2013-10-16",1),(179,"84","77","2014-04-18","2012-12-25",2),(60,"64","68","2014-01-02","2014-06-16",1),(42,"19","4","2014-09-27","2013-09-03",2),(195,"98","8","2012-12-28","2013-12-21",1),(275,"19","66","2013-05-24","2014-06-08",2),(59,"47","20","2014-07-16","2014-09-30",2),(37,"26","4","2013-04-03","2014-10-02",2),(32,"19","62","2012-12-22","2013-12-29",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (269,"30","4","2014-09-13","2014-04-18",1),(54,"49","38","2014-04-05","2014-02-23",1),(42,"91","68","2013-07-22","2013-07-11",1),(236,"96","38","2014-01-29","2013-05-02",1),(115,"25","75","2013-07-08","2014-03-02",2),(43,"9","72","2013-04-08","2014-07-06",2),(283,"23","8","2013-08-29","2013-11-06",2),(33,"40","20","2012-12-15","2014-03-26",2),(126,"46","56","2014-03-09","2014-07-02",2),(206,"58","5","2014-04-30","2014-03-03",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (195,"13","48","2013-03-13","2013-11-01",1),(41,"59","31","2013-10-11","2014-02-06",1),(267,"45","66","2014-07-14","2013-07-27",2),(207,"76","8","2013-11-07","2014-06-27",1),(189,"69","75","2013-05-08","2014-02-02",1),(245,"62","37","2013-04-02","2014-10-11",2),(277,"12","22","2014-01-02","2012-10-27",2),(295,"75","20","2014-07-13","2012-10-03",1),(79,"26","75","2013-03-30","2014-06-30",1),(273,"49","99","2014-06-28","2013-12-04",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (69,"58","31","2013-05-01","2013-04-20",1),(129,"48","20","2014-01-28","2013-07-13",1),(121,"95","75","2014-02-26","2014-03-06",2),(264,"91","80","2013-02-15","2014-10-11",2),(90,"96","28","2014-05-04","2013-01-31",2),(1,"11","62","2013-01-31","2013-09-11",2),(136,"71","77","2012-11-03","2014-07-03",1),(117,"76","4","2014-07-21","2012-11-04",1),(235,"45","20","2014-10-02","2013-01-18",2),(46,"93","56","2013-08-27","2014-02-22",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (43,"97","99","2014-01-30","2013-03-19",2),(211,"11","75","2013-11-30","2013-12-16",1),(176,"11","75","2013-04-17","2014-08-19",1),(55,"62","77","2014-07-05","2013-10-18",1),(95,"41","80","2012-11-30","2014-09-10",1),(292,"82","74","2014-09-12","2013-12-29",2),(85,"30","56","2014-08-14","2013-12-23",1),(75,"97","68","2013-03-06","2012-12-06",2),(276,"42","34","2013-10-29","2014-03-19",2),(142,"71","66","2013-12-24","2014-03-08",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (227,"13","22","2012-11-12","2013-05-03",2),(152,"48","72","2014-09-15","2013-10-25",2),(290,"62","74","2014-08-07","2012-11-11",2),(213,"9","68","2014-10-08","2013-01-09",2),(290,"79","77","2013-04-30","2014-04-26",1),(102,"15","20","2013-12-11","2014-04-04",2),(112,"62","35","2014-03-30","2013-12-27",2),(180,"5","68","2014-06-06","2014-02-12",2),(192,"18","99","2012-12-18","2014-01-22",1),(88,"83","62","2014-10-02","2013-03-03",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (116,"5","38","2014-10-08","2014-09-27",2),(99,"19","77","2014-04-13","2014-09-23",1),(260,"63","4","2013-10-13","2013-11-12",2),(173,"32","20","2014-08-14","2013-09-20",1),(67,"69","37","2012-11-18","2013-10-06",1),(107,"19","31","2013-02-05","2014-04-21",1),(105,"69","4","2013-06-27","2014-07-18",2),(117,"76","34","2014-04-23","2014-01-05",1),(135,"30","68","2013-11-23","2013-09-20",1),(268,"41","99","2014-06-24","2014-02-12",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (111,"65","74","2014-01-26","2014-01-19",1),(124,"72","8","2014-07-30","2014-09-29",2),(169,"47","94","2012-12-09","2014-09-26",1),(181,"92","10","2013-09-09","2012-11-08",2),(276,"71","62","2013-03-01","2014-02-03",2),(116,"57","99","2013-12-30","2013-02-09",2),(66,"76","34","2014-01-07","2013-05-16",2),(183,"92","75","2013-03-30","2012-11-05",1),(192,"19","72","2012-12-06","2013-10-27",2),(209,"32","22","2013-06-14","2012-11-26",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (67,"96","29","2013-01-17","2013-09-08",2),(55,"96","72","2014-04-13","2012-12-26",2),(13,"76","67","2012-10-25","2012-11-27",1),(242,"81","4","2014-02-14","2013-10-04",1),(243,"63","80","2013-04-18","2014-06-24",2),(60,"53","8","2012-10-20","2013-02-27",2),(25,"32","75","2013-03-29","2013-07-03",2),(121,"47","68","2013-09-26","2014-04-06",1),(277,"58","38","2013-09-15","2013-02-28",2),(32,"18","75","2014-10-08","2013-02-22",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (265,"78","67","2013-03-30","2013-02-21",2),(282,"47","72","2013-06-28","2013-12-18",2),(15,"95","28","2012-10-21","2013-07-22",1),(190,"4","72","2014-01-28","2013-10-03",1),(79,"82","37","2013-01-19","2014-02-10",1),(3,"98","74","2013-10-17","2013-06-06",1),(261,"75","56","2014-10-12","2014-05-26",2),(41,"5","8","2012-10-15","2014-09-28",2),(50,"60","67","2014-06-12","2013-04-08",2),(182,"19","34","2013-04-19","2012-11-24",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (45,"85","4","2012-11-25","2014-05-31",2),(38,"47","94","2014-07-17","2014-02-27",2),(112,"53","72","2014-04-29","2013-05-31",1),(97,"82","68","2013-07-20","2013-12-01",1),(51,"72","4","2013-08-16","2014-06-09",1),(25,"64","74","2013-11-07","2013-05-18",1),(104,"46","31","2013-09-05","2014-02-23",2),(18,"84","29","2012-12-27","2014-10-18",2),(65,"45","72","2013-11-07","2013-07-23",2),(269,"9","99","2014-05-12","2013-11-12",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (34,"78","5","2014-08-26","2012-11-17",2),(260,"85","80","2014-09-18","2013-01-28",1),(69,"85","48","2012-10-10","2013-09-13",1),(100,"72","35","2013-02-13","2014-07-30",1),(203,"76","72","2013-05-08","2013-04-07",2),(66,"63","94","2013-04-19","2013-09-28",2),(249,"25","20","2013-04-30","2012-10-19",1),(192,"13","56","2014-01-09","2013-09-22",1),(33,"96","22","2013-11-21","2014-01-19",2),(14,"9","72","2014-07-27","2013-11-02",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (283,"71","34","2014-08-10","2014-08-24",2),(122,"19","74","2014-07-07","2013-07-20",1),(170,"78","22","2013-04-23","2014-08-04",2),(64,"53","10","2014-01-08","2014-05-21",1),(288,"45","62","2014-10-08","2013-11-20",2),(258,"92","74","2013-07-19","2013-08-21",2),(234,"85","37","2013-02-18","2014-08-23",2),(109,"25","4","2013-03-17","2014-01-09",1),(163,"5","72","2012-10-01","2012-10-08",1),(63,"19","28","2012-12-17","2014-07-16",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (151,"78","62","2013-01-11","2013-08-09",2),(223,"23","28","2014-06-23","2014-08-25",2),(37,"63","8","2014-03-29","2014-02-11",2),(174,"97","56","2013-11-29","2013-07-12",1),(155,"11","5","2013-11-15","2014-07-04",2),(207,"41","94","2013-07-25","2013-12-11",2),(37,"46","28","2013-07-18","2014-04-02",1),(300,"12","5","2013-10-14","2014-10-11",2),(278,"59","80","2014-05-16","2013-01-14",1),(123,"32","8","2014-05-17","2013-06-03",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (288,"91","66","2014-03-17","2014-08-17",2),(10,"32","74","2014-10-06","2013-08-22",2),(180,"59","67","2012-11-07","2014-09-05",2),(217,"27","4","2013-07-10","2014-08-11",2),(24,"19","5","2013-10-05","2013-08-02",1),(225,"45","48","2014-04-26","2014-06-27",1),(103,"45","80","2013-06-07","2013-12-13",2),(97,"53","74","2013-05-11","2012-10-05",1),(22,"26","28","2013-05-10","2014-02-08",2),(245,"79","72","2014-02-27","2014-08-21",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (160,"58","77","2014-01-05","2013-07-28",1),(276,"97","22","2013-12-19","2014-08-31",2),(277,"27","34","2014-03-23","2014-07-13",2),(41,"42","5","2014-04-18","2012-12-21",1),(94,"92","48","2013-01-19","2014-09-23",1),(49,"96","66","2012-12-11","2014-01-29",2),(200,"85","35","2014-04-14","2014-01-21",2),(251,"76","37","2013-12-10","2013-06-30",1),(146,"45","67","2013-10-21","2014-07-28",2),(9,"53","38","2013-10-09","2014-05-16",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (171,"2","62","2013-05-18","2014-06-06",2),(257,"30","35","2014-07-26","2014-03-16",2),(29,"5","56","2013-01-05","2014-06-24",2),(177,"91","94","2014-04-06","2013-04-02",1),(293,"63","28","2013-01-18","2013-05-20",1),(148,"96","20","2013-01-29","2013-09-14",2),(174,"93","75","2013-12-13","2014-08-01",1),(168,"18","68","2013-09-22","2012-12-18",1),(75,"40","37","2014-01-01","2013-05-19",1),(138,"85","72","2013-02-05","2014-08-15",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (285,"19","77","2014-07-30","2014-05-08",1),(20,"2","34","2012-10-03","2013-02-16",1),(6,"46","28","2013-01-10","2014-06-20",1),(223,"59","68","2012-12-31","2012-11-02",1),(194,"65","37","2013-05-09","2014-09-26",2),(7,"42","5","2013-12-11","2014-08-11",2),(45,"97","34","2012-12-01","2014-04-17",2),(193,"81","22","2013-08-10","2013-04-14",2),(205,"83","75","2014-05-13","2014-06-08",1),(31,"82","38","2013-07-02","2014-08-03",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (88,"65","29","2014-05-20","2014-05-11",1),(189,"93","5","2013-10-31","2014-03-03",2),(209,"48","56","2012-11-01","2013-11-10",2),(100,"79","37","2012-10-16","2014-06-26",1),(193,"50","5","2012-11-21","2013-07-21",1),(269,"48","72","2013-04-10","2013-10-19",2),(257,"4","5","2013-05-20","2014-10-05",1),(34,"41","48","2013-03-27","2014-01-02",1),(219,"30","56","2013-10-18","2012-10-03",1),(106,"19","62","2013-12-04","2013-09-24",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (64,"75","74","2013-03-01","2013-03-22",2),(215,"48","66","2014-05-14","2014-10-04",1),(274,"79","22","2013-10-06","2013-12-06",1),(282,"59","72","2014-01-14","2014-06-08",2),(104,"96","28","2014-09-16","2014-03-07",2),(161,"19","28","2014-06-10","2012-12-21",1),(152,"59","29","2014-04-19","2012-12-07",1),(28,"23","4","2013-03-15","2014-01-17",2),(241,"4","80","2013-01-15","2014-05-28",2),(247,"13","75","2012-11-15","2013-06-27",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (106,"2","56","2014-07-13","2014-09-11",1),(141,"59","75","2013-04-15","2013-08-22",1),(118,"45","34","2013-11-11","2013-04-02",2),(210,"91","38","2014-05-18","2013-12-17",1),(45,"78","67","2013-03-17","2014-06-28",2),(1,"96","80","2014-06-06","2013-11-17",2),(298,"41","68","2014-04-19","2013-10-09",2),(214,"79","31","2013-05-31","2013-11-01",2),(224,"27","31","2013-04-18","2014-07-24",1),(34,"42","29","2014-05-15","2013-02-12",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (267,"9","77","2014-01-02","2014-04-12",1),(119,"4","28","2014-01-24","2014-07-01",2),(247,"75","72","2014-01-05","2013-03-17",2),(34,"26","80","2014-06-21","2013-02-21",2),(177,"96","5","2014-07-29","2013-03-26",2),(170,"41","66","2013-09-02","2012-10-27",1),(80,"82","48","2014-07-13","2014-01-14",1),(296,"93","80","2014-08-27","2012-10-20",2),(119,"59","99","2013-08-31","2013-11-21",2),(56,"42","10","2012-12-30","2013-08-22",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (139,"19","34","2013-06-08","2013-01-01",1),(77,"58","80","2013-10-03","2014-02-25",2),(170,"2","28","2013-02-20","2014-10-05",2),(289,"63","72","2013-03-17","2013-01-23",2),(253,"65","75","2014-01-26","2014-03-15",2),(61,"98","75","2013-02-04","2013-04-01",2),(112,"11","72","2012-11-22","2014-08-06",2),(289,"83","34","2013-06-21","2012-11-11",2),(89,"82","72","2014-03-24","2014-09-11",1),(83,"58","34","2014-07-29","2014-08-20",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (259,"60","29","2013-05-25","2013-05-14",2),(116,"75","34","2013-07-17","2014-01-04",2),(49,"83","77","2012-12-25","2013-07-14",1),(98,"18","80","2013-07-06","2013-08-30",1),(115,"76","5","2014-09-03","2013-10-16",2),(208,"75","5","2012-10-18","2013-11-13",1),(88,"26","29","2013-02-06","2014-09-16",1),(67,"69","56","2013-03-29","2014-07-02",1),(140,"65","8","2014-08-20","2014-01-02",1),(21,"71","77","2014-10-04","2013-02-23",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (86,"65","74","2014-03-20","2012-12-27",2),(206,"47","68","2013-03-15","2012-12-17",1),(48,"25","56","2013-04-14","2012-10-13",2),(21,"59","38","2013-03-11","2013-05-07",2),(157,"45","56","2013-03-05","2014-05-26",2),(283,"19","99","2014-02-05","2012-10-08",1),(59,"19","77","2013-02-17","2012-11-10",2),(296,"12","35","2013-05-09","2012-12-28",1),(14,"82","38","2014-07-19","2013-01-20",1),(124,"98","10","2013-08-15","2014-02-17",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (148,"60","75","2014-06-06","2013-04-06",1),(296,"76","56","2012-12-21","2014-09-27",2),(42,"76","68","2013-06-12","2012-12-22",1),(102,"76","31","2014-04-07","2013-06-07",1),(137,"48","28","2013-03-28","2014-05-24",1),(193,"83","5","2013-03-27","2014-02-25",2),(29,"18","28","2013-03-24","2012-12-27",2),(114,"42","75","2013-05-30","2014-01-01",1),(101,"65","68","2014-05-27","2013-05-13",1),(65,"82","28","2014-05-17","2013-10-16",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (113,"53","35","2012-12-21","2013-09-21",1),(168,"58","28","2013-10-21","2013-02-03",2),(54,"76","48","2013-08-22","2013-07-03",1),(294,"9","74","2014-04-06","2014-08-10",1),(97,"92","94","2013-05-07","2014-08-27",1),(183,"62","68","2014-07-13","2012-10-29",1),(244,"45","68","2013-09-10","2014-04-13",1),(238,"62","34","2013-12-27","2014-07-05",2),(234,"25","28","2013-07-16","2012-10-10",2),(240,"23","94","2013-10-03","2013-06-30",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (68,"91","10","2014-08-28","2014-09-13",2),(274,"57","56","2012-11-14","2014-01-24",2),(29,"18","66","2012-10-25","2014-06-07",1),(204,"13","29","2013-12-27","2014-03-13",1),(35,"95","38","2014-03-10","2014-04-14",2),(21,"45","48","2013-10-15","2013-07-21",1),(126,"9","67","2012-11-04","2013-03-31",2),(112,"91","31","2013-08-17","2012-10-19",2),(265,"92","77","2013-03-21","2012-11-03",1),(77,"26","28","2012-11-17","2014-03-16",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (152,"62","74","2014-09-24","2013-02-12",1),(152,"76","94","2013-06-17","2013-03-12",1),(292,"82","29","2013-01-21","2014-04-20",1),(103,"64","72","2013-09-03","2013-02-11",2),(263,"81","66","2013-03-02","2014-03-24",1),(278,"92","48","2013-06-27","2013-06-17",1),(124,"48","10","2013-01-03","2013-10-31",1),(58,"50","99","2012-11-26","2013-10-19",1),(240,"48","29","2013-03-30","2013-04-12",2),(74,"47","34","2013-06-07","2014-03-30",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (225,"46","94","2013-09-04","2013-04-13",2),(296,"60","8","2014-02-20","2013-09-11",1),(237,"19","35","2013-04-17","2014-09-24",1),(219,"62","35","2014-06-12","2014-09-26",2),(269,"57","31","2012-11-06","2013-04-16",2),(172,"13","94","2013-08-15","2013-03-19",2),(216,"40","67","2013-10-17","2014-10-11",2),(254,"83","62","2013-09-07","2013-12-08",1),(300,"13","28","2013-01-14","2013-11-09",2),(204,"63","99","2014-10-02","2013-07-15",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (167,"46","56","2014-02-25","2013-05-31",2),(249,"50","77","2012-12-28","2014-04-21",2),(257,"26","28","2013-01-13","2013-05-26",2),(169,"98","75","2014-02-18","2013-01-08",2),(253,"12","22","2014-03-18","2014-05-28",2),(65,"85","28","2013-04-05","2014-04-29",1),(257,"9","72","2012-11-01","2014-06-20",1),(226,"95","94","2013-12-21","2013-06-09",1),(272,"76","74","2013-02-09","2012-12-21",1),(206,"41","34","2014-05-06","2012-11-19",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (172,"25","66","2013-10-09","2013-05-24",1),(74,"4","37","2013-07-27","2013-09-09",1),(146,"9","28","2013-03-13","2014-06-12",1),(37,"47","72","2013-08-18","2013-11-14",2),(121,"19","56","2014-04-22","2013-06-25",2),(118,"59","72","2014-03-08","2013-03-13",1),(198,"26","28","2012-11-05","2014-05-04",2),(30,"2","56","2013-03-04","2013-02-23",1),(232,"92","28","2014-07-19","2013-11-10",2),(219,"78","29","2014-06-04","2014-08-05",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (35,"76","67","2014-03-20","2013-08-12",1),(206,"75","67","2013-07-28","2014-06-14",2),(124,"26","56","2013-03-23","2013-12-24",2),(63,"13","34","2013-11-27","2014-10-13",1),(5,"49","35","2013-10-08","2013-12-22",1),(180,"46","4","2012-10-12","2014-02-27",1),(68,"25","29","2014-04-14","2012-12-04",2),(204,"26","66","2013-01-23","2014-06-13",2),(41,"79","38","2014-02-13","2014-08-07",1),(102,"85","8","2013-02-22","2014-02-12",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (139,"98","74","2014-02-27","2013-10-23",1),(259,"79","75","2013-04-12","2013-04-02",2),(228,"79","66","2012-11-02","2013-01-13",2),(126,"63","80","2012-11-14","2013-06-07",1),(237,"47","99","2013-06-13","2014-02-13",2),(59,"78","99","2014-01-30","2014-05-26",1),(226,"81","5","2014-09-22","2013-11-02",2),(170,"42","74","2014-02-14","2013-08-18",2),(157,"98","38","2013-03-16","2014-08-13",2),(148,"50","8","2013-11-03","2013-08-09",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (65,"46","20","2013-02-24","2014-07-26",1),(121,"48","74","2012-11-29","2013-08-10",2),(24,"25","48","2014-06-10","2013-10-04",2),(113,"76","67","2014-01-31","2014-04-26",2),(196,"91","77","2013-03-17","2014-07-27",2),(18,"19","35","2013-01-07","2014-05-30",2),(167,"15","62","2013-06-03","2013-01-17",2),(124,"40","99","2014-05-11","2012-12-25",2),(118,"47","68","2013-07-06","2013-05-26",2),(109,"62","67","2013-06-25","2013-10-23",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (9,"64","35","2013-02-05","2013-01-19",1),(113,"82","72","2013-01-27","2013-09-26",1),(279,"19","75","2013-06-14","2012-10-14",1),(245,"95","75","2012-12-17","2013-06-09",1),(38,"4","22","2014-06-01","2014-03-09",1),(209,"76","31","2013-08-08","2014-07-02",2),(88,"40","80","2014-09-04","2014-03-01",2),(276,"59","74","2013-09-22","2013-07-17",1),(232,"41","75","2014-06-09","2014-10-03",1),(222,"75","66","2012-12-19","2012-10-23",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (50,"85","99","2014-01-17","2013-10-14",1),(235,"78","77","2013-07-31","2013-12-19",2),(149,"45","75","2014-02-06","2013-12-07",2),(197,"92","48","2013-02-26","2013-12-03",2),(128,"53","62","2013-10-07","2012-12-30",2),(48,"92","20","2013-02-04","2013-09-18",2),(95,"15","94","2014-02-02","2012-12-03",1),(19,"72","4","2014-09-09","2013-05-04",1),(32,"60","62","2014-08-30","2012-12-23",2),(41,"19","72","2013-11-18","2014-04-26",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (153,"62","56","2013-05-28","2013-02-04",1),(92,"9","4","2013-12-28","2013-11-23",2),(131,"13","35","2013-09-14","2014-01-13",2),(132,"93","56","2013-03-01","2013-04-12",2),(109,"32","66","2013-08-24","2014-04-29",2),(91,"4","94","2013-10-11","2014-09-12",2),(166,"19","72","2013-09-10","2013-11-04",2),(156,"19","8","2013-08-08","2014-10-10",1),(49,"64","10","2013-02-09","2014-07-02",1),(118,"57","4","2013-07-12","2014-01-05",2);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (126,"85","48","2014-04-05","2013-10-30",1),(214,"19","4","2013-11-28","2013-09-28",2),(173,"59","75","2014-03-02","2013-06-01",1),(204,"63","99","2014-09-20","2012-10-08",2),(157,"53","94","2013-07-04","2014-08-25",2),(5,"63","99","2014-04-12","2013-10-23",1),(293,"72","8","2014-04-12","2013-05-10",1),(130,"30","75","2014-08-27","2013-07-13",2),(244,"53","56","2013-12-19","2013-09-13",1),(194,"26","94","2013-11-11","2013-01-26",1);
INSERT INTO `prescriptions` (`id_treatment`,`id_patient`,`id_doctor`,`created_date`,`checkout_date`,`prescription_state`) VALUES (166,"92","62","2014-08-11","2014-03-09",2),(299,"48","22","2014-09-28","2014-06-25",2),(44,"48","29","2014-07-20","2013-01-02",1),(287,"49","74","2013-01-15","2013-06-08",2),(14,"93","66","2013-11-27","2013-09-26",2),(159,"64","4","2014-04-24","2013-01-17",1),(118,"79","56","2014-09-18","2013-04-01",2),(158,"71","68","2013-08-11","2012-11-26",1),(257,"2","56","2013-03-03","2014-02-27",1),(194,"65","68","2012-12-13","2013-04-11",1);
UPDATE prescriptions SET checkout_date=NULL WHERE prescription_state='1';
UPDATE prescriptions SET prescription_state='NEW' WHERE prescription_state='1';
UPDATE prescriptions SET prescription_state='DELIVERED' WHERE prescription_state='2';
-- table prescriptions counts 600 units

-- bind tables prescriptions and drugs to get ManyToOne table treatments_drugs
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (239,38,"arcu. Morbi sit amet massa."),(7,25,"vitae, posuere"),(239,113,"sollicitudin adipiscing ligula. Aenean"),(150,113,"ut erat. Sed nunc"),(253,146,"Donec luctus aliquet odio. Etiam ligula"),(42,137,"sit amet metus. Aliquam"),(113,28,"dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate"),(222,33,"amet, consectetuer adipiscing"),(156,247,"velit."),(2,172,"Etiam bibendum fermentum metus. Aenean sed pede");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (24,199,"Duis ac arcu. Nunc mauris. Morbi non sapien"),(216,237,"nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet."),(287,158,"Fusce mi lorem, vehicula et,"),(300,194,"lobortis tellus justo sit amet nulla."),(223,58,"Suspendisse ac metus vitae"),(38,34,"orci lacus vestibulum lorem, sit"),(183,72,"faucibus ut, nulla. Cras eu tellus eu augue porttitor"),(40,35,"Proin velit. Sed malesuada augue ut lacus. Nulla"),(243,134,"lacinia. Sed congue, elit sed consequat auctor,"),(202,211,"euismod est arcu ac orci. Ut semper");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (276,247,"elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec"),(262,254,"ut odio vel est tempor bibendum. Donec felis"),(171,233,"metus sit amet ante."),(264,43,"eu metus. In lorem."),(124,176,"leo. Cras vehicula aliquet libero. Integer in magna."),(26,107,"a, auctor non, feugiat nec, diam. Duis"),(190,98,"pede, ultrices a, auctor non,"),(157,141,"aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus,"),(52,199,"magna tellus faucibus leo, in lobortis tellus justo sit"),(223,40,"Morbi non sapien molestie");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (171,201,"dictum placerat, augue. Sed molestie."),(35,92,"fermentum convallis ligula."),(150,120,"ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat"),(72,202,"ac mattis ornare, lectus ante dictum"),(128,211,"et magnis dis parturient montes, nascetur ridiculus"),(219,42,"Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque."),(117,49,"ultricies ornare, elit elit fermentum risus, at fringilla purus mauris"),(124,105,"tortor, dictum eu, placerat"),(202,134,"Donec"),(152,117,"Maecenas mi felis, adipiscing fringilla, porttitor");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (156,172,"lectus pede et risus. Quisque libero lacus, varius"),(172,37,"vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse"),(171,257,"non lorem vitae odio sagittis"),(65,5,"nibh. Phasellus nulla. Integer vulputate, risus a"),(9,61,"nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris"),(294,25,"non massa non ante bibendum ullamcorper. Duis cursus,"),(117,11,"at, iaculis quis, pede. Praesent eu dui. Cum"),(235,26,"montes, nascetur ridiculus mus. Aenean eget magna."),(291,186,"ac"),(227,57,"a neque. Nullam ut nisi a odio semper");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (133,249,"dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus."),(259,191,"pede"),(78,100,"per inceptos hymenaeos."),(29,3,"tellus sem mollis dui, in sodales"),(141,136,"tellus. Aenean egestas hendrerit neque. In ornare"),(203,204,"non leo. Vivamus"),(131,242,"Integer id magna et ipsum cursus"),(188,18,"tellus. Nunc lectus pede,"),(116,231,"tempus scelerisque, lorem ipsum sodales purus,"),(233,223,"nisi magna sed dui. Fusce aliquam, enim nec tempus");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (218,93,"facilisis"),(148,186,"elit"),(78,139,"accumsan sed, facilisis vitae,"),(238,130,"In"),(60,253,"interdum. Curabitur dictum. Phasellus in felis."),(116,81,"dignissim"),(92,179,"eu, ultrices sit amet,"),(263,145,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus."),(78,186,"Nulla tempor augue"),(22,163,"nunc, ullamcorper");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (184,155,"Nunc pulvinar arcu et pede."),(90,160,"Duis sit amet diam"),(110,83,"sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id"),(263,171,"Sed et libero."),(146,23,"erat eget ipsum."),(120,87,"imperdiet dictum magna. Ut tincidunt orci"),(266,222,"nec tellus. Nunc lectus pede, ultrices"),(200,117,"ullamcorper viverra. Maecenas iaculis aliquet diam."),(196,63,"arcu imperdiet ullamcorper."),(231,111,"id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (75,69,"Quisque"),(150,246,"luctus ut, pellentesque"),(283,32,"Quisque"),(63,105,"eu, euismod ac, fermentum vel, mauris."),(209,260,"erat semper rutrum."),(158,85,"posuere at, velit."),(78,62,"sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis"),(110,143,"mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit"),(297,256,"nisi. Mauris nulla. Integer urna."),(126,37,"ut, pharetra sed, hendrerit a,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (230,136,"Suspendisse aliquet, sem ut"),(77,116,"Duis a mi fringilla mi lacinia"),(163,228,"Donec dignissim magna a tortor. Nunc commodo auctor"),(232,139,"mollis. Integer"),(258,24,"amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum"),(231,4,"tristique senectus et netus et malesuada fames ac"),(138,5,"turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi"),(38,16,"congue turpis. In"),(111,209,"leo. Morbi neque tellus, imperdiet non, vestibulum"),(192,250,"lectus. Nullam suscipit,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (25,72,"aliquet molestie tellus. Aenean egestas"),(199,40,"nisi nibh lacinia orci, consectetuer euismod est"),(61,65,"venenatis a, magna. Lorem ipsum dolor"),(105,145,"cursus et, magna."),(232,126,"orci, consectetuer euismod"),(198,137,"eleifend egestas. Sed"),(127,32,"non, bibendum sed, est. Nunc laoreet lectus quis"),(17,59,"mauris a nunc. In at pede. Cras vulputate velit"),(189,201,"sollicitudin a, malesuada id,"),(76,190,"vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (208,182,"magna sed dui. Fusce aliquam, enim nec tempus"),(223,234,"sem, vitae aliquam eros turpis non enim. Mauris quis turpis"),(29,74,"non,"),(160,185,"Nullam suscipit, est ac facilisis"),(153,94,"mollis"),(278,226,"sem magna nec quam. Curabitur"),(181,74,"quis diam"),(180,38,"ac nulla. In tincidunt congue turpis. In condimentum. Donec at"),(132,254,"Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada"),(36,36,"Quisque imperdiet, erat nonummy");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (130,138,"lacinia orci, consectetuer euismod est"),(239,35,"Donec sollicitudin adipiscing ligula."),(150,57,"molestie"),(279,221,"lobortis. Class aptent taciti"),(153,86,"pellentesque a, facilisis non,"),(51,179,"aptent taciti sociosqu"),(64,162,"Morbi"),(120,212,"ac risus."),(167,122,"Donec est mauris, rhoncus"),(152,49,"quam");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (247,149,"sociosqu ad litora torquent per conubia nostra,"),(89,70,"fames ac turpis egestas. Fusce"),(140,79,"lorem ipsum sodales purus, in molestie tortor nibh sit amet"),(42,241,"dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas"),(6,142,"Aenean massa. Integer"),(55,9,"diam nunc, ullamcorper eu,"),(85,180,"gravida nunc sed pede. Cum sociis natoque"),(34,18,"pharetra. Nam ac"),(70,238,"feugiat. Sed nec"),(196,254,"in sodales elit erat vitae risus. Duis a mi fringilla");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (208,207,"montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse"),(135,4,"senectus et netus et malesuada fames"),(223,44,"Mauris molestie pharetra"),(188,29,"ante ipsum primis in faucibus orci luctus et ultrices posuere"),(35,229,"at sem"),(144,193,"hendrerit neque."),(206,66,"tristique"),(204,129,"nulla vulputate"),(175,203,"ligula tortor, dictum eu, placerat"),(62,222,"felis purus ac tellus. Suspendisse sed");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (40,19,"non, lacinia at, iaculis quis, pede. Praesent eu dui."),(126,123,"nec, mollis vitae, posuere at, velit. Cras lorem lorem,"),(206,166,"consequat auctor, nunc nulla"),(73,29,"et, euismod et, commodo"),(14,175,"nunc sed pede."),(153,31,"Cum sociis"),(187,171,"eros nec tellus. Nunc lectus pede, ultrices a,"),(157,199,"Duis sit"),(300,246,"non enim commodo hendrerit. Donec porttitor tellus non"),(265,23,"pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (41,116,"et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus."),(78,68,"sociosqu ad"),(32,147,"sit"),(264,110,"metus. Vivamus euismod"),(103,46,"dui, semper et,"),(73,136,"Pellentesque tincidunt tempus risus. Donec egestas."),(104,212,"ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam"),(220,208,"lectus. Cum sociis natoque penatibus et magnis dis parturient montes,"),(271,161,"pretium neque."),(47,250,"turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (50,205,"in faucibus orci"),(215,24,"Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra."),(198,73,"ullamcorper. Duis cursus, diam at pretium"),(40,175,"augue. Sed molestie. Sed id risus quis diam luctus"),(58,115,"ut lacus. Nulla tincidunt, neque vitae semper egestas,"),(98,212,"Phasellus elit pede, malesuada vel, venenatis vel,"),(283,101,"nisi dictum augue malesuada malesuada. Integer id magna et ipsum"),(141,189,"volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh."),(233,245,"in magna. Phasellus dolor elit,"),(154,17,"aliquet");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (218,217,"risus. In mi"),(219,100,"nec luctus felis purus ac tellus."),(274,43,"pulvinar arcu et pede. Nunc"),(38,77,"enim nisl elementum purus, accumsan"),(165,163,"felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum."),(276,127,"Morbi metus."),(213,71,"conubia nostra, per inceptos hymenaeos. Mauris"),(110,173,"Proin dolor. Nulla semper"),(128,129,"dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent"),(33,201,"vulputate dui, nec tempus mauris erat eget ipsum.");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (229,14,"elit. Nulla facilisi. Sed neque. Sed eget lacus."),(246,201,"metus. In lorem. Donec elementum,"),(202,165,"amet, consectetuer adipiscing elit. Aliquam"),(18,158,"risus varius orci, in consequat enim diam vel arcu. Curabitur"),(296,224,"consectetuer mauris id sapien. Cras dolor dolor, tempus non,"),(2,258,"vel arcu eu odio tristique pharetra. Quisque ac libero"),(41,224,"et malesuada fames ac turpis egestas."),(224,41,"nunc, ullamcorper eu,"),(100,252,"fringilla"),(150,16,"Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (15,229,"gravida mauris ut mi. Duis risus odio, auctor vitae,"),(242,245,"sodales at, velit."),(128,182,"at sem molestie sodales. Mauris"),(97,123,"sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla"),(242,254,"tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse"),(113,31,"sociosqu ad"),(20,154,"Donec porttitor tellus non magna. Nam ligula elit,"),(149,123,"fermentum metus. Aenean sed pede nec ante blandit viverra. Donec"),(15,242,"vitae velit egestas"),(198,159,"odio. Nam");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (38,25,"Etiam vestibulum massa rutrum magna."),(300,114,"lectus pede,"),(27,191,"aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet"),(72,60,"lacinia. Sed congue, elit sed consequat auctor, nunc nulla"),(218,185,"urna. Ut tincidunt vehicula"),(210,77,"arcu. Sed eu nibh"),(183,17,"diam"),(12,58,"aliquet, metus urna convallis erat, eget tincidunt dui augue"),(39,218,"sem ut dolor"),(168,50,"consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (175,77,"aliquet. Proin velit. Sed malesuada augue ut"),(108,10,"Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam."),(78,237,"libero. Proin sed turpis nec mauris blandit mattis."),(8,150,"ultricies adipiscing, enim mi tempor lorem,"),(47,259,"ac orci. Ut semper pretium neque."),(9,227,"Mauris non dui nec urna suscipit nonummy. Fusce fermentum"),(255,198,"Aliquam fringilla cursus"),(245,159,"sodales purus, in molestie tortor nibh"),(272,257,"eu, odio."),(174,132,"a,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (225,30,"diam. Sed diam lorem, auctor quis, tristique ac,"),(50,126,"quam. Curabitur vel lectus."),(130,33,"egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio."),(82,180,"arcu imperdiet ullamcorper. Duis at"),(58,237,"vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque"),(55,22,"turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus."),(143,70,"facilisi. Sed"),(100,67,"nec, leo. Morbi neque tellus,"),(186,130,"nonummy. Fusce fermentum fermentum arcu. Vestibulum ante"),(186,125,"Etiam ligula tortor, dictum eu, placerat");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (113,37,"eleifend, nunc risus varius orci, in consequat"),(233,174,"dolor. Fusce mi"),(146,165,"sed pede nec ante blandit viverra. Donec tempus, lorem"),(125,15,"scelerisque dui. Suspendisse ac metus vitae velit egestas"),(214,63,"non,"),(33,52,"vel, vulputate"),(119,246,"nulla ante,"),(273,89,"non, cursus non,"),(210,24,"luctus"),(160,188,"volutpat nunc sit amet");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (132,21,"Suspendisse sed dolor. Fusce mi"),(219,246,"odio a purus. Duis elementum, dui quis accumsan convallis,"),(174,112,"augue"),(289,91,"rutrum. Fusce dolor"),(89,23,"ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque"),(12,6,"mauris ut mi. Duis"),(83,141,"justo. Proin"),(99,71,"velit eu sem. Pellentesque ut ipsum ac mi eleifend"),(5,92,"turpis nec mauris blandit mattis. Cras eget nisi"),(295,256,"tellus, imperdiet non, vestibulum nec,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (96,31,"velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum"),(3,96,"non"),(216,232,"dolor sit amet,"),(228,153,"nisi sem"),(166,86,"egestas. Aliquam fringilla cursus purus. Nullam"),(190,33,"senectus et netus et malesuada"),(114,8,"Duis mi enim, condimentum eget, volutpat"),(256,232,"ac metus vitae velit egestas lacinia. Sed congue, elit"),(222,245,"luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec"),(114,152,"scelerisque mollis.");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (264,184,"nulla vulputate dui, nec"),(97,171,"augue porttitor interdum. Sed auctor odio a purus. Duis elementum,"),(89,241,"elit, a feugiat tellus lorem eu"),(44,154,"pharetra sed, hendrerit a, arcu. Sed et libero. Proin"),(189,224,"Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna"),(112,59,"ornare, libero at auctor ullamcorper, nisl"),(162,215,"facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc"),(187,67,"Donec non justo. Proin non massa non ante bibendum"),(246,252,"Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non"),(98,129,"congue, elit sed consequat auctor, nunc nulla vulputate dui, nec");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (86,112,"tellus sem mollis dui, in sodales elit erat vitae"),(3,112,"Nulla eget metus eu"),(274,229,"turpis egestas."),(172,75,"ut, molestie in, tempus eu, ligula."),(13,87,"a sollicitudin orci sem eget massa."),(36,65,"velit eu sem. Pellentesque ut"),(21,253,"Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus"),(258,186,"Nulla facilisis."),(119,236,"eu, ligula. Aenean euismod"),(218,147,"non justo. Proin");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (181,75,"nisl arcu"),(111,220,"nibh sit amet"),(55,22,"non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum"),(295,165,"ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci"),(54,29,"ullamcorper. Duis at lacus. Quisque purus"),(176,108,"magna. Suspendisse"),(119,72,"ipsum"),(162,116,"luctus et ultrices"),(17,257,"Curabitur consequat, lectus sit amet luctus vulputate, nisi sem"),(142,147,"arcu. Vestibulum ut eros non enim");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (3,214,"eget magna."),(2,125,"interdum. Sed auctor odio a"),(245,131,"non, feugiat nec, diam. Duis"),(85,82,"metus. Aenean sed pede nec ante"),(90,63,"pellentesque, tellus"),(165,38,"vitae"),(201,137,"Phasellus fermentum convallis ligula. Donec luctus"),(218,105,"ut, nulla."),(239,136,"Cum"),(199,12,"neque sed sem egestas blandit. Nam nulla magna,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (103,242,"tempor erat neque"),(66,15,"in faucibus orci luctus et ultrices"),(193,148,"hendrerit neque."),(52,248,"dictum cursus. Nunc"),(228,175,"primis in faucibus orci"),(187,89,"ut, pellentesque"),(35,119,"Etiam vestibulum massa rutrum magna."),(29,130,"lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,"),(248,91,"venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer"),(206,49,"tellus eu");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (257,33,"nisi nibh lacinia orci, consectetuer euismod"),(34,62,"accumsan interdum"),(265,223,"dui augue eu tellus. Phasellus elit pede, malesuada vel,"),(181,246,"in molestie tortor"),(101,133,"lorem,"),(6,177,"eu arcu. Morbi sit"),(29,190,"fermentum fermentum arcu. Vestibulum"),(258,150,"auctor, nunc nulla vulputate dui, nec"),(265,84,"risus quis diam luctus lobortis."),(13,170,"aptent taciti sociosqu ad litora torquent per");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (238,40,"at fringilla purus mauris a nunc. In at pede."),(16,36,"Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus."),(260,201,"nonummy ultricies ornare, elit elit fermentum risus, at"),(152,74,"vitae sodales"),(143,109,"Etiam bibendum fermentum metus. Aenean sed pede"),(56,54,"lectus quis massa. Mauris"),(167,27,"morbi tristique senectus et netus et malesuada fames ac turpis"),(132,189,"erat neque non quam. Pellentesque habitant morbi tristique senectus"),(96,166,"aliquet"),(66,111,"cursus");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (189,162,"hendrerit a, arcu. Sed et libero. Proin"),(170,151,"dui augue eu tellus. Phasellus elit pede, malesuada"),(274,195,"Aliquam tincidunt,"),(126,16,"penatibus et magnis dis"),(182,128,"auctor non, feugiat nec, diam."),(161,98,"facilisis vitae, orci. Phasellus dapibus quam"),(207,103,"gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet"),(149,22,"velit eu sem. Pellentesque ut ipsum"),(51,162,"accumsan interdum libero"),(171,13,"parturient montes, nascetur ridiculus mus. Donec dignissim");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (33,146,"arcu iaculis enim, sit"),(111,255,"dapibus rutrum, justo."),(89,251,"risus. In mi pede, nonummy"),(275,58,"molestie"),(50,243,"vulputate,"),(112,35,"nisi."),(101,49,"ac, eleifend vitae, erat. Vivamus nisi."),(125,111,"Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis"),(9,120,"tempus eu,"),(265,41,"libero dui nec");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (149,177,"sed libero. Proin sed turpis nec mauris blandit mattis. Cras"),(135,165,"ante ipsum primis in faucibus orci luctus"),(90,4,"montes, nascetur ridiculus mus."),(147,118,"ornare, lectus ante dictum mi, ac"),(35,92,"Fusce aliquet magna a neque. Nullam ut nisi a odio"),(188,157,"Nunc quis arcu vel quam"),(114,228,"neque. In ornare sagittis"),(47,171,"Quisque porttitor eros nec"),(61,29,"risus. In mi pede, nonummy ut, molestie"),(241,2,"diam. Proin dolor. Nulla semper tellus id");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (64,253,"mauris eu elit. Nulla facilisi. Sed neque."),(95,223,"sodales. Mauris blandit enim consequat purus."),(206,6,"eleifend"),(192,172,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit."),(118,38,"Curabitur massa."),(287,3,"semper. Nam"),(74,246,"cursus"),(102,162,"amet"),(140,34,"lorem, luctus ut, pellentesque eget, dictum placerat, augue."),(89,167,"feugiat nec, diam. Duis mi enim, condimentum eget,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (218,123,"turpis. In condimentum. Donec at arcu. Vestibulum ante"),(169,153,"vestibulum massa rutrum"),(72,221,"ornare, lectus ante dictum mi,"),(249,244,"ligula"),(71,44,"sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem"),(230,96,"magna"),(166,91,"quis, tristique ac, eleifend"),(125,208,"eu tellus eu augue porttitor interdum. Sed"),(17,12,"placerat, augue. Sed molestie. Sed"),(180,74,"eu odio tristique pharetra. Quisque ac libero nec ligula");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (261,110,"sodales elit erat"),(59,22,"enim. Nunc"),(15,110,"sem"),(213,71,"et pede. Nunc sed orci lobortis"),(26,32,"inceptos hymenaeos. Mauris ut quam vel sapien imperdiet"),(246,254,"sed libero."),(182,203,"elementum purus, accumsan"),(57,103,"leo. Vivamus nibh dolor, nonummy"),(174,9,"Nulla"),(25,224,"ultrices, mauris ipsum porta elit, a");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (291,149,"sit amet lorem semper auctor. Mauris vel"),(135,105,"ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget"),(296,175,"faucibus. Morbi vehicula."),(56,73,"sollicitudin orci"),(12,226,"sed, facilisis vitae, orci. Phasellus dapibus quam"),(267,70,"Nullam velit"),(36,15,"urna. Nunc quis arcu vel quam dignissim pharetra. Nam"),(135,75,"morbi tristique senectus et netus et malesuada fames ac turpis"),(229,62,"faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas."),(231,99,"leo, in lobortis tellus justo sit amet");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (24,164,"aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in"),(96,146,"eu, ultrices sit amet,"),(214,66,"libero mauris,"),(213,205,"ultrices posuere cubilia Curae; Phasellus ornare."),(62,163,"placerat eget, venenatis a, magna. Lorem"),(79,151,"nec quam. Curabitur vel lectus."),(36,111,"orci. Ut semper pretium neque."),(271,227,"neque sed sem"),(296,245,"nec mauris blandit mattis. Cras eget"),(273,39,"vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (207,76,"eu, ultrices sit amet, risus. Donec"),(153,81,"Mauris non dui"),(261,170,"ipsum non arcu."),(235,19,"non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat"),(6,238,"vitae,"),(10,179,"mus. Proin"),(184,187,"convallis dolor. Quisque"),(122,96,"In tincidunt congue turpis. In condimentum. Donec at arcu."),(119,42,"magnis"),(278,163,"diam. Proin dolor.");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (213,257,"nunc est, mollis non, cursus non, egestas a, dui."),(48,68,"ac turpis egestas. Fusce aliquet magna"),(297,171,"morbi tristique senectus et netus"),(176,179,"libero lacus,"),(297,35,"lectus rutrum urna, nec"),(116,146,"mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus."),(170,139,"feugiat metus sit amet ante."),(196,155,"ligula eu enim. Etiam"),(219,254,"vestibulum. Mauris magna."),(229,4,"dui, nec tempus mauris erat eget");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (231,197,"diam. Pellentesque habitant morbi tristique senectus et netus et"),(96,16,"Proin ultrices. Duis volutpat nunc sit amet"),(35,112,"Suspendisse eleifend. Cras sed leo."),(6,242,"volutpat. Nulla dignissim. Maecenas ornare egestas ligula."),(40,18,"mauris,"),(124,98,"ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi"),(145,176,"Nam nulla magna,"),(278,115,"ullamcorper. Duis cursus, diam"),(70,158,"elit pede,"),(116,92,"pede blandit congue. In");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (29,176,"tempor erat neque non quam."),(164,115,"nisi magna sed"),(92,144,"eu elit. Nulla facilisi. Sed"),(44,216,"eros. Proin ultrices. Duis volutpat nunc sit"),(227,154,"elit, pretium et,"),(67,205,"dis parturient"),(225,87,"elit. Nulla facilisi. Sed neque."),(92,190,"ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque."),(79,70,"euismod urna."),(242,100,"aliquam iaculis, lacus pede sagittis augue, eu tempor");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (65,247,"euismod enim. Etiam"),(238,73,"Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem"),(32,250,"Aenean euismod"),(3,260,"nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus."),(52,36,"posuere cubilia Curae; Donec tincidunt."),(134,183,"nec"),(181,213,"et libero. Proin mi. Aliquam gravida mauris ut mi. Duis"),(195,63,"diam eu dolor egestas"),(227,236,"adipiscing elit. Aliquam auctor,"),(133,84,"facilisis, magna");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (130,202,"consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit"),(258,24,"pede blandit congue. In"),(206,220,"Donec consectetuer mauris id sapien. Cras"),(168,165,"id magna et ipsum cursus"),(52,99,"eu erat semper rutrum. Fusce dolor quam,"),(134,133,"Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat"),(292,49,"ligula tortor, dictum eu, placerat eget, venenatis a,"),(248,106,"elementum purus, accumsan"),(244,216,"nec tempus"),(48,198,"facilisis facilisis, magna tellus");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (233,65,"tellus faucibus leo,"),(165,235,"turpis. Nulla aliquet."),(150,112,"magna. Cras"),(34,62,"arcu iaculis enim, sit amet ornare lectus justo eu"),(178,149,"accumsan sed,"),(152,207,"a ultricies adipiscing,"),(87,56,"accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis"),(275,71,"varius orci, in consequat"),(276,212,"pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod"),(227,187,"ac metus vitae velit egestas lacinia.");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (286,237,"sem ut cursus luctus, ipsum leo elementum sem,"),(279,42,"vestibulum, neque sed dictum"),(25,249,"Morbi accumsan laoreet ipsum. Curabitur consequat, lectus"),(203,76,"lorem semper auctor. Mauris"),(97,180,"blandit viverra. Donec tempus, lorem fringilla"),(48,231,"scelerisque, lorem"),(262,158,"varius et, euismod et,"),(22,15,"et magnis dis parturient montes,"),(156,258,"nunc ac mattis ornare, lectus ante dictum mi, ac"),(166,20,"tincidunt tempus");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (151,77,"Cras pellentesque."),(287,241,"lacus."),(138,172,"ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque"),(197,145,"interdum feugiat. Sed nec metus facilisis lorem tristique aliquet."),(216,115,"pulvinar arcu et"),(95,68,"dapibus gravida. Aliquam tincidunt, nunc ac"),(208,42,"placerat, orci lacus vestibulum lorem, sit amet"),(217,85,"scelerisque, lorem ipsum sodales"),(201,6,"Sed et libero. Proin mi. Aliquam"),(151,120,"neque tellus, imperdiet non, vestibulum nec, euismod in,");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (224,54,"aliquam eu,"),(103,155,"blandit enim consequat purus."),(151,136,"dictum mi, ac mattis velit justo nec ante."),(45,22,"tempus scelerisque, lorem ipsum sodales purus, in molestie tortor"),(114,143,"auctor, velit eget laoreet posuere, enim nisl elementum purus,"),(47,103,"tellus eu augue porttitor interdum. Sed auctor odio a"),(29,79,"enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis"),(19,225,"Proin nisl sem, consequat nec, mollis vitae, posuere"),(296,62,"nonummy. Fusce"),(290,55,"tempor bibendum. Donec felis orci, adipiscing non, luctus sit");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (220,1,"Phasellus nulla. Integer vulputate,"),(106,229,"elementum at, egestas a, scelerisque"),(19,98,"eros. Proin ultrices. Duis volutpat nunc sit"),(240,77,"lacus. Mauris non dui nec urna suscipit"),(190,108,"Curabitur egestas nunc sed libero. Proin sed turpis nec"),(179,84,"sit amet ornare lectus justo eu arcu. Morbi"),(77,166,"hendrerit consectetuer, cursus et, magna. Praesent"),(166,233,"taciti sociosqu ad litora torquent per conubia"),(295,244,"vel, venenatis vel, faucibus id,"),(233,92,"montes, nascetur ridiculus mus. Proin vel nisl. Quisque");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (231,99,"Fusce mollis. Duis sit amet diam"),(8,179,"eleifend vitae, erat."),(181,129,"enim commodo hendrerit. Donec porttitor tellus non magna. Nam"),(261,222,"odio, auctor vitae, aliquet"),(216,133,"ante. Maecenas mi felis, adipiscing fringilla, porttitor"),(12,99,"fringilla, porttitor vulputate, posuere"),(10,242,"arcu eu"),(198,55,"magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna"),(71,101,"amet massa. Quisque porttitor eros nec tellus."),(33,12,"est. Mauris");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (80,245,"arcu ac"),(33,60,"amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse"),(274,194,"leo,"),(194,162,"et, commodo at,"),(68,53,"augue scelerisque mollis."),(170,174,"Vivamus"),(266,32,"massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet"),(72,223,"eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit"),(114,147,"diam vel arcu. Curabitur ut odio vel est"),(44,151,"at, libero. Morbi");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (248,118,"massa. Integer vitae nibh. Donec est"),(64,152,"adipiscing,"),(80,200,"libero mauris, aliquam eu, accumsan sed,"),(297,81,"felis ullamcorper viverra. Maecenas"),(155,108,"ligula tortor, dictum eu, placerat eget, venenatis a, magna."),(298,109,"augue ac ipsum. Phasellus vitae"),(101,250,"Duis"),(61,147,"feugiat placerat velit. Quisque varius. Nam"),(196,111,"eu dui. Cum sociis natoque"),(153,107,"magna. Ut tincidunt orci quis lectus. Nullam suscipit, est");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (77,169,"non arcu. Vivamus sit amet risus. Donec"),(137,74,"ornare tortor at risus. Nunc"),(293,44,"tellus. Nunc lectus pede, ultrices a, auctor non,"),(111,260,"ultrices. Vivamus rhoncus. Donec"),(124,129,"Integer vulputate,"),(23,119,"Nam consequat dolor vitae dolor. Donec fringilla."),(92,84,"Vivamus sit amet risus. Donec egestas. Aliquam"),(293,101,"tortor. Nunc commodo auctor"),(79,244,"ante. Maecenas mi felis,"),(196,97,"Mauris quis turpis vitae purus gravida sagittis. Duis gravida.");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (215,142,"eu,"),(180,79,"dolor."),(64,227,"Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper"),(206,228,"Aenean egestas hendrerit neque. In ornare sagittis felis."),(241,77,"eu tellus. Phasellus elit pede, malesuada vel, venenatis vel,"),(221,48,"Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac,"),(46,179,"Nullam velit dui, semper et, lacinia vitae, sodales at, velit."),(297,134,"Duis at"),(238,7,"faucibus orci luctus et ultrices posuere cubilia Curae; Donec"),(280,167,"vel quam dignissim");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (236,10,"id, mollis nec, cursus"),(24,2,"sed, est. Nunc laoreet lectus quis massa. Mauris"),(78,147,"imperdiet non, vestibulum nec, euismod in, dolor."),(293,90,"Quisque varius. Nam porttitor scelerisque neque."),(37,86,"risus. Morbi"),(218,140,"eu metus. In lorem. Donec elementum,"),(187,37,"sem molestie sodales."),(43,9,"cursus luctus, ipsum leo"),(194,155,"lectus, a sollicitudin orci"),(62,181,"odio. Phasellus at augue id ante dictum cursus. Nunc");
INSERT INTO `treatments_drugs` (`id_treatment`,`id_drug`,`description`) VALUES (188,177,"tellus faucibus leo, in lobortis tellus justo sit"),(45,204,"mi fringilla mi lacinia mattis. Integer eu"),(37,44,"Donec dignissim"),(182,159,"Aenean massa. Integer vitae nibh. Donec est mauris,"),(110,189,"eget, venenatis a, magna. Lorem ipsum"),(278,145,"ac facilisis facilisis, magna tellus faucibus leo, in"),(273,116,"primis in"),(32,249,"dolor sit amet, consectetuer adipiscing elit."),(245,70,"ac mattis ornare, lectus ante dictum mi, ac mattis velit"),(248,108,"dapibus rutrum, justo.");
-- table treatments_drugs counts 600 units

-- insert medical tests into tests table
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Blood Ca (Calcium) Level","A test for calcium in the blood checks the calcium level in the body that is not stored in the bones.",1,1,
"<p>A test for calcium in the blood checks the calcium level in the body that is not stored in the bones. Calcium is the most common mineral in the body and one of the most important. The body needs it to build and fix bones and teeth, help nerves work, make muscles squeeze together, help blood clot, and help the heart to work. Almost all of the calcium in the body is stored in bone.</p>
<p>Normally the level of calcium in the blood is carefully controlled. When blood calcium levels get low (hypocalcemia), the bones release calcium to bring it back to a good blood level. When blood calcium levels get high (hypercalcemia), the extra calcium is stored in the bones or passed out of the body in urine and stool. The amount of calcium in the body depends on the amount of:</p>
<ul>
<li>Calcium you get in your food. </li>
<li>Calcium and vitamin D your intestines absorb.</li>
<li>Phosphate in the body.</li>
<li>Certain hormones, including parathyroid hormone, calcitonin, and estrogen in the body.</li>
</ul>
<p>It is important to get the right amount of calcium in your food because the body loses calcium every day. Foods rich in calcium include dairy products (milk, cheese), eggs, fish, green vegetables, and fruit. Most people who have low or high levels of calcium do not have any symptoms. Calcium levels need to be very high or low to cause symptoms.</p>
<p><b>Results</b></p>
<p>Adults: 8.8–10.4 milligrams per deciliter (mg/dL) or 2.2–2.6 millimoles per liter (mmol/L)</p>
<p>Children: 6.7–10.7 milligrams per deciliter (mg/dL) or 1.90–2.75 millimoles per liter (mmol/L)</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Blood Carbon Dioxide Level","est ac facilisis facilisis, magna tellus faucibus",1,1,
"
<p>A CO2 blood test measures the amount of carbon dioxide (CO2) in the blood serum, or liquid part of the blood. Your doctor can use this test to learn whether there is an oxygen/carbon dioxide imbalance, or pH imbalance, in your blood. These imbalances may be a sign of a kidney, respiratory, or metabolic disorder. </p>
<p>The body contains two major forms of CO2: </p>
<ul>
<li>HCO3 (bicarbonate, the main form of CO2 in the body)</li>
<li>PCO2 (carbon dioxide)</li>
</ul>
<p>A CO2 test may be performed as part of metabolic panel (a group of tests that measure electrolytes and blood gases). </p>
<p><b>Risks of a CO2 Blood Test</b></p>
<ul>
<li>excessive bleeding</li>
<li>fainting</li>
<li>ightheadedness</li>
<li>hematoma (a lump of blood under the skin)</li>
</ul>
<p><b>Results</b></p>
<p>The normal range for CO2 is 23 to 29 mEq/L (milliequivalent units per liter of blood).</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Blood Carbon Monoxide (CO) Level ","A carbon monoxide blood test is used to detect poisoning from breathing carbon monoxide (CO), ",1,1,
"<p>Carbon monoxide (CO) is a colorless, odorless gas produced by incomplete combustion of carbonaceous material. Commonly overlooked or misdiagnosed, CO intoxication often presents a significant challenge, as treatment protocols, especially for hyperbaric oxygen therapy, remain controversial because of a paucity of definitive clinical studies. </p>
<p>CO is formed as a by-product of burning organic compounds. Most fatalities result from fires, but stoves, portable heaters, and automobile exhaust cause approximately one third of deaths. These often are associated with malfunctioning or obstructed exhaust systems and suicide attempts. Cigarette smoke is a significant source of CO. Natural gas contains no CO, but improperly vented gas water heaters, kerosene space heaters, charcoal grills, hibachis, and Sterno stoves all emit CO. Other sources of CO exposure include propane-fueled forklifts, gas-powered concrete saws, inhaling spray paint, indoor tractor pulls, and swimming behind a motorboat.</p>
<p>Children riding in the back of enclosed pickup trucks seem to be at particularly high risk. Industrial workers at pulp mills, steel foundries, and plants producing formaldehyde or coke are at risk for exposure, as are personnel at fire scenes and individuals working indoors with combustion engines or combustible gases. </p>
<p>CO toxicity causes impaired oxygen delivery and utilization at the cellular level. CO affects several different sites within the body but has its most profound impact on the organs (eg, brain, heart) with the highest oxygen requirement. </p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Blood Cortisol Levels","A cortisol test is done to measure the level of the hormone cortisol in the blood",1,1
,"
<p>A cortisol test is done to measure the level of the hormone cortisol in the blood. The cortisol level may show problems with the adrenal glands or pituitary gland. Cortisol is made by the adrenal glands camera.gif. Cortisol levels go up when the pituitary gland camera.gif releases another hormone called adrenocorticotropic hormone (ACTH).</p>
<p>Cortisol has many functions. It helps the body use sugar (glucose) and fat for energy (metabolism), and it helps the body manage stress. Cortisol levels can be affected by many conditions, such as physical or emotional stress, strenuous activity, infection, or injury.</p>
<p>Normally, cortisol levels rise during the early morning hours and are highest about 7 a.m. They drop very low in the evening and during the early phase of sleep. But if you sleep during the day and are up at night, this pattern may be reversed. If you do not have this daily change (diurnal rhythm) in cortisol levels, you may have overactive adrenal glands. This condition is called Cushing's syndrome. </p>
<p><b>Why It Is Done</b></p>
<p>A cortisol test is done to find problems of the pituitary gland or adrenal glands, such as making too much or too little hormones.</p>
<p><b>Results</b></p>
<p>Adults: 5–23 micrograms per deciliter (mcg/dL) or 138–635 nanomoles per liter (nmol/L)</p>
<p>Children: 2–11 mcg/dL or 55–304 nmol/L</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Blood Culture","A blood culture is a test to find an infection in the blood",1,1,
"
<p>Blood cultures are used to detect the presence of bacteria or fungi in the blood, to identify the type present, and to guide treatment. Testing is used to identify a blood infection (septicemia) that can lead to sepsis, a serious and life-threatening complication. Individuals with a suspected blood infection are often treated in intensive care units, so testing is often done in a hospital setting.</p>
<p>Although blood samples may be used to detect viruses, this article focuses on the use of blood cultures to detect and identify bacteria and fungi.</p>
<p>Other related tests that may be performed include:</p>
<ul>
<li>Gram stain—a relatively quick test used to detect and identify the general type of bacteria</li>
<li>Susceptibility testing—determines the drug (antimicrobial) that may be most effective in treating the infection</li>
</ul>
<p><b>What does the test result mean?</b></p>
<p>Two or more blood cultures that are positive for the same bacteria or fungi means that the person tested likely has a blood infection with that microorganism. The results typically identify the specific bacteria or fungi causing the infection</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Blood Lead Level","This test measures the amount of lead in a person's blood",1,1,
"
<p>Blood lead level (BLL), is a measure of lead in the blood. It is measured in micrograms of lead per deciliter of blood (μg/dL); 10 µg/dL is equivalent to 0.48 micromoles per liter (µmol/L).[1]</p>
<p><b>Health effects</b></p>
<p>The Centers for Disease Control and Prevention (CDC) states that a BLL of 5 μg/dL or above is a cause for concern in children. However, lead can impair development even at BLLs below 5 μg/dL.[4] Adults that are exposed to a dangerous amount of lead can experience anemia, nervous system dysfunction, weakness, hypertension, kidney problems, decreased fertility and increased level of miscarriages, and low birth weight and premature deliveries.[3] Children exposed to high levels of lead show similar symptoms, including anemia, kidney damage, colic, neurological impairment, and impaired vitamin D metabolism.[3] However children are susceptible to damage from lead exposure at lower levels than adults, and neurological impairment can occur in children with blood lead levels <10 µg/dL. Neurological impairment or delay, growth retardation, and delayed sexual maturation as a result of lead exposure may even affect children as they mature to adulthood.</p>
<p><b>Sources</b></p>
<p>Exposure to lead occurs through ingestion, inhalation, and dermal contact. When exposed to lead, lead enters one’s bloodstream and elevates their blood lead level that results to lead poisoning or an elevated blood lead level.[2] A major source of exposure to lead comes from inhalation. Factories and industries, vehicles exhausts, and even dust in the air that people breathe all have the potential of containing lead. Other major sources of lead exposure also include ingestion and contact with products such as paint and soil that may contain lead as well. Many older claw foot bathtubs have also been found to leach lead, especially when filled with warm bath water.</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Blood Osmolality Test","Check the balance between the water and the chemicals dissolved in blood",1,1,
"
<p>Osmolality is a test that measures the concentration of all chemical particles found in the fluid part of blood.</p>
<p><b>How the Test is Performed</b></p>
<p>A blood sample is needed. </p>
<p><b>How to Prepare for the Test</b></p>
<p>Do not eat for 6 hours before the test. Your doctor may tell you to temporarily stop taking any medicines that may interfere with test results. Such medicines may include water pills (diuretics).</p>
<p><b>How the Test will Feel</b></p>
<p>When the needle is inserted to draw blood, some people feel moderate pain. Others feel only a prick or stinging sensation. Afterward, there may be some throbbing or a slight bruise. These soon go away.</p>
<p>This test helps check your body's water balance. Your doctor may order this test if you have signs of any of the following:</p>
<ul>
<li>Low sodium (hyponatremia) or water loss</li>
<li>Poisoning from harmful substances such as ethanol, methanol, or ethylene glycol</li>
<li>Problems producing urine</li>
</ul>
<p><b>Results</b></p>
<p>Normal values range from 275 to 295 milliosmoles per kilogram.</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("fSerologic and intradermal tests for parasitic infections.","suscipit, est ac",5,1,
"
<p>For years, the diagnosis of most parasitic diseases has depended upon the direct demonstration of the parasite or its cysts, eggs, or larvae in specimens. In some infections, direct demonstration of the causative agent or its stages is almost impossible. In such cases, indirect techniques, such as serologic methods, have been found to be more practical and sensitive than are direct methods. Most serologic methods have been devised to detect antibodies. Tests for the detection of antigen are just beginning to be utilized; however, the practicality and under what situations antigen detection tests can be used await further testing. The majority of the serum antibody tests employ a heterogeneous mixture of antigens. Antigens derived from whole adult or larval stages usually result in tests with poor specificity and/or sensitivity. The necessity for better purified and standardized antigens cannot be over emphasized. Although there have been many major advances in the serodiagnosis of parasitic infections, a major drawback to routine use of parasitic serologies is the lack of commercially available reliable test kits. For the diagnosis of most parasitic diseases, one must rely upon specialty laboratories or public health laboratories. Before any laboratory begins to offer parasitic test serologies, they should contact their local or state public health laboratory or the Parasitic Serologic Section of the Centers for Disease Control to determine the pros and cons of these tests. Information of this type should be used to inform the physician of the limitations of the test in the differential diagnosis.</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Total Serum Protein","A total serum protein test measures the total amount of protein in the blood. It also measures the amounts of two major groups of proteins in the blood: albumin and globulin.",1,1,
"
<p>A total serum protein test measures the total amount of protein in the blood. It also measures the amounts of two major groups of proteins in the blood: albumin and globulin.</p>
<ul>
<li><b>Albumin</b> is made mainly in the liver. It helps keep the blood from leaking out of blood vessels. Albumin also helps carry some medicines and other substances through the blood and is important for tissue growth and healing.</li>
<li><b>Globulin</b> is made up of different proteins called alpha, beta, and gamma types. Some globulins are made by the liver, while others are made by the immune system. Certain globulins bind with hemoglobin. Other globulins transport metals, such as iron, in the blood and help fight infection. Serum globulin can be separated into several subgroups by serum protein electrophoresis. To learn more, see the topic Serum Protein Electrophoresis</li>
</ul>
<p><b>How It Is Done</b></p>
<ul>
<li>Wrap an elastic band around your upper arm to stop the flow of blood. This makes the veins below the band larger so it is easier to put a needle into the vein.</li>
<li>Clean the needle site with alcohol.</li>
<li>Put the needle into the vein. More than one needle stick may be needed.</li>
<li>Remove the band from your arm when enough blood is collected.</li>
<li>Put a gauze pad or cotton ball over the needle site as the needle is removed.</li>
<li>Put pressure on the site and then put on a bandage.</li>
</ul>
<p><b>Results</b></p>
<p>A total serum protein test is a blood test that measures the amounts of total protein, albumin, and globulin in the blood. Results are usually available within 12 hours.</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Homocysteine Test","Help identify vitamin B12 deficiency or folic acid deficiency",2,0,
"
<p><b>How is it used?</b></p>
<ul>
<li>A health practitioner may order a homocysteine test to determine if a person has a vitamin B12 or folate deficiency. The homocysteine concentration may be elevated before B12 and folate tests are abnormal. Some health practitioners may recommend homocysteine testing in malnourished individuals, the elderly, who often absorb less vitamin B12 from their diet, and individuals with poor nutrition, such as drug or alcohol addicts.</li>
<li>Homocysteine may be ordered as part of a screen for people at high risk for heart attack or stroke. It may be useful in someone who has a family history of coronary artery disease but no other known risk factors, such as smoking, high blood pressure, or obesity. However, the exact role that homocysteine plays in the progression of cardiovascular disease has not been established, so the utility of the screening test continues to be questioned. Routine screening, such as that done for total cholesterol, has not been recommended. </li>
<li>Tests for both a urine and blood homocysteine may be used to help diagnose homocystinuria if a health practitioner suspects that an infant or child may have this inherited disorder. In the U.S., all babies are routinely tested for excess methionine, a sign of homocystinuria, as part of their newborn screening. If a baby's test is positive, then urine and blood homocysteine tests are often performed to confirm the findings.</li>
</ul>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Hormone Inhibin-A Test","The inhibin A test is done to measure the amount of this hormone in a pregnant woman's blood",2,0,
"
<p>The inhibin A test is done to measure the amount of this hormone in a pregnant woman's blood to see if the baby may have Down syndrome. Inhibin A is made by the placenta during pregnancy.</p>
<p>The level of inhibin A in the blood is used in a maternal serum quadruple screening test. Generally done between 15 and 20 weeks, this test checks the levels of four substances in a pregnant woman's blood. The quad screen checks alpha-fetoprotein (AFP), human chorionic gonadotropin (hCG), a type of estrogen (unconjugated estriol, or uE3), and the hormone inhibin A. The levels of these substances—along with a woman's age and other factors—help the doctor estimate the chance that the baby may have certain problems or birth defects.</p>
<p><b>Why It Is Done</b></p>
<p>A test for inhibin A is done in addition to other tests to see if there is a chance of chromosome problems, such as Down syndrome.</p>
<p><b>Risks</p></b>
<p>There is very little chance of a problem from having a blood sample taken from a vein.</p>
<p><b>Results</b></p>
<p>The inhibin A test is done to measure the amount of this hormone in a pregnant woman's blood to see if there is an increased chance the baby may have Down syndrome. Inhibin A is made by the placenta during pregnancy.</p>
<p>A normal result means the level of the hormone inhibin A is low, or negative. An abnormal result means the level of the hormone inhibin A is high, or positive.1 The level of the hormone must be reviewed with the quad screen blood tests.</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Estrogens","An estrogen test measures the level of the most important estrogen hormones ",2,0,
"
<p>Estrogen tests are used to detect a deficiency or excess in a woman and to help diagnose a variety of conditions associated with this imbalance. They may also be used to help determine the timing of a woman's ovulation and may be ordered to monitor the health status of the developing baby and placenta during pregnancy. In a man, estrogen testing may be performed to detect a hormone excess and its cause.</p>
<p><b>What does the test result mean?</b></p>
<p>Normal estrogen results depend upon the sex and age of the person being tested. With women, it also depends upon their menstrual cycle or whether they are pregnant. Reference ranges will vary somewhat between laboratories, both in normal values listed and in units used.</p>
<p>Increased or decreased levels of estrogens are seen in many metabolic conditions. Care must be used in the interpretation of estrone, estradiol, and estriol results because the levels vary on a day-to-day basis and throughout a woman's menstrual cycle.<p/>
<p>A health practitioner who is monitoring a woman's hormones will be looking at trends in the levels, rising or lowering over time in conjunction with the menstrual cycle or pregnancy rather than evaluating single values. Test results are not diagnostic of a specific condition but give the health practitioner information about the potential cause of a person's symptoms or status.</p>
<p>Below are conditions with which one might see an increase or decrease of estrogen levels.<p/>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Progesterone","A progesterone test measures the amount of the hormone progesterone in a blood sample",2,0,
"
<p>A progesterone test may be used:</p>
<ul>
<li>To help recognize and manage some causes of infertility. Since progesterone levels vary throughout the menstrual cycle, multiple (serial) measurements can be used for this purpose.</li>
<li>To determine whether or not a woman has ovulated, when ovulation occurred, or to monitor the success of induced ovulation</li>
<li>In early pregnancy to help diagnose an ectopic or failing pregnancy, along with human chorionic gonadotropin (hCG) testing </li>
<li>To monitor a high-risk pregnancy to help evaluate placenta and fetal health</li>
<li>If a woman is receiving progesterone injections to help support her early pregnancy, to help determine the effectiveness of the replacement treatment</li>
<li>Along with other tests such as an FSH, LH, hCG, thyroid tests, clotting tests, and a complete blood count (CBC) to help determine the cause of abnormal uterine bleeding in non-pregnant women</li>
</ul>
<p><b>What does the test result mean?</p></b>
<p>Interpretation of progesterone test results depends on the reason for testing and requires knowledge of the point at which a woman is in her menstrual cycle or pregnancy. Progesterone levels usually start to elevate when an egg is released from the ovary, rise for several days, and then either continue to rise with early pregnancy or fall to initiate menstruation.</p>
<p>If progesterone levels do not rise and fall on a monthly basis, a woman may not be ovulating nor having regular menstrual periods. This may be a cause of infertility.</p>
<p>f levels do not rise normally during an early pregnancy, the pregnancy may be ectopic and/or may be failing. If serial measurements do not show increasing progesterone levels over time, there may be problems with the viability of the placenta and fetus.</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("senectus et netus","a sollicitudin orci sem eget massa. Suspendisse",3,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Breast Cancer (BRCA) Gene Test","A breast cancer (BRCA) gene test is a blood test to check for specific changes (mutations) in genes",3,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES
 ("Folic Acid Test","A folic acid test measures the amount of folic acid in the blood.",3,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Cystic Fibrosis Sweat Test","A sweat test measures the amount of salt chemicals",4,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Cystoscopy","Cystoscopy is a test that allows your doctor to look at the inside of the bladder",4,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Sweat Test","A sweat test measures the amount of salt chemicals (sodium and chloride) in sweat",4,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Cystourethrogram","A cystourethrogram is an X-ray test that takes pictures of your...",4,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Cancer Antigen 125 (CA-125)","Cancer antigen 125 (CA-125) is a protein found on the surface of many ovarian cancer cells",3,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("O&P","Determine whether there are parasites present in",5,1,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Endoscopy","Endoscopy is used to find parasites that cause diarrhea",5,1,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Colonoscopy","This test is a procedure in which a tube is inserted into the mouth",5,1,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Serology","This test is done by your health care provider taking a blood sample and sending it to a lab.",5,1,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Genetic Test","A genetic test examines the DNA",6,1,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Total Serum Protein","measures the total amount of protein in the blood",6,1,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("D-Xylose Absorption Test","a type of sugar, in a blood or urine sample",6,1,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("MRI","Magnetic resonance imaging (MRI)",7,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Abdominal X-Ray","An abdominal X-ray is a picture of structures and organs",8,0,
"
<p>An abdominal x-ray is an imaging test to look at organs and structures in the belly area. Organs include the spleen, stomach, and intestines.</p>
<p>When the test is done to look at the bladder and kidney structures, it is called a KUB (kidneys, ureters, bladder) x-ray.</p>
<p><b>How to Prepare for the Test</b></p>
<p>Before having the x-ray, tell the health care provider the following:</p>
<ul>
<li>If you are pregnant or think you could be pregnant</li>
<li>Have an IUD inserted</li>
<li>Have had a barium contrast media x-ray in the last 4 days</li>
<li>If you have taken any medicines such as Pepto Bismol in the last 4 days (this type of medicine can interfere with the x-ray)</li>
</ul>
<p><b>How the Test Will Feel</b></p>
<p>There is no discomfort. The x-rays are taken as you lie on your back, side, and while standing.</p>
<p><b>Normal Results</b></p>
<p>The x-ray will show normal structures for a person your age.</p>
<p><b>Risks</b></p>
<p>There is low radiation exposure. X-rays are monitored and regulated to provide the minimum amount of radiation exposure needed to produce the image. Most experts feel that the risk is low compared with the benefits.
Pregnant women and children are more sensitive to the risks of the x-ray. Women should tell the health care provider if they are, or may be, pregnant.</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Spinal X-Ray","X-rays are a form of radiation, like light or radio waves",8,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Extremity X-Ray","An extremity X-ray is a picture of your hand",8,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Myelogram","Contrast material to make pictures of the bones",8,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Gallium Scan","A gallium scan is a nuclear medicine test",9,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Gallbladder Scan","A gallbladder scan is a nuclear scanning test",9,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Tonometry","A tonometry test measures the pressure inside your eye",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("EBV antibody test","For this test, a sample of blood is mixed with a substance that attaches to antibodies against EBV",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Monospot test ","This quick screening test detects a type of antibody",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Mantoux Test","A tuberculin skin test is done to see if you have ever been exposed to tuberculosis",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Abdominal Ultrasound","An abdominal ultrasound uses reflected sound waves to produce a picture of the organs and other structures in the upper abdomen.",10,0,
"
<p>An abdominal ultrasound uses reflected sound waves to produce a picture of the organs and other structures in the upper abdomen. Sometimes a specialized ultrasound is ordered for a detailed evaluation of a specific organ, such as a kidney ultrasound</p>
<p><b>How To Prepare</b></p>
<p>Tell your doctor if you have had a barium enema or a series of upper GI (gastrointestinal) tests within the past 2 days. Barium that remains in the intestines can interfere with the ultrasound test.</p>
<p><b>How It Is Done</b></p>
<p>This test is done by a doctor who specializes in performing and interpreting imaging tests (radiologist) or by an ultrasound technologist (sonographer) who is supervised by a radiologist. It is done in an ultrasound room in a hospital or doctor's office.</p>
<p>You will need to take off any jewelry that might interfere with the ultrasound scan. You will need to take off all or most of your clothes, depending on which area is examined (you may be allowed to keep on your underwear if it does not interfere with the test). You will be given a cloth or paper covering to use during the test.</p>
<p><b>Risks</b></p>
<p>There are no known risks from having an abdominal ultrasound test.</p>
<p><b>TResults</b></p>
<p>An abdominal ultrasound uses reflected sound waves to produce a picture of the organs and other structures in the abdomen.</p>
");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Tay-Sachs Test","The test for Tay-Sachs disease measures the amount of an enzyme ",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Dental X-Rays","Dental X-rays are pictures of the teeth, bones, and soft tissues",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Radioactive Thyroid Scan","How much tracer the thyroid gland absorbs from the blood",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Kidney Stone Analysis","Kidney stone analysis is a test done on a kidney stone ",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");
INSERT INTO `tests` (`analysis`,`description`,`test_category`,`enabled`,`full_description`) VALUES 
("Tonometry","A tonometry test measures the pressure inside your eye",10,0,
"
<p><b>Velit molestie molestie</b></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur iaculis turpis massa, nec tempor mauris fermentum eu. Praesent malesuada feugiat felis, et aliquet felis faucibus vel. Maecenas volutpat mauris quis diam pulvinar fermentum. Sed varius interdum mattis. Sed nibh sapien, convallis sit amet dapibus at, iaculis vel metus. Donec suscipit turpis in diam volutpat interdum. Vestibulum odio lectus, ornare eu ligula ut, aliquet cursus ex. Integer pellentesque varius nisl, eu venenatis elit. Nam augue metus, dapibus vel justo ac, tristique laoreet quam. Aliquam luctus massa nec arcu faucibus, sit amet euismod risus vehicula. Aenean tellus mi, maximus a rhoncus at, fermentum nec ligula. Praesent quis neque ut mi malesuada dignissim id imperdiet leo. Donec tempus pharetra eleifend. </p>
<p><b>Velit molestie molestie</b></p>
<p>Etiam quis mi felis. Nam arcu eros, consectetur at enim eget, pretium bibendum felis. Etiam semper tincidunt feugiat. Etiam lacinia lectus sit amet diam faucibus, eu sollicitudin erat posuere. Aenean scelerisque pellentesque ligula, sit amet facilisis ante suscipit eget. Pellentesque a metus cursus, blandit leo a, vulputate dui. Nunc libero risus, laoreet in feugiat ut, mollis sed velit. Aliquam molestie dui id ultrices bibendum. Duis at pharetra enim, non tristique neque. Donec tellus lectus, volutpat nec iaculis a, aliquam nec velit. In sed est in quam viverra pulvinar. Fusce efficitur congue felis, nec tempus tellus ultricies et. Vestibulum eleifend nisl vel mauris porta placerat. Fusce sollicitudin turpis eget mollis ultrices. Aliquam erat volutpat. Nulla in tempus odio. </p>

");

UPDATE tests SET test_category='BLOOD' WHERE test_category='1';
UPDATE tests SET test_category='HORMONAL' WHERE test_category='2';
UPDATE tests SET test_category='ONCOLOGY' WHERE test_category='3';
UPDATE tests SET test_category='CYTOLOGY' WHERE test_category='4';
UPDATE tests SET test_category='PARASITIC' WHERE test_category='5';
UPDATE tests SET test_category='GENETIC' WHERE test_category='6';
UPDATE tests SET test_category='ULTRASONOGRAPHY' WHERE test_category='7';
UPDATE tests SET test_category='RENTGENOGRAPHY' WHERE test_category='8';
UPDATE tests SET test_category='TOMOGRAPHY' WHERE test_category='9';
UPDATE tests SET test_category='OTHERS' WHERE test_category='10';
-- table tests counts 400 units

-- -- insert laboratories into laboratories table
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("Mature Woman's Centre"," 655 Bay St, Toronto, ON M5G 2K4","1");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("Midtown Diagnostic Imaging"," 1849 Yonge St, Toronto, ON M4S 1Y2","2");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("Clairhurst X-ray and Ultrasound"," 1466 Bathurst St, Toronto, ON M5R 3S3","3");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("Rosedale Radiology And Ultrasound"," 600 Sherbourne St, Toronto, ON M4X 1W4 ","4");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("Metro Central Ultrasound"," 27 Queen St E, Toronto, ON M5C 2M6","5");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("Avenue Rd X-Ray"," 105-27 Roncesvalles Ave, Toronto, ON M6R 3B2","6");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("Forensic Genetic Center,"," 2175 Keele St, York, ON M6M 3Z4","7");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("CML HealthCare"," 70 Carlton St, Toronto, ON M5B 1L6","8");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("Gamma-Dynacare"," 2401 Yonge St, Toronto, ON M4P 3H1","9");
INSERT INTO `laboratories` (`name`,`description`,`id_labmanager`) VALUES ("LifeLabs"," 55 Queen St E, Toronto, ON M5C 1R6","10");
-- table laboratories counts 10 units

-- bind tables laboratories and tests to get ManyToOne table laboratories_tests
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (2,35),(2,36),(2,37),(2,38),(2,39),(2,40),(2,41),(2,42),(2,43),(2,44);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (3,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (3,31),(3,32),(3,34),(3,35),(3,36),(3,37),(3,38),(3,39),(3,40),(3,41);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (3,42),(3,43),(3,44);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (4,21),(4,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(4,30);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (5,25),(5,26),(5,27),(5,28),(5,29),(5,30),(5,31),(5,32),(5,33),(5,34);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (5,35),(5,36),(5,37),(5,38),(5,39),(5,40),(5,41),(5,42),(5,43),(5,44);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(6,19),(6,20);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (6,21),(6,22),(6,23),(6,24),(6,25),(6,26),(6,27),(6,28),(6,29),(6,30);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (6,31),(6,32),(6,34),(6,35),(6,36),(6,37),(6,38),(6,39),(6,40),(6,41);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (6,42),(6,43),(6,44);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (7,11),(7,12),(7,13),(7,14),(7,15),(7,16),(7,17),(7,18),(7,19),(7,20);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (7,21),(7,22),(7,23),(7,24),(7,25),(7,26),(7,27),(7,28),(7,29),(7,30);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (8,25),(8,26),(8,27),(8,28),(8,29),(8,30),(8,31),(8,32),(8,33),(8,34);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (8,35),(8,36),(8,37),(8,38),(8,39),(8,40),(8,41),(8,42),(8,43),(8,44);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (9,11),(9,12),(9,13),(9,14),(9,15),(9,16),(9,17),(9,18),(9,19),(9,20);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (10,31),(1,32),(10,34),(10,35),(10,36),(10,37),(10,38),(10,39),(10,40),(10,41);
INSERT INTO `laboratories_tests` (`id_lab`,`id_test`) VALUES (10,42),(10,43),(10,44);

INSERT INTO `treatments_tests` (`id_user`,`id_treatment`,`id_test`,`appointment_date`) 
VALUES (101,1,1,"2014-10-22"),(101,1,2,"2014-10-22"),(101,1,3,"2014-10-22"),(101,1,4,"2014-10-22"),(101,1,5,"2014-10-22");

INSERT INTO `treatments_tests` (`id_user`,`id_treatment`,`id_test`,`id_laboratory`,`appointment_date`,`test_date`)
VALUES (101,1,5,2,"2014-10-15","2014-10-16"),(101,1,6,2,"2014-10-22", "2014-10-23"),(101,1,7,2,"2014-09-15", "2014-09-16");

INSERT INTO `treatments_tests` (`id_user`,`id_treatment`,`id_test`,`id_laboratory`,`appointment_date`,`test_date`,`test_result`)
VALUES (101,1,8,2,"2014-10-15","2014-10-16","all right"),(101,1,9,2,"2014-10-22", "2014-10-23","not bad"),(101,1,10,2,"2014-09-15", "2014-09-16","norm");

-- INSERT TEST USERS WITH EACH ROLE
INSERT INTO `users` (`adress`,`birthday`,`email`,`full_name`,`gender`,`login`,`password`,`phone`,`registration_date`,`status`) VALUES
 ("Adress test_patient","1980-09-01","test_patient@test.com","Test Patient","MALE","test_patient","2295ff7a8bd8b3f2884c6482146e3ded0417f72072c079fbe223e13e83a0388e","+38 (016) 111-88-88","2014-10-27","APPROVED")
 ,("Adress test_doctor","1980-09-01","test_doctor@test.com","Test Doctor","MALE","test_doctor","72f4be89d6ebab1496e21e38bcd7c8ca0a68928af3081ad7dff87e772eb350c2","+38 (016) 111-88-77","2014-10-27","APPROVED")
 ,("Adress test_manager","1980-09-01","test_manager@test.com","Test Manager","MALE","test_manager","6ee4a469cd4e91053847f5d3fcb61dbcc91e8f0ef10be7748da4c4a1ba382d17","+38 (016) 111-66-77","2014-10-27","APPROVED")
 ,("Adress test_pharmacist","1980-09-01","test_pharmacist@test.com","Test Pharmacist","MALE","test_pharmacist","2e9926caf5a34b3625f9f73567680a47947dc4e7beb4fc454273535a87d68c4e","+38 (016) 222-66-77","2014-10-27","APPROVED")
 ,("Adress test_labmanager","1980-09-01","test_labmanager@test.com","Test Labmanager","MALE","test_labmanager","ab7c180dc9fae8fcc216bb447a809ca2622637b30562ecb4d13516d4d16a7e4a","+38 (016) 222-55-77","2014-10-27","APPROVED")
 ,("Adress doctor and patient","1980-09-01","test_doctor_patient@test.com","Test Doctor and Patient","MALE","test_pdoctor","72f4be89d6ebab1496e21e38bcd7c8ca0a68928af3081ad7dff87e772eb350c2","+38 (016) 181-67-73","2014-11-03","APPROVED")
 ,("Adress pharmacist and patient","1980-09-01","test_pharmacist_patient@test.com","Test Pharmacist and Patient","MALE","test_pph","2e9926caf5a34b3625f9f73567680a47947dc4e7beb4fc454273535a87d68c4e","+38 (016) 184-67-73","2014-11-03","APPROVED")
 ,("Adress labmanager and patient","1980-09-01","test_labmanager_patient@test.com","Test Labmanager and Patient","MALE","test_plab","ab7c180dc9fae8fcc216bb447a809ca2622637b30562ecb4d13516d4d16a7e4a","+38 (016) 184-17-73","2014-11-03","APPROVED");

select id from users where login='test_patient' into @id_patient;
select id from users where login='test_doctor' into @id_doctor;
select id from users where login='test_manager' into @id_manager;
select id from users where login='test_pharmacist' into @id_pharmacist;
select id from users where login='test_labmanager' into @id_labmanager;

select id from users where login='test_pdoctor' into @id_pdoctor;
select id from users where login='test_pph' into @id_ppharmacist;
select id from users where login='test_plab' into @id_plabmanager;

INSERT INTO `users_roles` (`id_user`,`role`,`status`) VALUES
(@id_patient, "ROLE_PATIENT","APPROVED")
, (@id_doctor, "ROLE_DOCTOR","APPROVED")
, (@id_manager, "ROLE_MANAGER","APPROVED")
, (@id_pharmacist, "ROLE_PHARMACIST","APPROVED")
, (@id_labmanager, "ROLE_LABMANAGER","APPROVED")
, (@id_pdoctor, "ROLE_DOCTOR","APPROVED"), (@id_pdoctor, "ROLE_PATIENT","APPROVED")
, (@id_ppharmacist, "ROLE_PHARMACIST","APPROVED"), (@id_ppharmacist, "ROLE_PATIENT","APPROVED")
, (@id_plabmanager, "ROLE_LABMANAGER","APPROVED"), (@id_plabmanager, "ROLE_PATIENT","APPROVED");

delete prescriptions from prescriptions left outer join treatments_drugs td on prescriptions.id_treatment=td.id_treatment where td.id_treatment is null;