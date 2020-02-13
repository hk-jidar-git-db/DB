 
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
SELECT  'N'		 			, --  0													
		isactive AS active 	, --  1
		fullname AS name	, --  2  
		email				, --  3 
		inspphoto			, --  4 
		issuing_certi		, --  5 
		'N'					, --  6 
		'insp' 				, --  7  speciality
		inspid			  	  --  8		 						
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
	$_SESSION['s']['usr_login']			= {login};
	$_SESSION['s']['usr_priv_admin'] 	= ({rs[0][0]} == 'Y') ? true : false;
	$_SESSION['s']['usr_name']			= {rs[0][2]};
	$_SESSION['s']['usr_email']			= {rs[0][3]};
	$_SESSION['s']['usr_photo']			= base64_encode( {rs[0][4]});
	$_SESSION['s']['usr_certi'] 	  	= get_certi_perm({login},{rs[0][5]},'') ;
	$_SESSION['s']['usr_crl_certi']   	= get_certi_perm($usr_login,{rs[0][6]},'crl') ;
	$_SESSION['s']['s_depid'] 		    = give_us_your_department({login});
	$_SESSION['s']['specialty'] 	  	= $_SESSION['s']['s_depid'] ? ? 'dep' : {rs[0][7]} ;
	
	
}
else
{
	sc_error_message({lang_error_not_active});
	reDraw();
	sc_error_exit();
}
 
