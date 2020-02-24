<?
 /*  ('admin',1),
   ( 'thec',3),
   (   'fd',8),
   (  'acc',4),
   (   'mt',3),
   (   'md',6),
   (   'gm',2),
   ( 'insp',9),
   ( 'mix' ,10);
*/
/* any department */
$grp = array(2,3,6,8);
$insp_assign = array();
if(array_diff( $grp , $_SESSION['s']['grp_id']) ) < 4  )
{
	array_push($insp_assign ,  '000') ;
}

/* thec manager */
if( in_array(3, $_SESSION['s']['grp_id']))
{
	array_push($insp_assign ,  '100') ;
}

/* general manager */
if( in_array(2, $_SESSION['s']['grp_id']))
{
	array_push($insp_assign ,  '110') ;
}





if($grp == 3)
{
	sc_lookup(query,"SELECT COUNT(*)  FROM t_proj WHERE is_assign_insp = '000' AND isactive = 1");
}
// food dep
elseif($grp == 8 )
{
	sc_lookup(query,"SELECT COUNT(*)  FROM t_proj p
					 LEFT JOIN t_mproj m
					 ON p.mprojid = m.mprjid
					 WHERE isactive = 1 
					 AND p.is_assign_insp IN ('" . implode("','",$insp_assign) . "')
					 AND m.depid IN ('" . implode("','",$_SESSION['s']['s_depid']) . "')";


}
// acc dep
elseif($grp == 4 )
{

}
// mt dep
elseif($grp == 3 )
{

}
// md dep
elseif($grp == 6 )
{

}
// gm dep
elseif($grp == 2 )
{

}
// insp dep
elseif($grp == 9 )
{

}
