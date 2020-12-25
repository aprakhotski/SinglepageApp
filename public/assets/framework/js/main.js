	
let tracks = $('tr[data-visible]');

$('.form-filter').on('change', function(){
	let 
		selectedSinger = $('.filter-singer').val();
		selectedGenre = $('.filter-genre').val();
		selectedYear = $('.filter-year').val();
		
		$.each(tracks,function(index,row){
		
			row.dataset.visible = 'shown';
			
			if(
				row.cells[0].innerHTML.indexOf(selectedSinger) == -1 || 
				row.cells[2].innerHTML.indexOf(selectedGenre) == -1 ||
				row.cells[3].innerHTML.indexOf(selectedYear) == -1
				
			){
				row.dataset.visible = 'hidden';
				console.log(row.cells[2].innerHTML.indexOf(selectedGenre));
				$("tr[data-visible='shown']").show();
				$("tr[data-visible='hidden']").hide();
			}else{
				row.dataset.visible = 'shown';
				$("tr[data-visible='shown']").show();
			}
				
		});			
});
   

new Tablesort(document.getElementById('table-id'));