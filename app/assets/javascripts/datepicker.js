function computePrice() {
  var end = $('#rental_end_date').datepicker('getDate');
  var start = $('#rental_start_date').datepicker('getDate');

  if (start && end) {
    var days = (end - start) / 1000 / 3600 / 24;
    var price_per_day = parseFloat($('#new_rental').data('price'));
    var total = price_per_day * days;
    $('#total').html("Total price for the selected dates: £" + total);
  }
}

$(document).ready(function() {
  $('.datepicker').datepicker({ format: 'dd/mm/yyyy'}).on('changeDate', computePrice);
})
