var timeNode = document.getElementById ("time-wow");
var absenNode = document.getElementById ("absen");
var daftarNode = document.getElementById ("daftar");
var nisNode = document.getElementById ("nis");

function setOnSelect (){
  var nisNode = document.getElementById ("nis");
  nisNode.focus();
}


function showAll (e){
  console.log (e.key);
  if (e.key == "Control"){
    var request = new XMLHttpRequest ();
    request.open ("get","daftar-hadir.php");
    request.send ();
    
    request.onreadystatechange = function () {
        
        if (request.readyState == 4 && request.status == 200 ){
            daftarNode.innerHTML = request.responseText;
        }
    };
  }
}
nisNode.addEventListener ("keydown",showAll);

function updateAbsen (e) {
  var id = document.getElementById ("nis");
  var infoNode = document.getElementById ("info");
  var val = id.value;
  e.preventDefault();
  
  var request = new XMLHttpRequest ();
    request.open ("get","absen.php?time="+Math.random()+"&input-ni="+val);
    request.send ();
    
    request.onreadystatechange = function () {
        
        if (request.readyState == 4 && request.status == 200 ){
            id.value = "";
            infoNode.innerHTML = request.responseText;
            
            request.open ("get","daftar-hadir.php");
            request.send ();
            
            request.onreadystatechange = function () {
                
                if (request.readyState == 4 && request.status == 200 ){
                    daftarNode.innerHTML = request.responseText;
                }
          };
        }
    };
}

function updateJob (){
    
    var request = new XMLHttpRequest ();
    request.open ("get","time.php");
    request.send ();
    
    request.onreadystatechange = function () {
        
        if (request.readyState == 4 && request.status == 200 ){
            timeNode.innerHTML = request.responseText;
        }
        
    };
}

nisNode.focus();
nisNode.addEventListener ("blur",setOnSelect);
absenNode.addEventListener ("submit",updateAbsen);
window.setInterval (updateJob,1000);





