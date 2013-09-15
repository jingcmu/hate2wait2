<script>
$(document).ready(function(){
    setInterval(updateSeats,30000);
    });
function updateSeats(){
    $.ajax({
        url:  "/flights/<%= @flight.id %>/seats",
        type: "GET",
    }).done(function(data){
    $("#seats").html(data);
    });
}
</script>