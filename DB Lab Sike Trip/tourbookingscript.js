function display_calculated_price()
{
    var no_of_passengers_in_one_tour = document.getElementById('TourBookingTravellers').value;
    var price_per_person = document.getElementById('display_price_of_tour').value;

    document.getElementById("display_calculated_price").innerHTML = no_of_passengers_in_one_tour * price_per_person;
}
