 
<?
//    [  Declarations   ]   \\

$slogin 	= sc_sql_injection({login});
$spswd 		= sc_sql_injection(hash("md5",{pswd}));

$depid 		= null;


$sql = 
"
SELECT  
		priv_admin		, --  0
		active    		, --  1  
		name			, --  2  
		email			, --  3 
		userphoto		, --  4 
		issuing_certi	, --  5 
		control_certi	, --  6 
		'tech' 			, --  7
		null   			  --  8
FROM 
		s_users 	
WHERE  login = '$slogin' AND pswd = '$spswd'
UNION
SELECT  'N'		 		, 											  	--  0													
		CASE isactive WHEN  1 THEN 'Y'  WHEN  2 THEN 'N' END  active, 	--  1
		fullname AS name, 												--  2  
		email			, 												--  3 
		inspphoto		, 												--  4 
		issuing_certi	, 												--  5 
		'N'				, 												--  6 
		'insp' 			, 												--  7 
		inspid			  												--  8		 						
FROM 
		t_insp 	
WHERE 	loginname = '$slogin' AND loginpassword = '$spswd'
";

sc_lookup(rs, $sql);
	
if(count({rs}) == 0)
{
	sc_log_add('login Fail', {lang_login_fail} . {login});
	sc_error_message({lang_error_login});
}
elseif({rs[0][1]} == 'Y')
{

	//  [ set loacl variable ]   \\
	$usr_login		= {login};
	$usr_priv_admin = ({rs[0][0]} == 'Y') ? true : false;
	$usr_name		= {rs[0][2]};
	$usr_email		= {rs[0][3]};
	$usr_photo		=  base64_encode( {rs[0][4]});
	$usr_certi		= {rs[0][5]}; 
	$usr_crl_certi  = ({rs[0][6]} == 'Y') ? 'Y' : 'N';

    $s_depid 		= give_us_your_department($usr_login);
	$specialty		= ($depid) ? 'dep' : $specialty ;
	
	//  [ Set local var to Gloabl ]  \\
 	$_SESSION['s']['usr_priv_admin']  = $usr_priv_admin; 	  
	$_SESSION['s']['usr_name']  	  = $usr_name; 	  
	$_SESSION['s']['usr_email'] 	  = $usr_email; 	 
	$_SESSION['s']['usr_photo'] 	  = $usr_photo; 	
	$_SESSION['s']['s_depid'] 		  = $s_depid;  
	$_SESSION['s']['specialty'] 	  = {rs[0][7]} ;
	$_SESSION['s']['usr_login'] 	  = $usr_login;
	$_SESSION['s']['usr_certi'] 	  = get_certi_perm($usr_login,$usr_certi,'') ;
    $_SESSION['s']['usr_crl_certi']   = get_certi_perm($usr_login,$usr_crl_certi,'crl') ;
	
}
else
{
	sc_error_message({lang_error_not_active});
	reDraw();
	sc_error_exit();
}
 
