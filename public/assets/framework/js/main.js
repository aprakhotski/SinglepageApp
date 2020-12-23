showFilter('singer');
showFilter('genre');
showFilter('year');

function showFilter(item){

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


let filter = function () {
    let input = document.getElementById('filter-input');

    input.addEventListener("keyup", function (){
        let filter = input.value.toLowerCase(),
        filterElements = document.querySelectorAll('#filter-list tr');
       // console.log(filterElements);

        filterElements.forEach(item => {
            if(item.innerHTML.toLowerCase().indexOf(filter) > -1){
                item.style.display='';
            } else {
                item.style.display = 'none';
            }
        })
    })
}
filter();

