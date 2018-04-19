<?php echo $__env->make('layouts.headnav', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div class="content  wow fdeInUp">
	<div class="container "></div>
</div>
<div id="page-banner" style="background-image: url(<?php echo e(asset('img/')); ?>/pamilacan.jpg);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1><?php echo e($booking->package->tour->title); ?></h1><br>
			<h4>Departure Date: <?php echo e($booking->departuredate); ?></h4>
		</div>
	</div>
</div>

<div class="container">
	<div id="page-body">
		<div class="container">
			<h4>Total Price: <?php echo e(($booking->guest * $booking->package->tour->price)); ?></h4>
			<?php if(!isset($booking->booking_proof)): ?>
				<form action="/submitproof" method="POST" enctype="multipart/form-data">
						<?php echo e(csrf_field()); ?>

					Select image to upload:
					<input type="hidden" name="book_id" value="<?php echo e($booking->id); ?>">
					<center><input type="file" name="pic" accept="image/*"></center>

					<br>
					<button type="submit">submit receipt</button>
				</form>
			<?php else: ?>
				Receipt already submitted!
			<?php endif; ?>
		</div>
	</div>
</div>

<?php echo $__env->make('layouts.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
       
</script>