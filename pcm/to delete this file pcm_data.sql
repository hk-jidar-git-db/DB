use pcm;



insert into   equipment (eq_name,eq_type,eq_riddate) 
  values 
  ("سيارة رينو - Renulat ganjo",0,null),
  ("مضخة رش - aerosol Spray ",1,null),
  ("عفارة - Duster",1,null),
  ("مسدس جل - Gel gun",0,null);
 
 insert into insp_items(insp_item)
  values
  ("أسطح المباني"),
  ("المبني الإداري"),
  ("صالات الإنتاج"),
  ("المخازن"),
  ("المصاعد"),
  ("الإستقبال"),
  ("السلالم :العاملين - الإدارية"),
  ("المرتجع والإعدامات"),
  ("حول السور من الداخل"),
  ("حول المباني من الخارج"),
  ("حول المصنع من الخارج"),
  ("البالوعات الداخلية"),
  ("البالوعات الخارجية"),
  ("أخرى");

insert into insp_birds (insp_item)
  VALUES
    ( " هل يوجد دليل على وجود طيور حية (فضلات أو ريش ) ؟"), 
    (" هل يوجد بيئة مناسبة لإستوطان الطيور بأي مكان بالمصنع(أشجار وأغصان – بذور بقوليات ... إلخ؟"),
    ("هل لوحظت أعشاش الطيور بين ثنايا المباني، تحت ظلال الأرصفة، المناطق المغطاة، خارج المظلات أو في المناطق قليلة الإستعمال؟ ") ,
    (" هل كل الفتحات الخارجية محمية لمنع دخول الطيور؟"),
    ("    هل تتوافق مكافحة الطيور مع القوانين البيئية أو المحلية ؟");

INSERT INTO team_route (id, code, route_name)
  VALUES (229, 'A', 'ابوسليم'),
                  (234, 'B', 'السياحية'),
                  (236, 'C', 'زناتة'),
                  (239, 'D', 'ابو ستة'),
                  (242, 'E', 'المدينة'),
                  (249, 'F', 'زاوية الدهماني'),
                  (252, 'G', 'بن عاشور'),
                  (255, 'K', 'شارع الزاوية'),
                  (259, 'I', 'شارع الجمهورية'),
                  (266, 'L', 'الظهرة'),
                  (273, 'M', 'الحشان'),
                  (274, 'N', 'عين زارة'),
                  (280, 'J', 'سيدي المصري'),
                  (284, 'O', 'الهضبة'),
                  (291, 'Q', 'قرقارش'),
                  (294, 'R', 'سوق الجمعة'),
                  (321, 'S', 'جامع الصقع'),
                  (326, 'T', 'تاجوراء'),
                  (412, 'V', 'سوق الثلاثاء القديم'),
                  (574, 'W', 'غرغور'),
                  (575, 'U', 'زاوية الدهماني'),
                  (576, 'Z', 'تجربة'),
                  (577, 'AA', 'باب بن غشير'),
                  (578, 'AB', 'خط سير الفلاح'),
                  (579, 'AC', 'القره بولي'),
                  (580, 'AD', 'غرغور 2'),
                  (581, 'AE', 'الخمس');

-- empl Data
/* Data for the 'empl' table  (Records 1 - 138) */

INSERT INTO empl (id, empl_name) VALUES
    (1, 'محمد نجيب الشعاب'),
    (3, 'فادية فرج الهمالى'),
    (4, 'ابو القاسم مختار درمان'),
    (6, 'مجدى بلقاسم'),
    (7, 'خميس عيد محمد'),
    (8, 'وائل مسعد ابراهيم'),
    (9, 'احمد ابو ربعية'),
    (10, 'صبرى على حسن'),
    (11, 'مصطفى على صالح'),
    (12, 'ابو بكر المبروك'),
    (13, 'فتحي الفيتوري حسين الدرداني'),
    (14, 'عبد القادر  على عبد القادر'),
    (15, 'مصطفى الشبانى'),
    (16, 'امين فومبا'),
    (17, 'يوسف عبد الحفيظ يوسف الدرناوي'),
    (18, 'عبد الحكيم محمد عجاج'),
    (19, 'كلثوم عبد العزيز  ادريس'),
    (20, 'فتحية سالم'),
    (21, 'زهرة المزدوى'),
    (22, 'ريمة عمر رمطان'),
    (23, 'ام السعد سويدان'),
    (24, 'مريم محمد علي'),
    (25, 'لطيفة محمد منصور'),
    (27, 'حنان محمد عبد السلام'),
    (28, 'عائشة بن مومن'),
    (29, 'نعيمة الشاطر'),
    (30, 'فاطمة بركة على'),
    (31, 'نادية حسن احمد'),
    (32, 'سامية على حسن'),
    (33, 'مريم محمد على'),
    (34, 'زهور ابرهيم'),
    (35, 'ريم عبد الرزق المصراتى'),
    (37, 'عائشة المبروك'),
    (38, 'كريمة احمد طروم'),
    (39, 'ربيعة عبد الرسول'),
    (40, 'زكية حسن'),
    (41, 'سعاد ساسى'),
    (42, 'سالمة الورشفانى'),
    (44, 'ربيع يوسف المسلاتى'),
    (47, 'وسام  السعداوي'),
    (48, 'احمد ابو القاسم درمان'),
    (50, 'عبد الله دويش'),
    (53, 'سيدو دومبيا'),
    (54, 'ممادي دامان تراوري'),
    (55, 'محمد بزيك'),
    (57, 'عبد الحكيم ابو بكر لعابة'),
    (58, 'امير محمد خليفة'),
    (59, 'نوري مصباح محمد الغناي'),
    (60, 'عيسي المشري امحمد  مفتاح'),
    (61, 'نور الدين بلعيد بشير شاقور'),
    (62, 'محمد ساسي قويدر بئير'),
    (63, 'محمد عامرمحمد التاجوري'),
    (64, 'هدى سالم علي بن غرسة'),
    (65, 'اسماء خليفة محمد ابو سنينة'),
    (66, 'ربيعة امحمد علي زغدود'),
    (67, 'فتحي علي ابراهيم ابو دقاقة'),
    (68, 'اسامة عرفة مصطفى الهدار'),
    (69, 'محمود حسين محمد بن عيسى'),
    (70, 'مسعود عبد السلام مسعود اللافي'),
    (71, 'مفتاح عمر صالح التاغذي'),
    (72, 'عادل احمد محمد الطبيب'),
    (73, 'محمد محمدسليمان الغبيب'),
    (74, 'محمد احمد نصرعبد النبي'),
    (75, 'محمد سعيد محمد مسعود'),
    (76, 'عبد الله محمد مسعود الشتيوي'),
    (77, 'سامي امحمد ميلاد المزوغي'),
    (78, 'ايهاب محمدجاب الله العموري'),
    (79, 'مراد محمد سالم الاخضر'),
    (80, 'اسامة علي منصور قدورة'),
    (81, 'صلاح خليفة سالم مفتاح'),
    (82, 'ابراهيم موسى احمد الحبيشي'),
    (83, 'علي محمد علي قحواط'),
    (84, 'خالد محمد الامين مبارك'),
    (85, 'زينوبة محمد خليفة برناز'),
    (86, 'ابتسام الزروق بشير بيده'),
    (87, 'سليم عمران العابدي احمد'),
    (88, 'اشرف ميلاد محمد الصبو'),
    (89, 'طلال فرج حسين البكوش'),
    (90, 'عبد الهادي محمد ميلاد علي'),
    (91, 'ابراهيم احمد محمد حسين'),
    (92, 'علي بشير احمد ونيس'),
    (93, 'THOMAS'),
    (94, 'الصغير جمعة ابوزويدة'),
    (96, 'خالد محمد بشير بن طابون'),
    (98, 'حفصة علي سالم الناجم'),
    (99, 'أسامة مفتاح الساعدى الورفلي'),
    (100, 'علي بشير عبد النور'),
    (101, 'عبد السلام الهادي بشير عثمان'),
    (102, 'مختار بشير مختار عبد السلام'),
    (103, 'حنان محمد خليفة برناز'),
    (104, 'فتحية المختار ابو القاسم الككلي'),
    (105, 'محمد محمد الصغير مرغم'),
    (106, 'خليفة صالح سالم زندوح'),
    (107, 'مسعود عمار العجيلي'),
    (108, 'حسين المخزوم مسعود الامين'),
    (109, 'انور صالح محمد شاكير'),
    (110, 'فوزي صالح محمد شنيب'),
    (111, 'نور الدين حسين قرضاب'),
    (112, 'محمد صالح ارحومه الحطاب'),
    (113, 'علي محمد احمد ضوء'),
    (114, 'عادل منصور السنوسي'),
    (115, 'محمد مصباح القاضي'),
    (116, 'خالد عبد الرزاق مصطفى بن اسماعيل'),
    (117, 'نجيه محمد عمران الاحرش'),
    (118, 'تامر جمعة امبارك بن ابراهيم'),
    (119, 'الهادي علي علي صليبه'),
    (120, 'منيه عمار سلامه الغرياني'),
    (121, 'سلوى على حسين الغريانى'),
    (122, 'ليلي حسن عون الزنتانى'),
    (123, 'عصام أرحومة'),
    (124, 'محمد عبدالسلام الكمع'),
    (125, 'طارق الهادي الفرجانى'),
    (127, 'وائل محمد الغول'),
    (128, 'خالد ساسي قويدر بيئيري'),
    (129, 'بسمة على على عيش'),
    (130, 'حاتم بشير العجيلى'),
    (131, 'سيف الدين محمود برقان'),
    (132, 'يوسف خان'),
    (133, 'محمد عياد الرقبى'),
    (134, 'شادى خليل عاشور'),
    (135, 'فواد بن عبدالله'),
    (136, 'راسل محمد'),
    (137, 'نور فرج'),
    (138, 'عمار سالم المداح'),
    (139, 'محمد عمر صالح عمر'),
    (140, 'كوثر علي سالم الحلالي'),
    (141, 'نزهة عبد الزراق الغريانى'),
    (142, 'ربيعة عبد الرزاق الغرياني'),
    (143, 'طه محمد نجيب'),
    (144, 'امل نورى الدخلى'),
    (147, 'عبد الله محمد الشتيوى'),
    (149, 'مفيدة عمار سلامه الغرياني'),
    (150, 'يوسف سالوف محمد'),
    (151, 'سمية محمد عبدالسلام المسلاتي'),
    (152, 'عبدالناصر ابراهيم موسى'),
    (153, 'أحمد عبدالحكيم  عجاج'),
    (154, 'جهاد الأسعد عمار الغرياني'),
    (155, 'وليد عبدالرزاق علي الغرياني');