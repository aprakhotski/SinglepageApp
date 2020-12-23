filterTracks('singer');
filterTracks('genre');
filterTracks('year');

function filterTracks(item){

    $('.filter-' + item + '').on('change', function(e) {

        let value = e.target.value;

        let tbody = $('#filter-list');

        if (value.length) {

            tbody.find('tr[data-' + item + '!="' + value + '"]').hide();
            tbody.find('tr[data-' + item + '="' + value + '"]').show();
        } else {

            tbody.find('tr').show();
        }
    });
}



new Tablesort(document.getElementById('table-id'));

