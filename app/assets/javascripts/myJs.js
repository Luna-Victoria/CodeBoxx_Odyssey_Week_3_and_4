//Select the type of elevators you want
function residential() {
  var resquote = document.getElementById('resquote');
  var comquote = document.getElementById('comquote');
  var corpquote = document.getElementById('corpquote');
  var hybquote = document.getElementById('hybquote');
  var resquality = document.getElementById('resquality');
  resquote.style.display = 'block';
  comquote.style.display = 'none';
  corpquote.style.display = 'none';
  hybquote.style.display = 'none';
}


function commercial() {
  var resquote = document.getElementById('resquote');
  var comquote = document.getElementById('comquote');
  var corpquote = document.getElementById('corpquote');
  var hybquote = document.getElementById('hybquote');
  var resquality = document.getElementById('resquality');
  resquote.style.display = 'none';
  comquote.style.display = 'block';
  corpquote.style.display = 'none';
  hybquote.style.display = 'none';
}


function corporate() {
  var resquote = document.getElementById('resquote');
  var comquote = document.getElementById('comquote');
  var corpquote = document.getElementById('corpquote');
  var hybquote = document.getElementById('hybquote');
  var resquality = document.getElementById('resquality');
  resquote.style.display = 'none';
  comquote.style.display = 'none';
  corpquote.style.display = 'block';
  hybquote.style.display = 'none';
}


function hybrid() {
  var resquote = document.getElementById('resquote');
  var comquote = document.getElementById('comquote');
  var corpquote = document.getElementById('corpquote');
  var hybquote = document.getElementById('hybquote');
  var resquality = document.getElementById('resquality');
  resquote.style.display = 'none';
  comquote.style.display = 'none';
  corpquote.style.display = 'none';
  hybquote.style.display = 'block';
}


//Residential calculation
function resautoquoteupdate() {
  var resquestion1 = parseInt(document.getElementById('resquestion1').value);
  var resquestion2 = parseInt(document.getElementById('resquestion2').value);
  var resquestion3 = parseInt(document.getElementById('resquestion3').value);
  var resultres = document.getElementById('resultres');
  var avgAppLevels = resquestion1 / resquestion2;
  var nbElev = Math.ceil(avgAppLevels / 6);
  var nbColumn = Math.ceil(resquestion2 / 20);
  resultres.value = nbElev * nbColumn;
  restotalprice();
  NaNsolveres();

}

function NaNsolveres() {
  if (!resquestion2.value || !resquestion1.value) {
    resultres.value = 0;
}
}

function restotalprice() {
  var cagesresult = parseInt(document.getElementById('resultres').value);
  var resstandardqly = document.getElementById('resstandardqly');
  var respremiumqly = document.getElementById('respremiumqly');
  var resexceliumqly = document.getElementById('resexceliumqly');
  var restotalprice = document.getElementById('restotalprice');
  if (resstandardqly.checked && cagesresult > 0) {
    restotalprice.value = Math.ceil((cagesresult * 7565) + ((cagesresult * 7565) * 0.1));
  } else if (respremiumqly.checked && cagesresult > 0) {
    restotalprice.value = Math.ceil((cagesresult * 12345) + ((cagesresult * 12345) * 0.13));
  } else if (resexceliumqly.checked && cagesresult > 0) {
    restotalprice.value = Math.ceil((cagesresult * 15400) + ((cagesresult * 15400) * 0.16));
  }
  if (!cagesresult) {
    restotalprice.value = 0;
  }
}


//Commercial calculation
function comautoquoteupdate() {
  var comquestion1 = document.getElementById('comquestion1');
  var comquestion2 = document.getElementById('comquestion2');
  var comquestion3 = document.getElementById('comquestion3');
  var comquestion4 = document.getElementById('comquestion4');
  var comquestion5 = document.getElementById('comquestion5');
  if (!comquestion5.value) {
    resultcom.value = 0;
  } else {
    resultcom.value = comquestion5.value;
  }
  comtotalprice();
}


function comtotalprice() {
  var cagesresult = parseInt(document.getElementById('resultcom').value);
  var comstandardqly = document.getElementById('comstandardqly');
  var compremiumqly = document.getElementById('compremiumqly');
  var comexceliumqly = document.getElementById('comexceliumqly');
  var comtotalprice = document.getElementById('comtotalprice');
  if (comstandardqly.checked && cagesresult > 0) {
    comtotalprice.value = Math.ceil((cagesresult * 7565) + ((cagesresult * 7565) * 0.1));
  } else if (compremiumqly.checked && cagesresult > 0) {
    comtotalprice.value = Math.ceil((cagesresult * 12345) + ((cagesresult * 12345) * 0.13));
  } else if (comexceliumqly.checked && cagesresult > 0) {
    comtotalprice.value = Math.ceil((cagesresult * 15400) + ((cagesresult * 15400) * 0.16));
  }
  if (!cagesresult || cagesresult.value == 0) {
    comtotalprice.value = 0;
  }
}


//Corporate calculation
function corpautoquoteupdate() {
  var corpquestion1 = document.getElementById('corpquestion1');
  var corpquestion2 = parseInt(document.getElementById('corpquestion2').value);
  var corpquestion3 = parseInt(document.getElementById('corpquestion3').value);
  var corpquestion4 = document.getElementById('corpquestion4');
  var corpquestion5 = parseInt(document.getElementById('corpquestion5').value);
  var resultcorp = document.getElementById('resultcorp');
  var nbLevels = corpquestion2 + corpquestion3;
  var nbElev = Math.ceil((corpquestion5 * nbLevels) / 1000);
  var nbColumn = Math.ceil(nbLevels / 20);
  var nbElev2 = Math.ceil(nbElev / nbColumn);
  resultcorp.value = nbColumn * nbElev2;
  corptotalprice();
  NaNsolvecorp();
}

function NaNsolvecorp() {
  if (!corpquestion2.value || !corpquestion3.value || !corpquestion5.value) {
    resultcorp.value = 0;
}
}

function corptotalprice() {
  var cagesresult = parseInt(document.getElementById('resultcorp').value);
  var corpstandardqly = document.getElementById('corpstandardqly');
  var corppremiumqly = document.getElementById('corppremiumqly');
  var corpexceliumqly = document.getElementById('corpexceliumqly');
  var corptotalprice = document.getElementById('corptotalprice');
  if (corpstandardqly.checked && cagesresult > 0) {
    corptotalprice.value = Math.ceil((cagesresult * 7565) + ((cagesresult * 7565) * 0.1));
  } else if (corppremiumqly.checked && cagesresult > 0) {
    corptotalprice.value = Math.ceil((cagesresult * 12345) + ((cagesresult * 12345) * 0.13));
  } else if (corpexceliumqly.checked && cagesresult > 0) {
    corptotalprice.value = Math.ceil((cagesresult * 15400) + ((cagesresult * 15400) * 0.16));
  }
  if (!cagesresult || cagesresult.value == 0) {
    corptotalprice.value = 0;
  }
}


//Hybrid calculation
function hybautoquoteupdate() {
  var hybquestion1 = document.getElementById('hybquestion1');
  var hybquestion2 = parseInt(document.getElementById('hybquestion2').value);
  var hybquestion3 = parseInt(document.getElementById('hybquestion3').value);
  var hybquestion4 = document.getElementById('hybquestion4');
  var hybquestion5 = parseInt(document.getElementById('hybquestion5').value);
  var hybquestion6 = document.getElementById('hybquestion6');
  var resulthyb = document.getElementById('resulthyb');
  var nbLevels = hybquestion2 + hybquestion3;
  var nbElev = Math.ceil((hybquestion5 * nbLevels) / 1000);
  var nbColumn = Math.ceil(nbLevels / 20);
  var nbElev2 = Math.ceil(nbElev / nbColumn);
  resulthyb.value = nbColumn * nbElev2;
  hybtotalprice();
  NaNsolvehyb();
  hoursalert();
}


function hoursalert() {
  if (hybquestion6.value > 24) {
    alert("There is only 24 hours in a day");
  }
}


function NaNsolvehyb() {
  if (!hybquestion2.value || !hybquestion3.value || !hybquestion5.value || hybquestion6.value > 24) {
    resulthyb.value = 0;
}
}

function hybtotalprice() {
  var cagesresult = parseInt(document.getElementById('resulthyb').value);
  var hybstandardqly = document.getElementById('hybstandardqly');
  var hybpremiumqly = document.getElementById('hybpremiumqly');
  var hybexceliumqly = document.getElementById('hybexceliumqly');
  var hybtotalprice = document.getElementById('hybtotalprice');
  if (hybstandardqly.checked && cagesresult > 0) {
    hybtotalprice.value = Math.ceil((cagesresult * 7565) + ((cagesresult * 7565) * 0.1));
  } else if (hybpremiumqly.checked && cagesresult > 0) {
    hybtotalprice.value = Math.ceil((cagesresult * 12345) + ((cagesresult * 12345) * 0.13));
  } else if (hybexceliumqly.checked && cagesresult > 0) {
    hybtotalprice.value = Math.ceil((cagesresult * 15400) + ((cagesresult * 15400) * 0.16));
  }
  if (!cagesresult || cagesresult.value == 0) {
    hybtotalprice.value = 0;
  }
}
