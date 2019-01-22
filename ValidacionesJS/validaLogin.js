window.addEventListener('load', function () {

    document.getElementById('btnIniciar').addEventListener('click', function () {
        var nombreU = document.getElementById('txtUsername').value;
        var contraseñaU = document.getElementById('txtPassword').value;
        
        var bandera = false;
      
        if (nombreU === "" || contraseñaU === "") {
            alert('Por favor rellene todos los campos');

        } 
        
    });
});
