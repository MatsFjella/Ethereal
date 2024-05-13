$(function () {
  function displayLicense(bool) {
    if (bool) {
      $("#license").show();
    } else {
      $("#license").hide();
      clearHTML();
    }
  }
  function clearHTML() {
    document.getElementById("name").innerHTML = '';
    document.getElementById("type").innerHTML = '';
    document.getElementById("nationality").innerHTML = '';
    document.getElementById("dob").innerHTML = '';
    // document.getElementById("shc").innerHTML = '';
  }

  displayLicense(false);

  window.addEventListener("message", function (event) {
    var item = event.data;
    var sex = 'M'
    if (item.sex == 1) {
      sex = 'F'
    }
    document.getElementById("name").innerHTML = item.name;
    document.getElementById("type").innerHTML = item.type.charAt(0).toUpperCase() + item.type.slice(1);;
    document.getElementById("nationality").innerHTML = '\xa0\xa0'+item.nationality;
    document.getElementById("dob").innerHTML = item.dob;
    // document.getElementById("shc").innerHTML = '\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0' + sex + "\xa0\xa06'1\xa0\xa0A";
    document.getElementById("licenseimg").src= item.type + '.png'
    displayLicense(true);
  });

  document.onkeyup = function (data) {
    if (data.which == 27) {
      displayLicense(false);
      $.post("https://fd-licenses/exit", JSON.stringify({ type: "close" }));
      return;
    }
  };
});