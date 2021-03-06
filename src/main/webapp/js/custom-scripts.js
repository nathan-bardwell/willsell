document.addEventListener('DOMContentLoaded', () => {
    let searchBy = document.querySelector('select[name="searchBy"]');
    if (searchBy != null) {
        searchBy.addEventListener('change', searchHandler);
    }

    let ezConnect = document.getElementById('ezConnect');
    if (ezConnect != null) {
        ezConnect.addEventListener('change', installDateHandler);
    }
});

function searchHandler(event) {
    let value = event.currentTarget.value;
    if (value === 'date_of_sale' || value === 'install_date') {
        document.getElementById('date-search').classList.remove("d-none");
        document.getElementById('text-search').classList.add("d-none");
    } else {
        document.getElementById('date-search').classList.add("d-none");
        document.getElementById('text-search').classList.remove("d-none");
    }
}

function installDateHandler(event) {
    let value = event.currentTarget.value;
    if (value === 'yes') {
        document.getElementById('installInfo').classList.add('d-none');
    } else {
        document.getElementById('installInfo').classList.remove('d-none');
    }
}
