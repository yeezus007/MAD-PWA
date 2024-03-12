import 'package:flutter/material.dart';

class NeedHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Policies For OYO '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General Booking Policy:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 8),
            Text(
              'Certain destinations may have different travel guidelines for specific times during the year. Please abide by all laws and guidelines as applicable.\n\nPolicies are booking specific and would be informed to the guest at the time of booking or upon Check-In.\n\nReference to OYO includes its affiliates, employees and officers. “Hotel” refers to the hotel or home in which you have made a valid booking through OYO.\n\nIf you need any help in creating new booking OYO Hotel Booking expert has a 24*7 support to help you around the clock. Please contact OYO customer care number 0124-4208080\n\nIf you need to cancel or change your reservation made through the OYO app, website or call center, please contact OYO customer care number 93139 31393',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 16),
            Text(
              'Check-in Policy:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 8),
            Text(
              'The primary guest must be at least 18 years of age to be able to check into the hotel.\n\nThe usual standard check-in time is 12 noon. OYO tries to ensure that you can check-in any time after that till your reservation is valid.\n\nIt is mandatory for all guests to present valid photo identification at the time of check-in. According to government regulations, a valid Photo ID has to be carried by every person above the age of 18 staying at the hotel. The identification proofs accepted are Aadhar Card, Driving License, Voter ID Card, and Passport. Note that PAN card is not acceptable. Without an original copy of a valid ID, you will not be allowed to check-in.\n\nAfter reaching the hotel, if you face any difficulty in check-in and it cannot be resolved by the Hotel, you are requested to contact OYO immediately. OYO will verify the issue with the Hotel and post verification, you would be provided the following assistance:\n\na. OYO will try to arrange for accommodation in the same Hotel\n\nb. OYO will try to provide you with alternate accommodation in its other listed properties if the same is available.\n\nc. If OYO is unable to provide alternative accommodation or you do not accept such alternate accommodation, you may be offered a full refund.\n\nd. OYO will not be liable for compensation beyond your booking payment.\n\nUnless specifically intimated, OYO shall not be held liable to refund the booking amount or any part thereof in case of unavailability of rooms due to natural disaster (earthquake, landslide etc.), terrorist activity, government guidelines or any force majeure act, beyond the control of OYO.',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 16),
            Text(
              'Early Check-in and Late Check-out:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 8),
            Text(
              '1. Early Check-In: The standard check-in time in Hotels is 12 noon unless mentioned otherwise in your Booking voucher. Early check-in is subject to availability. Extra charges will usually apply as per below policy:\n\nCheck-in Time   Early Check-in Charges\nBefore 6 AM   100% charges for one day payable as per room rates for the previous day\nBetween 6 AM and 10 AM   0% to 30% charges payable as per room rates for the previous day, depending on the hotel policy\nBetween 10 AM and 12 Noon   Complimentary\n\nComplimentary breakfast will not be available to you for the day of early check-in.\n\n2. Late Check-out: The standard check-out time in Hotels is 11 AM unless mentioned otherwise in your Booking voucher. Late check-out is subject to availability and cannot be confirmed with the Hotel in advance. Extra charges will usually apply as per the below policy:\n\nCheck-out Time   Late Check-out Charges\nBetween 11 AM and 1 PM   Complimentary\nBetween 1 PM and 5 PM   Upto 30% of the room rate for the day, depending on the hotel policy\nAfter 5 PM   100% of the room rate for the day',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 16),
            Text(
              'Booking Extension Policy:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 8),
            Text(
              'Any extension of stay at the Hotel is subject to availability of the rooms at the current ongoing rate and not at the rate at which the original booking was made.',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 16),
            Text(
              'Cancellation Policy:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 8),
            Text(
              '1. You can cancel your booking using the OYO website or mobile app.\n\n2. The applicable refund amount will be credited to you within 7-14 working days. OYO reserves the right to debit from the OYO Money account, in case of cancellation amount being higher than money already paid by you.\n\n3. Some Hotels do not accept bookings from unmarried couples, do not accept local id proofs. This information is available to the Guest prior to making the booking. For any cancellations or check-in denial associated with such bookings that are dishonoured by the Hotel, OYO shall be under no obligation to refund any amount to the Guest.\n\n4. Hotels reserve the right to deny check-in where customers are unable to provide a valid government id or where minor Guests are traveling unaccompanied or if the Hotel is suspicious of the Guests check-in at its Property. Under all such cases OYO shall be under no obligation to refund any amount to the Guest.\n\n5. You can find the cancellation policies at:',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
