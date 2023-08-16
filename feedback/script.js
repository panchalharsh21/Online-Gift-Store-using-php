function checkForm() {
  var name = document.getElementById("username1").value;
  var email = document.getElementById("email1").value;

  if (name == "" || email == "") {
    alert("Fill All Fields");
  } else {
    var username1 = document.getElementById("username");
    var email1 = document.getElementById("email");
    if (
      username1.innerHTML == "Must be 3+ letters" ||
      email1.innerHTML == "Invalid email"
    ) {
      alert("Fill Valid Information");
    } else {
      document.getElementById("myForm").submit();
    }
  }
}

function validate(field, query) {
  var xmlhttp;
  xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
      document.getElementById(field).innerHTML = xmlhttp.responseText;
    } else {
      document.getElementById(field).innerHTML =
        "Error Occurred.Reload Or Try Again the page.";
    }
  };
  xmlhttp.open(
    "GET",
    "validation.php?field=" + field + "&query=" + query,
    false
  );
  xmlhttp.send();
}
