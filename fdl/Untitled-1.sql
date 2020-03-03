
/*
    (1 , 'Administrator'                                , NULL, 
    (2 , 'General Director'                             , NULL, 
    (3 , 'Technical Manager'                            , NULL, 
    (4 , 'Financial and administrative'                 , NULL, 
    (5 , 'General Materials Department'                 , 'MT', 
    (6 , 'Drug and Medical Supplies Department'         , 'MD', 
    (7 , 'Oil and Oil Products Inspection Department'   , 'PD', 
    (8 , 'Food and Feed Department'                     , 'FD', 
    (9 , 'Inspectores'                                  , NULL, 
    (10, 'Certification print'                          , NULL, 
*/


sc_lookup(query,'select id,adm,gm,acc,tec,dep,insp,txt,act from fdl.s_steps')
$_SESSION['s']['grp_id']
$_SESSION['steps'] = array();
$x = $_SESSION['s']['grp_id'] ;
if(in_array($_SESSION['s']['grp_id'],array(5,6,7,8)))
{
  $x = 5 ; 
}
if($x < 10)
{
  for($i=1;$i<=15;$i++)
  {
      $_SESSION['steps']= array();
      $_SESSION['steps'][$i]= {query[$i,$x]};
  }
}
else
{
  for($i=1;$i<=15;$i++)
  {
      $_SESSION['steps']= array();
      $_SESSION['steps'][$i]= '00';
  }
}
