<?php echo $__env->make('layouts.headnav', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div class="content  wow fdeInUp">
	<div class="container "></div>
</div>
<div id="page-banner" style="background-image: url(<?php echo e(asset('img/')); ?>/pamilacan.jpg);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1>Book Request</h1><br>
			<h4>list of submitted book</h4>
		</div>
	</div>
</div>
<?php if(isset($book)): ?>
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Successful</h4>
			</div>
			<div class="modal-body">
				<center><p><i>You Have Successfully send a booking request</i></p>
				<br>-<br><br>
				<h3>MODE OF PAYMENT:</h3>
				<h4>Via LBC / Palawan Express Remittance Center:</h4>
				<b>Receiver Name:</b> Vilma Lastimado<br>
				<b>Location:</b> Imus,  Cavite<br>
				<b>Contact Number:</b> <i>(Smart)</i> 09996621255, <i>(Globe)</i>  09151391245<br><br>
				<hr>
				<h4>Via Smart Padala:</h4>
				<b>Account Number:</b> 5577519482790103<br><br>
				<hr>
				<h4>Via Bank (BDO or Any Branch):</h4>
				<b>Account Number:</b> 4370726835<br>
				<b>Account Name:</b> Via Philippines Travel Corporation<br>
				<b>Reference Number and Payor's Name:</b> FRAG 491416 PJL travel and Tours<br><br>
				<hr>
				<em><b>Note:</b> If not paid within 24 hrs., your reservation will expire. Do not close this tab yet 'til you upload your payment receipt.</em>
				<br><br>
				<h3>Upload your payment receipt here:</h3>
			</div>
			<div class="modal-footer">
				<form action="/submitproof" method="POST" enctype="multipart/form-data">
					<?php echo e(csrf_field()); ?>

				Select image to upload:
				<input type="hidden" name="book_id" value="<?php echo e($book->id); ?>">
    			<center><input type="file" name="pic" accept="image/*"></center>

    			<br>
    			<input type="submit">
   
    			

				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</form>

			</div>
		</div>
	</div>
</div>

<?php endif; ?>;
<!--page body-->
<div id="page-body">
	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Book Title</th>
					<th>Status</th>
					<th>Total Price</th>
					<th width="10%">Action</th>
				</tr>
			</thead>
			<tbody>
				<?php for($x=0; $x<count($data['list']);$x++): ?>
				<tr>
					<td><?php echo e($data['list'][$x][3]); ?></td>
					<td><?php echo e($data['list'][$x][1]); ?></td>
					<td><?php echo e($data['list'][$x][2]); ?></td>
					<td colspan="2">
						<?php if($data['list'][$x][1]=='Approved'): ?>
						<a class="btn btn-default" href="<?php echo e(url('printpdf')); ?>/<?php echo e($data['list'][$x][0]); ?>">Print</a>
						<?php endif; ?>
						<a class="btn btn-default" href="viewbooking/<?php echo e($data['list'][$x][0]); ?>">View Booking</a>
					</td>
				</tr>
				<?php endfor; ?>
			</tbody>
		</table>
	</div>
</div>

<?php echo $__env->make('layouts.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<script>
<?php if(!empty(Session::get('Flag'))): ?>
       $("#myModal").modal();
       <?php Session::pull('Flag'); ?> 
<?php endif; ?>

       
</script>