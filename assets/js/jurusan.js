const url = "http://localhost:8000/api/jurusan";
let tbody = document.getElementById("tbody");
let newRow = "";

fetch(url)
    .then(response => {
        return response.json();
    }).then(data => {
        let no = 1;
        data.data.forEach((item) => {
            newRow += `<tr>
            <td>${no++}</td>
            <td>${item.nama_jurusan}</td>
            </tr>`;

            tbody.innerHTML = newRow;
        });
    }).catch(error => {
        console.log(error);
    });