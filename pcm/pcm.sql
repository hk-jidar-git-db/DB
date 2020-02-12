/* pest control managment application database                                            */
    /* ------------------------------------------------------------     */
    /* 09-10-2019                                                       */
    /* eng.abduelhakeem m ajaj  & eng.zakaria joma elshrief             */
    /* tripoli - libys                                                  */
    /*                                                                  */
    /* pcm database version 1.0.0                                */
    /* mysql database                                                   */
    /*                                                                  */
    /*                                                                  */
    /* --------------------------------------------------------------   */
    /* host     : localhost                                             */
    /* port     : 3306                                                  */
    /* database : pcm                                                   */
    /*  shor names:                                         
        rod :  rodent
        inst : insects
        trp  : traps
        bait : bait
        on : open
    spy : spray
    lit : liter
    vst : visit

    */

drop database if exists pcm;

create database if not exists pcm
    character set 'utf8'
    collate 'utf8_general_ci';

 use pcm;

-- table 0: pest
    create table pest(
        id integer not null auto_increment primary key,
        pest_name varchar(225)
    );

-- table 1
    -- fr-15-04
    -- نموذج طلب معاينة منشأة
        -- التاريخ
        -- الساعة
        -- اسم المنشاة
        -- مسئول المنشاة
        -- متلقي الطلب
        -- نوع المقاومة المطلوب معاينة لها
        -- عنوان المنشاة
        -- موعد المعاينة
    create table req_siteinsp (
        id integer not null auto_increment primary key,
        c_time timestamp,
        site_name varchar(60),
        site_manager varchar(60),
        empl integer,
        pest integer,
        site_address varchar(225),
        insp_date date,
        foreign key (pest) references pest(id) on update cascade
    );

 -- table 2
    --  fr-15-05
    --  تقرير معاينة منشاة
        --  التاريخ
        --  اسم المنشاة
        --  المهندس القائم بالمعاينة
        --  مسئول المنشاة
        --  البريد أو الفاكس المرسل عليه العرض الفني والمالي
        --  العرض الفني والمالي عناية
        --  عدد محطات القوارض الخارجية
        --  العرض المالي بالقوارض
        --  عدد مصائد القوارض الداخلية
        --  عدد محطات القوارض المفتوحة
        --  عدد اللترات / الوحدات المطلوب رشها للحشرات الزاحفة في المرة الوحدة
        --  عدد الرشات
        --  عدد مرات الحقن
        --  العرض المالي للحشرات الزاحفة
        --  عدد اللترات رشها للحشرات الطائرة
        --  عدد الرشات
        --  عدد المصائد البيولوجية
        --  عدد المصائد الداخلية
        --  العرض المالي للحشرات الطائرة
        --  التوصيات الفنية
        --  ملاحظات
    create table rep_siteinsp(
        req_siteinsp integer  not null primary key,
        c_date date,
        rodextboxnum smallint,
        rodinttrpnum smallint,
        rodonbaitnum smallint,
        rodcost  numeric(5,3),
        inslitperonevst smallint,
        geltimenum  smallint,
        inscost numeric(5,3),
        flylitnum smallint,
        spynum smallint,
        flybiotrpnum smallint,
        flyinttrpnum smallint,
        flycost numeric(5,3),
        techrequmd varchar(225),
        remarks varchar(225),
        issend smallint default 0,
        isagree smallint default 0,
        foreign key (req_siteinsp) references req_siteinsp(id) on update cascade
    );

-- table 3
    --  fr-15-12
    --  العرض المالي
        --  التاريخ
        --  السادة
        --  عناية الأستاذ
        --  نوع المقاومة
        --  نطاق التعاقد
        --  مدة التعاقد
        --  قيمة التعاقد
        --  بالنسبة للقوارض
        --  بالنسبة للحشرات الزاحفة
        --  بالنسبة للحشرات الطائرة بنظام التوريد
    create table financial_offer (
        req_siteinsp integer  not null primary key,
        contduration smallint,
        rodcost numeric(5,3),
        rodvisitnum smallint,
        inscost numeric(5,3),
        insvisitnum smallint,
        insspyplaces varchar(225),
        biotrpprice numeric(5,3),
        kgbioferm numeric(5,3),
        biotrpholder numeric(5,3),
        flygluetrp numeric(5,3),
        flybulbtrp numeric(5,3),
        monitoring numeric(5,3),
        monitnum smallint,
        payaftersign smallint,
        payafter6m smallint,
        foreign key (req_siteinsp) references req_siteinsp(id) on update cascade
    );

-- table 4 : equipment
    create table equipment (
        id integer not null auto_increment primary key,
        eq_name varchar(225),
        eq_type  integer,
        eq_riddate date,
        is_active integer,
        body_num varchar(225),
        engine_num varchar(225),
        equip_color varchar(225),
        counter_num varchar(225),
        equi_photo varchar(225),
        insurance_exp date,
        carlicense_exp date,
        carstamp_exp date,
        id_number varchar(40)
        
    );

-- table 7: equipdoccopy
    create table equip_doc (
        id integer not null auto_increment primary key,
        equipment integer not null,
        doc_name varchar(225),
        doc_copy varchar(225),
        foreign key (equipment) references equipment(id) on update cascade
    );
    
-- table 8: equipmplan  equipment maintenance plan
    create table equip_mplan (
        equipment   integer not null,
        target_date date not null,
        done_date date,
        man_repair varchar(100), 
        m_type char(1),
        remarks varchar(225),
        primary key(equipment,target_date),
        foreign key (equipment) references equipment(id) on update cascade
    );

-- table 9: equipmrep equipment maintenenc report
    create table equip_repair (
         equipment   integer not null,
        repair_date date not null,
        repair_man varchar(100),
        damage varchar(225), 
        mtype char(1),
        remarks varchar(225),
        primary key(equipment,repair_date),
        foreign key (equipment) references equipment(id) on update cascade       
    );

-- table 10: Team
    create table team (
        id integer not null auto_increment primary key,
        is_active integer,
        team_name varchar(225)
    );

-- table 11: empl
    create table empl (
        id integer not null auto_increment primary key,
        empl_name varchar(225)
    );    

-- table 12: team_tech
    create table team_tech (
        team integer not null,
        empl integer not null, 
        change_date date not null, -- starting date
        is_admin integer,
        primary key(team,empl,change_date),
        foreign key (empl) references empl(id) on update cascade,
        foreign key (team) references team(id) on update cascade
    );

-- table 13: team_equimpent
    create table team_equi (
        id  integer not null auto_increment primary key,
        equi integer not null,
        team integer not null,
        qya integer,
        receipt_date date,
        foreign key (equipment) references equipment(id) on update cascade,
        foreign key (team) references team(id) on update cascade
    );

-- teable 14: Articles
    create table articles (
        id  integer not null auto_increment primary key,
        code varchar(225),
        barcode varchar(225),
        article_name varchar(225) 
    );

-- table 15: team articles
    create table team_articles(
        id  integer not null auto_increment primary key,
        articles integer not null,
        team integer not null,
        qya integer not null,
        receipt_date date,
        foreign key (articles) references articles(id) on update cascade,
        foreign key (team) references team(id) on update cascade
    );

-- table 16: route
    create table team_route (
        id integer not null auto_increment primary key,
        code varchar(225) unique,
        route_name varchar(225)
    );

-- table 17: route_schedual
    create table route_schedual (
        id integer not null auto_increment primary key,
        team_route integer not null,
        schedual_date date,
        team integer not null,
        foreign key (team) references team(id) on update cascade,
        foreign key (team_route) references team_route(id) on update cascade
    );

-- table 18: site_sort
    create table site_sort(
        id integer not null auto_increment primary key,
        sort_name varchar(225)
    );

-- table 19: site
    create table sites (
        id integer not null auto_increment primary key,
        site_parent integer not null,
        site_name varchar(225),
        team_route integer not null,
        site_sort integer not null,
        code varchar(225),
        is_active integer,
        balance numeric(5,3),
        remarks varchar(225),
        auto_renew integer,
        foreign key (site_parent) references sites(id) on update cascade,
        foreign key (team_route) references team_route(id) on update cascade,
        foreign key (site_sort) references site_sort(id) on update cascade
    );

-- table 20: site_visits
    create table site_visit(
        sites integer not null,
        route_schedual integer not null,
        campign_num integer,
        visit_time time,
        in_time time,
        out_time time,
        admin_rep varchar(225),
        remarks varchar(225),
        visit_type char(1),
        guarante integer,
        visit_status varchar(2),
        inv_value numeric(5,3),
        discount numeric(5,3),
        why_discount varchar(225),
        amount numeric(5,3),
        primary key (sites,route_schedual),
        foreign key (sites) references sites(id) on update cascade,
        foreign key (route_schedual) references route_schedual(id) on update cascade        
    );

-- table 21: insp_item
    create table insp_items(
        id integer not null auto_increment primary key,
        insp_item varchar(225)
    );

-- table 22: insp_birds
    create table insp_birds (
        id integer not null auto_increment primary key,
        insp_item varchar(225)
    );

-- table 23: site_birds
    create table site_birds (
        sites integer not null,
        route_schedual integer not null,
        insp_birds integer not null,
        correction varchar(225),
        prodects varchar(225),
        remarks varchar(225),
        primary key(sites,route_schedual),
        foreign key (insp_birds) references insp_birds(id) on update cascade,
        foreign key (sites) references sites(id) on update cascade,
        foreign key (route_schedual) references route_schedual(id) on update cascade        
    );

-- table 24: site Treatment
    create table site_treatment (
        sites integer not null,
        route_schedual integer not null,
        pest integer not null,
        articles integer not null,
        is_complain integer,
        complain_type integer,
        remarks varchar(225),
        primary key(sites,route_schedual),
        foreign key (pest) references pest(id) on update cascade,
        foreign key (sites) references sites(id) on update cascade,
        foreign key (route_schedual) references route_schedual(id) on update cascade        
    );

-- table 25: site_insp
    create table site_insp (
        sites integer not null,
        route_schedual integer not null,
        insp_items integer not null,
        correction varchar(225),
        prodects varchar(225),
        primary key(sites,route_schedual),
        foreign key (insp_items) references insp_items(id) on update cascade,
        foreign key (sites) references sites(id) on update cascade,
        foreign key (route_schedual) references route_schedual(id) on update cascade        
    );
-- table 26: checkpoints
    create table cp (
        id integer not null auto_increment primary key,
        cp_name varchar(225),
        is_active integer,
        pest integer
    );

-- table 35: risk_type 
    create table risk_type (
        id integer not null auto_increment primary key,
        risk_name varchar(225)
    );

-- table 27: site_checkpoints
    create table site_cp (
        id integer not null auto_increment primary key,
        sites integer not null,
        cp integer not null ,
        code varchar(225),
        install_date date,
        risk_type integer not null,
        risk_range tinyint,
        risk_rate tinyint,
        risk_matrix tinyint,
        mitig_plan varchar(225),
        accept_risk varchar(225),
        foreign key (sites) references sites(id) on update cascade,
        foreign key (risk_type) references risk_type(id) on update cascade,
        foreign key (cp) references cp(id) on update cascade        
    );

-- table 28: checkpoints_visit
    create table cp_visits(
        site_cp integer not null,
        route_schedual integer not null,
        articles integer not null,
        cp_before varchar(225),
        cp_correct varchar(225),
        cp_protect varchar(225),
        remarks varchar(225),
        primary key(site_cp,route_schedual),
        foreign key (route_schedual) references route_schedual(id) on update cascade,      
        foreign key (articles) references articles(id) on update cascade,        
        foreign key (site_cp) references site_cp(id) on update cascade        
    );

-- table 29: site_complains
    create table site_complain(
        complain_date date not null,
        sites integer not null,
        end_date date ,
        reply_date date,
        complain varchar(225),
        correct varchar(225),
        protect varchar(225),
        primary key (sites,complain_date) , 
        foreign key (sites) references sites(id) on update cascade
    );

-- table 30: sit_contact
    create table site_contact (
        id integer not null auto_increment primary key,
        sites integer not null,
        full_Name varchar(225),
        mobile varchar(225),
        email varchar(225),
        fax varchar(225),
        foreign key (sites) references sites(id) on update cascade
    );

-- table 31: site_draw
    create table site_draw(
        id integer not null auto_increment primary key,
        sites integer not null,
        draw_date date,
        copy_file varchar(225),
        foreign key (sites) references sites(id) on update cascade
    );

-- table 32: site_collect_cash
    create table site_collectcash(
        collect_date date not null ,
        sites integer not null,
        amount numeric(5,3),
        is_cash integer,
        check_num varchar(225),
        primary key(collect_date,sites),
        foreign key (sites) references sites(id) on update cascade
    );

-- table 33: site_paytime
    create table site_paytime(
        sites integer not null,
        pay_date date not null,
        inv_to varchar(225),
        amount numeric(5,3),
        inplace_date date,
        primary key(sites,pay_date),
        foreign key (sites) references sites(id) on update cascade
    );

-- table 34: certificate
    create table certificate (
        create_date date not null,
        sites integer not null,
        inplace_date date,
        primary key(create_date,sites),
        foreign key (sites) references sites(id) on update cascade
    );

