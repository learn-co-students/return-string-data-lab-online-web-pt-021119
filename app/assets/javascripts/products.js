$(document).ready(function() {
	$('.js-more').on('click', function(){
		let id = $(this).data("id")
		let get1 = $.get(`/products/${id}/description`)
		let get2 = $.get(`/products/${id}/inventory`)
		get1.done(data => $(`#product-${id}`).text(data)).done(
		$.get(`/products/${id}/inventory`).done(function(data){
			if (data==="true"){
				$(`#product-${id}`).append("Available")
			} else {
				$(`#product-${id}`).append("Sold Out")
			}
		}).done()
		).done()
	})
})
