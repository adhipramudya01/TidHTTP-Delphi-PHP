<?php
if(isset($_POST["namam"]))
{$nama1=$_POST["namam"];}
else
{$nama1=" Namam cant you found.";}
/* */
if(isset($_POST["namamu"]))
{$nama2=$_POST["namamu"];}
else
{$nama2=" Nama tidak ada di Method.";}

// the OUTPUT :
echo $nama1;
echo $nama2;
?>
 