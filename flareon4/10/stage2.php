<?php
$d='';
$key = "";
if (isset($_POST['o_o']))
  $key = $_POST['o_o'];
if (isset($_POST['hint']))
  $d = "www.p01.org";
if (isset($_POST['t'])) {
  if ($_POST['t'] == 'c') {
    $d = base64_decode('SDcGHg1feVUIEhsbDxFhIBIYFQY+VwMWTyAcOhEYAw4VLVBaXRsKADMXTWxrSH4ZS1IiAgA3GxYUQVMvBFdVTysRMQAaQUxZYTlsTg0MECZSGgVcNn9AAwobXgcxHQRBAxMcWwodHV5EfxQfAAYrMlsCQlJBAAAAAAAAAAAAAAAAAFZhf3ldEQY6FBIbGw8RYlAxGEE5PkAOGwoWVHgCQ1BGVBdRCAAGQVQ2Fk4RX0gsVxQbHxdKMU8ABBU9MUADABkCGHdQFQ4TXDEfW0VDCkk0XiNcRjJxaDocSFgdck9CTgpPDx9bIjQKUW1NWwhERnVeSxhEDVs0LBlIR0VlBjtbBV4fcBtIEU8dMVoDACc3ORNPI08SGDZXA1pbSlZzGU5XVV1jGxURHQoEK0x+a11bPVsCC1FufmNdGxUMGGE=');
    $key = preg_replace('/(.)../', '$1', $key);
  }
  if ($_POST['t'] == 's') {
    $d = base64_decode('VBArMg1HYn1XGAwaAw1GDCsACwkeDgABUkAcESszBEdifVdNSENPJRkrNwgcGldMHFVfSEgwOjETEE9aRlJoZFMKFzsmQRALSilMEQsXHEUrPg9ZDRAoAwkBHVVIfzkNGAgaBAhUU00AAAAAAAAAAAAAAAAASkZSVV0KDAUCHBFQHA0MFjEVHB0BCgBNTAJVX3hkAkQiFh8ESw0AG0M5MBNRGkpdWV4bVEEVdGJGRR9XGBgcAgpVCDAsCA0GGAVWBAwcBxQqKwRCGxgbVkJFR11IdHcbRFxOUkNNV0RAVXIKSgxCWk1aVkdGQVI8dxRTVl5CR0JLVAQdOStbXkRfXlxOFEULUCp2SFJIUlVGQlUtRhExMQQLJyMmIFgDTUQtYmZIRUAECB4MHhtWRHA9Dh0WSWZmWUEHHBUzYQ==');
    $key = preg_replace('/.(.)./', '$1', $key);
  }
  if ($_POST['t'] == 'w') {
    $d = base64_decode('DycdGg1hYjl8FURaAVZxPhgNOQpdMxVIRwNKc0YDCCsDVn5sJxJMHmJJOgArB1olFA0JHQN+TlcpOgFBKUEAA1M+RVUVDjsWEy8PQUEMV3IsSgJxCFY0IkJAGVY3HV9DbQsRaU1eSxl6IR0SEykOX2gnEAwZGHJHRU0OUn4hFUUADlw8UhRPNwpaJwlZE14Df1IRDi1HS30JFlZAHnRAEQ4tR0p9CRZXQB50LFkHNgNfEgROWkVLZV1bGHVbHyJMSRFZCQtGRU0bQAFpSEtBHxsLVEdaeEEUfCd2akdKYAFaJXBdT3BeHBRFV3IdXCV1PhsUXFUBBR5hXFwwdxsab1kECFoaM0FET2pEd2owBXpAC2ZAS11sMhVmJREWVlFyDV4ldFIdcUMBWlBbcl5CSGFTUCEPW08eEyYNSgJhYjl8Tk9BCUpvDxsAODBeLwUfE08AAAAAAAAAAAAAAAAAEXFkfV1wB0ctDRM=');
    $key = preg_replace('/..(.)/', '$1', $key);
  }
  while(strlen($key) < strlen($d))
    $key = $key.$key;
  $d = $d ^ $key;
}
if (strlen($d))
    echo $d;
else
    echo '<form action="shell.php" method="post"><input type="hidden" name="o_o" value="'.$key.'"><input type="radio" name="t" value="c"> Raytraced Checkboard<br> <input type="radio" name="t" value="s"> p01 256b Starfield<br> <input type="radio" name="t" value="w"> Wolfensteiny<br><input type="submit" value="Show"/></form>';

?>
