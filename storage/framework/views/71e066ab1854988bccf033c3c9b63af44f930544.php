<?php echo $__env->make('layouts.headnav', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div id="page-banner" style="background-image: url(<?php echo e(asset('img/')); ?>/pamilacan.jpg);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1>Admin Backoffice</h1><br>
			<h4>Submitted book</h4>
		</div>
	</div>
</div>
<div class="container">
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
					<td>
						<?php if($data['list'][$x][1]=='Pending'): ?>
						<?php endif; ?>
						<a href="<?php echo e(url('adminstatus')); ?>/<?php echo e($data['list'][$x][0]); ?>"><button>View</button></a>
					</td>
				</tr>
				<?php endfor; ?>
			</tbody>
		</table>
	</div>
</div>
</div>
<?php echo $__env->make('layouts.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
