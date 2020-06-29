/*
 * Bismillah
 * SDIT Anshal, 8 Januari 2020
 * 08:57 PM
*/
function isDaftar (){    

    window.addEventListener ("load",function () {
        
        var buttonFind = document.getElementById ("find");
        var detailNode = document.getElementById ("detail");
        
        
        console.log (buttonFind);
        if (detailNode !== null) {
            buttonFind.style.cursor = "not-allowed";
            function prevent (e){
                e.preventDefault();
            }
            buttonFind.addEventListener ("click",prevent);
        }
        else {
            buttonFind.classList.remove ("not-allowed");
        }
    });
}
    
    
isDaftar();

