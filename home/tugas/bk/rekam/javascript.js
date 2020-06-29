window.addEventListener ("load",function (){
    var listNode = document.getElementsByTagName("select");

    


    
    function click (e){
        var pdfNode = e.target.parentNode.nextSibling.nextSibling;
        var emailNode = pdfNode.nextSibling.nextSibling;
        var its = e.target.value;
        
        
        
        var hrefPdf = pdfNode.getAttribute("href");
        var newhrefPdf = hrefPdf.substring(0,hrefPdf.length-1)+its;
        
        var hrefEmail = emailNode.getAttribute("href");
        var newhrefEmail = hrefEmail.substring(0,hrefEmail.length-1)+its;
        
        pdfNode.setAttribute ("href",newhrefPdf);
        emailNode.setAttribute ("href",newhrefEmail);

        
        
    }
    
    for (var i = 0 ; i < listNode.length ; i++){
        listNode[i].addEventListener ("change",click);
    }
    
    
    //  ajax send email
    var buttonEmail = document.getElementsByClassName ("email");
    var textEmail = document.getElementsByClassName ("alamat");
    
    function setEmail (e){
        var emailNode = e.target.parentNode.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling;

        emailNode.setAttribute("email",e.target.value);
    }
    
    function callAjax (e){
        e.preventDefault();
        var href = (e.target.getAttribute("href"));
        var alamat = (e.target.getAttribute("email"));
        var warn = e.target.parentNode.childNodes[1].childNodes[2];
        var loadingPage = document.getElementById ("loading-page");
        
        if (alamat == "none" || alamat==""){
            
            warn.classList.remove ("sr-only");
        }
        else {
            // send email ajax
            warn.classList.add ("sr-only");
            
            var request = new XMLHttpRequest ();
            
            if (request.responseText == ""){
                loadingPage.classList.replace ("sr-only","full");

            }
            
            request.open ("GET","output/pdf-email.php?"+href+"&alamat="+alamat);
            request.send();
            
            request.onreadystatechange = function (){
              if (request.readyState == 4 && request.status == 200){
                loadingPage.classList.replace ("full","sr-only");
                
                window.alert (request.responseText);
              }
            };
        } 
    }
    
    for (i = 0 ; i < buttonEmail.length ; i++){
        
        buttonEmail[i].addEventListener ("click",callAjax);
        textEmail[i].addEventListener ("keyup",setEmail);

        
    }
    
    
});





