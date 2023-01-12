
document.addEventListener("DOMContentLoaded", function() {
  const button = $("#show-ticket-number-button");
  const ticketNumberDiv = $("#ticket-number");

  button.click(function() {
    button.addClass('disabled');
    button.prop("disabled", true); // disable the button
    $.ajax({
      url: '/ticket_number',
      type: 'GET',
      success: function(data) {
        ticketNumberDiv.text(data.ticket_number);
        ticketNumberDiv.show();
      }
    });
  });
});
