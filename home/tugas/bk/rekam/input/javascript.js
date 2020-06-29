var tempText = document.getElementsByClassName ("temp-text");
var kognitifBoxNode = document.getElementsByClassName ("kognitif-box");
var arrKognitif = [];

//var anothercheck = document.getElementById ("another-text");
// Hilangkan fungsi enter untuk input typebox
    function preventText (e){
        
        if (e.keyCode == 13){
            e.preventDefault();
            return false;
        }
    }
    
    for (var i = 0 ; i < tempText.length ; i++){
        tempText[i].addEventListener ("keydown",preventText);
    }


    // Kognitif //
    function isCheckedKognitif (e){
        
        var kognitifInputNode = document.getElementById ("kognitif-input");
        var InputNodeText = (e.target.parentNode.parentNode.nextSibling.nextSibling.childNodes[0]);
        console.log(e.target.checked);
        
        // masukan checked box kedalam input
        
        if (e.target.checked){
            
            // type check box untuk catatan tambahan
            if (InputNodeText.nodeType ==1){
                // harus ditaruh divalue
                
                
                e.target.setAttribute("value",InputNodeText.value+"|");
                console.log (e.target.getAttribute("value"));
            }
            arrKognitif.push (e.target.getAttribute("value"));
            
        }
        else {
            // check apakah ada keterang tersebut didalam array
            console.log (e.target.getAttribute("value"));
            //console.log (arr.indexOf ("* "+e.target.value));
            if (arrKognitif.indexOf (e.target.value) != -1){
                var index = arrKognitif.indexOf (e.target.value);
                
                arrKognitif.splice (index,1);
                
            }
        }
        kognitifInputNode.value = arrKognitif.join ("");
        console.log (arrKognitif);
    }
    
    // Masukan fungsi iscCHekedKognitif
    for (var i = 0 ; i < kognitifBoxNode.length ; i++){
        kognitifBoxNode[i].addEventListener ("click",isCheckedKognitif);
    }
    
    
    
    
    // Sosial
    var sosialBoxNode = document.getElementsByClassName ("sosial-box");
    var arrSosial = [];
    function isCheckedSosial (e){
        
        var sosialInputNode = document.getElementById ("sosial-input");
        var InputNodeText = (e.target.parentNode.parentNode.nextSibling.nextSibling.childNodes[0]);
        console.log(e.target.checked);
        
        // masukan checked box kedalam input
        
        if (e.target.checked){
            
            // type check box untuk catatan tambahan
            if (InputNodeText.nodeType ==1){
                // harus ditaruh divalue
                
                
                e.target.setAttribute("value",InputNodeText.value+"|");
                console.log (e.target.getAttribute("value"));
            }
            arrSosial.push (e.target.getAttribute("value"));
            
        }
        else {
            // check apakah ada keterang tersebut didalam array
            console.log (e.target.getAttribute("value"));
            //console.log (arr.indexOf ("* "+e.target.value));
            if (arrSosial.indexOf (e.target.value) != -1){
                var index = arrSosial.indexOf (e.target.value);
                
                arrSosial.splice (index,1);
                
            }
        }
        sosialInputNode.value = arrSosial.join ("");
        console.log (arrSosial);
    }
    
    // Masukan fungsi iscCHekedSosial
    for (var i = 0 ; i < sosialBoxNode.length ; i++){
        sosialBoxNode[i].addEventListener ("click",isCheckedSosial);
    }
    
    
    
    // Emosi
    var emosiBoxNode = document.getElementsByClassName ("emosi-box");
    var arrEmosi = [];
    function isCheckedEmosi(e){
        
        var emosiInputNode = document.getElementById ("emosi-input");
        var InputNodeText = (e.target.parentNode.parentNode.nextSibling.nextSibling.childNodes[0]);
        console.log(e.target.checked);
        
        // masukan checked box kedalam input
        
        if (e.target.checked){
            
            // type check box untuk catatan tambahan
            if (InputNodeText.nodeType ==1){
                // harus ditaruh divalue
                
                
                e.target.setAttribute("value",InputNodeText.value+"|");
                console.log (e.target.getAttribute("value"));
            }
            arrEmosi.push (e.target.getAttribute("value"));
            
        }
        else {
            // check apakah ada keterang tersebut didalam array
            console.log (e.target.getAttribute("value"));
            //console.log (arr.indexOf ("* "+e.target.value));
            if (arrEmosi.indexOf (e.target.value) != -1){
                var index = arrEmosi.indexOf (e.target.value);
                
                arrEmosi.splice (index,1);
                
            }
        }
        emosiInputNode.value = arrEmosi.join ("");
        console.log (arrEmosi);
    }
    
    // Masukan fungsi iscCHekedEmosi
    for (var i = 0 ; i < emosiBoxNode.length ; i++){
        emosiBoxNode[i].addEventListener ("click",isCheckedEmosi);
    }
    
    
    //adabakhlak
    var adabakhlakBoxNode = document.getElementsByClassName ("adabakhlak-box");
    var arrAdabAkhlak = [];
    function isCheckedAdabAkhlak(e){
        
        var adabakhlakInputNode = document.getElementById ("adabakhlak-input");
        var InputNodeText = (e.target.parentNode.parentNode.nextSibling.nextSibling.childNodes[0]);
        console.log(e.target.checked);
        
        // masukan checked box kedalam input
        
        if (e.target.checked){
            
            // type check box untuk catatan tambahan
            if (InputNodeText.nodeType ==1){
                // harus ditaruh divalue
                
                
                e.target.setAttribute("value",InputNodeText.value+"|");
                console.log (e.target.getAttribute("value"));
            }
            arrAdabAkhlak.push (e.target.getAttribute("value"));
            
        }
        else {
            // check apakah ada keterang tersebut didalam array
            console.log (e.target.getAttribute("value"));
            //console.log (arr.indexOf ("* "+e.target.value));
            if (arrAdabAkhlak.indexOf (e.target.value) != -1){
                var index = arrAdabAkhlak.indexOf (e.target.value);
                
                arrAdabAkhlak.splice (index,1);
                
            }
        }
        adabakhlakInputNode.value = arrAdabAkhlak.join ("");
        console.log (arrAdabAkhlak);
    }
    
    // Masukan fungsi iscCHekedAdabAkhlak
    for (var i = 0 ; i < adabakhlakBoxNode.length ; i++){
        adabakhlakBoxNode[i].addEventListener ("click",isCheckedAdabAkhlak);
    }
    
    
    //bahasa
    var bahasaBoxNode = document.getElementsByClassName ("bahasa-box");
    var arrBahasa = [];
    function isCheckedBahasa(e){
        
        var bahasaInputNode = document.getElementById ("bahasa-input");
        var InputNodeText = (e.target.parentNode.parentNode.nextSibling.nextSibling.childNodes[0]);
        console.log(e.target.checked);
        
        // masukan checked box kedalam input
        
        if (e.target.checked){
            
            // type check box untuk catatan tambahan
            if (InputNodeText.nodeType ==1){
                // harus ditaruh divalue
                
                
                e.target.setAttribute("value",InputNodeText.value+"|");
                console.log (e.target.getAttribute("value"));
            }
            arrBahasa.push (e.target.getAttribute("value"));
            
        }
        else {
            // check apakah ada keterang tersebut didalam array
            console.log (e.target.getAttribute("value"));
            //console.log (arr.indexOf ("* "+e.target.value));
            if (arrBahasa.indexOf (e.target.value) != -1){
                var index = arrBahasa.indexOf (e.target.value);
                
                arrBahasa.splice (index,1);
                
            }
        }
        bahasaInputNode.value = arrBahasa.join ("");
        console.log (arrBahasa);
    }
    
    // Masukan fungsi iscCHekedAdabAkhlak
    for (var i = 0 ; i < bahasaBoxNode.length ; i++){
        bahasaBoxNode[i].addEventListener ("click",isCheckedBahasa);
    }