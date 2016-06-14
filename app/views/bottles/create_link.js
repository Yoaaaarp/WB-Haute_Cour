$('#articles').append("<tr> <td class='nom'><p><%= @link.number %> x <%= @link.bottle.wine.name%> </br> <%= @link.bottle.capacity %> cl</p></td> <td class='quantite'><input type='text' class='price' value='<%= @link.number*@link.bottle.price %> ' disabled /> </td><td>CHF</td></tr>")
iSum = 0;
$('.price').each( function() {
    iSum = iSum + parseFloat($(this).val());
    });
$('#total').html("<tr> <td class='nom'> <p><b> Total </b></p></td><td class='quantite'>" + iSum + "</td><td>CHF</td></tr>")