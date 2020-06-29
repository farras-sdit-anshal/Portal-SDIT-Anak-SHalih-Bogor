/*
 * Bismillah
 * SDIT Anshal, 8 Januari 2020
 * 08:57 PM
*/
var checkNode = document.getElementsByTagName ("input");

function getCookie(cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i <ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

function isChecked (e) {
    console.log (e.target.checked);
    
}

function updateJob (e){
    var check = e.target.checked;
    var job = e.target.name;
    var id_number = e.target.getAttribute ("id_name");
    
    var request = new XMLHttpRequest ();
    request.open ("get","ajax.php?rand"+Math.random()+"&check="+check+"&job="+job+"&id="+id_number);
    request.send ();
    
    request.onreadystatechange = function () {
        
        if (request.readyState == 4 && request.status == 200 ){
            console.log (request.responseText);
        }
        
    };
    
}

for (var i = 0 ; i < checkNode.length ; i++){
    
    if (checkNode[i].type == "checkbox"){
        checkNode[i].addEventListener ("click",updateJob);
        checkNode[i].addEventListener ("click",isChecked);
    }
    
}

