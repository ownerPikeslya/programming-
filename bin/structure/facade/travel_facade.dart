import 'flight_booking.dart';
import 'hotel_booking.dart';
import 'payment.dart';

class TravelFacade {
  final _flightBooking = FlightBooking();
  final _hotelBooking = HotelBooking();
  final _payment = Payment();

  void travel(){
    _flightBooking.booking();
    _hotelBooking.unBooking();
    _payment.pay();
  }
}