function editarURL() {
    var id = document.querySelector(".idEditar").value;
    if (id.trim() !== "") {
        window.location.href = "editar.php?id=" + id;
    } else {
        alert("Digite um valor antes de enviar.");
    }
}

function excluirURL() {
    var id = document.querySelector(".idExcluir").value;
    if (id.trim() !== "") {
        window.location.href = "excluir.php?id=" + id;
    } else {
        alert("Digite um valor antes de enviar.");
    }
}

setTimeout(function() {
    $('.toast').fadeOut('fast');
}, 5000);