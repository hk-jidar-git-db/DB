
/*  *********************** PCM Data *******

        Data For test

*/

use pcm;

-- Articles
INSERT INTO `articles` (`id`, `code`, `barcode`, `item_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AAA-B2019', 'CC#-120', 'CYTROL Ec10', NULL, '2019-11-12 07:32:30', '2019-11-12 13:51:21'),
(2, 'NN2019', 'BB-NN-WW2019', 'Actillic', NULL, '2019-11-12 13:52:04', '2019-11-12 13:52:04');
-- cp
INSERT INTO `cp` (`id`, `cp_name`, `is_active`, `pest`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'R01', 0, 7, NULL, NULL, '2019-11-11 07:18:36'),
(2, 'R02', 1, 2, NULL, '2019-11-11 04:27:05', '2019-11-11 07:01:36'),
(3, 'M01', 1, 2, NULL, '2019-11-11 04:32:40', '2019-11-11 07:01:42'),
(4, 'M02', 0, 2, NULL, '2019-11-11 05:29:33', '2019-11-11 06:07:07'),
(5, 'M03', 0, 2, NULL, '2019-11-11 05:40:46', '2019-11-11 06:07:18'),
(6, 'M06', 0, 2, NULL, '2019-11-11 05:59:55', '2019-11-11 06:07:31'),
(7, 'R03', 0, 2, NULL, '2019-11-11 06:00:17', '2019-11-11 06:07:44'),
(8, 'R04', 0, 2, NULL, '2019-11-11 06:00:26', '2019-11-11 06:08:04'),
(9, 'M02', 0, 4, NULL, '2019-11-11 06:00:41', '2019-11-11 06:00:41');
-- insp_birds
INSERT INTO `insp_birds` (`id`, `insp_item`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Checks', NULL, '2019-11-11 16:50:21', '2019-11-11 16:50:21'),
(2, 'هل يوجد دليل على وجود طيور حية  (فضلات أو ريش ) ؟', NULL, '2019-11-11 16:55:25', '2019-11-11 16:55:25'),
(3, 'هل يوجد بيئة مناسبة لإستوطان الطيور بأي مكان بالمصنع(أشجار وأغصان – بذور بقوليات ... إلخ؟', NULL, '2019-11-11 16:55:41', '2019-11-11 16:55:41'),
(4, 'هل لوحظت أعشاش الطيور بين ثنايا المباني، تحت ظلال الأرصفة، المناطق المغطاة، خارج المظلات أو في المناطق قليلة الإستعمال؟', NULL, '2019-11-11 16:55:56', '2019-11-11 16:55:56'),
(5, 'هل كل الفتحات الخارجية محمية لمنع دخول الطيور؟', NULL, '2019-11-11 16:56:10', '2019-11-11 16:56:10'),
(6, 'هل تتوافق مكافحة الطيور مع القوانين البيئية أو المحلية ؟', NULL, '2019-11-11 16:56:25', '2019-11-11 16:56:25');
-- pest
INSERT INTO `pest` (`id`, `pest_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'صراصير', NULL, '2019-11-09 07:22:37', '2019-11-09 07:22:37'),
(2, 'قوارض', NULL, '2019-11-09 07:25:20', '2019-11-09 07:25:20'),
(4, 'النمل   the Ants', NULL, '2019-11-09 07:29:33', '2019-11-11 15:11:41'),
(5, 'فاءر المنزل House Mouse', NULL, '2019-11-09 07:30:00', '2019-11-09 07:30:00'),
(6, 'جرذ النروجي Norway Rats', NULL, '2019-11-09 07:30:27', '2019-11-09 07:30:27'),
(7, 'السحالي', NULL, '2019-11-09 10:56:19', '2019-11-09 10:56:19'),
(9, 'السمكة  الفضية', NULL, '2019-11-11 14:41:11', '2019-11-11 14:43:04');
-- site_sort
INSERT INTO `site_sort` (`id`, `sort_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'فنادق',            NULL, '2019-11-09 11:57:41', '2019-11-09 11:57:41'),
(2, 'resturant',        NULL, '2019-11-09 12:00:44', '2019-11-09 12:00:44'),
(3, 'Cafee',            NULL, '2019-11-09 12:02:02', '2019-11-09 12:02:02'),
(4, 'Peakery',          NULL, '2019-11-09 12:02:27', '2019-11-09 12:02:27'),
(6, 'مزين',             NULL, '2019-11-09 12:07:30', '2019-11-09 12:07:30');

-- team

INSERT INTO `team` (`id`, `team_name`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Team01', 1, NULL, NULL, '2019-11-11 07:18:51'),
(7, 'Team031', 1, NULL, '2019-11-05 18:07:18', '2019-11-07 02:54:38'),
(9, 'Team05', 1, NULL, '2019-11-05 18:12:14', '2019-11-06 08:21:44'),
(10, 'Team06', 1, NULL, '2019-11-05 18:12:57', '2019-11-07 02:54:58'),
(11, 'Team2019', 1, NULL, '2019-11-05 18:13:25', '2019-11-11 07:18:59'),
(12, 'Team2020', 0, NULL, '2019-11-05 18:14:36', '2019-11-06 08:11:31'),
(13, 'Team2021', 0, NULL, '2019-11-05 18:15:24', '2019-11-06 08:18:07'),
(14, 'Team0009', 1, NULL, '2019-11-05 18:15:50', '2019-11-05 18:15:50'),
(15, 'tyhhh', 0, NULL, '2019-11-05 18:18:27', '2019-11-05 18:18:27'),
(17, 'Team017', 1, NULL, '2019-11-05 18:21:51', '2019-11-11 14:45:30'),
(18, 'frfe', 0, NULL, '2019-11-05 18:21:57', '2019-11-05 18:21:57'),
(19, 'cxczxc', 0, NULL, '2019-11-05 18:22:06', '2019-11-05 18:22:06'),
(20, 'dasd', 0, NULL, '2019-11-05 18:22:32', '2019-11-05 18:22:32'),
(21, 'das', 0, NULL, '2019-11-05 18:23:05', '2019-11-05 18:23:05'),
(22, 'efef', 0, NULL, '2019-11-05 18:23:38', '2019-11-05 18:23:38'),
(23, 'efef', 0, NULL, '2019-11-05 18:24:17', '2019-11-05 18:24:17'),
(24, 'efef', 0, NULL, '2019-11-05 18:24:47', '2019-11-05 18:24:47'),
(25, 'efef', 0, NULL, '2019-11-05 18:25:27', '2019-11-05 18:25:27'),
(26, 'Ahmed hakeem ajaj', 0, NULL, '2019-11-05 18:25:38', '2019-11-05 18:43:39'),
(27, 'Team2019', 0, NULL, '2019-11-06 05:39:48', '2019-11-06 05:39:48'),
(28, 'Team today06', 0, NULL, '2019-11-07 02:57:40', '2019-11-07 02:57:40'),
(29, 'Team Year2019', 0, NULL, '2019-11-07 02:58:54', '2019-11-07 02:58:54'),
(30, 'Team Year of 2020', 1, NULL, '2019-11-07 04:04:00', '2019-11-07 04:04:00');

-- team_route
INSERT INTO `team_route` (`id`, `code`, `route_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'A1001', 'شارع الجمهورية', NULL, '2019-11-09 12:57:45', '2019-11-09 12:57:45'),
(2, 'A1002', 'شارع النصر', NULL, '2019-11-09 12:58:00', '2019-11-09 12:59:30'),
(3, 'C1001', 'سوق الجمعة', NULL, '2019-11-09 12:59:59', '2019-11-09 12:59:59'),
(4, 'D1001', 'ابوسليم', NULL, '2019-11-09 13:00:33', '2019-11-09 13:00:33'),
(6, 'B1002', 'سيدي المصري', NULL, '2019-11-09 13:01:25', '2019-11-09 13:01:25'),
(7, 'B1002', 'الهضبة الخضراء', NULL, '2019-11-09 13:02:02', '2019-11-09 13:02:02');


