function myFun(){
    var x = document.getElementById("title").value;
    var y = document.getElementById("boxoffice").value;
    var z = document.getElementsByName("active");
    var a = document.getElementById("dateOfLaunch").value;
    var b = document.getElementById("genre").value;

    if(x == false){
        alert("Title is empty");
        return false;
    }
    else if(x.length < 2 || x.length > 100){
        alert("Title too short or too long");
        return false;
    }
    else if(y == false){
        alert("Gross is empty");
        return false;
    }
    else if(y.isNumber == false){
        alert("Gross should be a number");
        return false;
    }
    else if(a == false){
        alert("Date of Launch is Empty");
        return false;
    }
    else if(b == false){
        alert("Genre is empty");
        return false;
    }

}