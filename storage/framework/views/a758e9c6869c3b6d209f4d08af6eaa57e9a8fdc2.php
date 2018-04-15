<?php echo $__env->make('layouts.headnav', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div id="page-banner" style="background-image: url(<?php echo e(asset('img/')); ?>/pamilacan.jpg);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1>Book No: <?php echo e($data['bookinfo']->user_id); ?></h1><br>
			<h4>Submitted by: <?php echo e($data['user']->name); ?> <?php echo e($data['user']->lname); ?></h4>
		</div>
	</div>
</div>
<div class="container">
	<div id="page-body">
		<div class="container">
			<h4>Book Title: <?php echo e($data['userinfo']->title); ?></h4>
			<h4>Book by: <?php echo e($data['user']->name); ?> <?php echo e($data['user']->lname); ?></h4>
			<h4>Departure Date:  <?php echo e($data['bookinfo']->departuredate); ?></h4>
			<h4>Email: <?php echo e($data['user']->email); ?> </h4>
			<h4>No# of Guest: <?php echo e($data['bookinfo']->guest); ?></h4>
			<h4>Price Per Person: <?php echo e('PHP ' . $data['userinfo']->price); ?></h4>
			<h4>Total Price: <?php echo e(($data['bookinfo']->guest * $data['userinfo']->price)); ?></h4>
		
		<a href="/downloadReceipt/<?php echo e($data['bookingproof']->id); ?>" class="btn btn-default">Download Receipt</a>
		<br>
			

			<form class="form-horizontal" method="POST" action="<?php echo e(url('approve')); ?>">
				<?php echo e(csrf_field()); ?>

				<button type="submit" class="btn btn-default" name="id" value="<?php echo e($data['bookinfo']->id); ?>" data-dismiss="modal">Approve</button>
			</form>
			<form class="form-horizontal" method="POST" action="<?php echo e(url('reject')); ?>">
				<?php echo e(csrf_field()); ?>

				<button type="submit" class="btn btn-default" name="id" value="<?php echo e($data['bookinfo']->id); ?>" data-dismiss="modal">Reject</button>
			</form>
		</div>
	</div>
</div>
<?php echo $__env->make('layouts.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>