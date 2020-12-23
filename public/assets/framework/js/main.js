
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

