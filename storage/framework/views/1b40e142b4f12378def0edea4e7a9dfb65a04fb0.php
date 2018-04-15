<!DOCTYPE html>
<html>
<body>

<img src="<?php echo e(asset('img/receipt header.png')); ?>" alt="logo" width="328" height="82" align="right" style="margin-right:105px;">
<br><br>
<img src="<?php echo e(asset('img/paid.png')); ?>" alt="paid" width="139" height="42" align="left" style="margin-left:100px;"><br>

<hr style="margin-left:100px; margin-right:100px;margin-top:50px; background-color:#91d177;"><br>
<b style="margin-left:100px;" >BOOKING ID: <?php echo e($data['bookinfo']->id); ?></b><br><br>
<b style="margin-left:100px;">Booking Date: <?php echo e(date("Y-m-d H:i" ,strtotime($data['bookinfo']->enddate)-86400)); ?></b><br><br>
<b style="margin-left:100px;">Total Amount (PHP): <?php echo e(($data['bookinfo']->guest * $data['userinfo']->price)); ?></b><br><br>
<hr style="margin-left:100px; margin-right:100px;" ><br>
<b style="margin-left:100px;">Customer's First Name:  <?php echo e($data['user']->name); ?></b><br><br>
<b style="margin-left:100px;">Customer's Last Name:  <?php echo e($data['user']->lname); ?></b><br><br>
<b style="margin-left:100px;">Customer's E-mail Address:  <?php echo e($data['user']->email); ?></b><br><br>
<b style="margin-left:100px;">Rooms and Guests Availed: <?php echo e($data['bookinfo']->guest); ?> </b><br><br>
<b style="margin-left:100px;">Departure Date: <?php echo e($data['bookinfo']->departuredate); ?></b><br><br>
<hr style="margin-left:100px; margin-right:100px;">
<h2 style="margin-left:100px;">Cancellation policy</h2>
<p style="margin-left:100px;">Strictly no cancellation and modification upon confirmation of booking. No refund will be extended for any unused services.</p>

<hr style="margin-left:100px; margin-right:100px;margin-top:50px; background-color:#91d177;">

<footer style="margin-left:100px; margin-right:100px; text-align:center; color:#4c4b4b">Thank you for booking with PJL Travel and Tours. Get in touch with us anytime.
 Landline: (046) 454-2258 Mobile: 09151391245 Email: pjltraveltours@gmail.com</footer>


</body>
</html>
