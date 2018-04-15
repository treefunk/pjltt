<?php echo $__env->make('layouts.headnav', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div class="content  wow fdeInUp">
	<div class="container "></div>
</div>
<?php $__currentLoopData = $data['main']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tour): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<div id="page-banner" style="background-image: url(<?php echo e(asset('img/')); ?>/<?php echo e($tour->image); ?>);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1><?php echo e($tour->title); ?></h1><br>
			<h4><?php echo e($tour->place); ?></h4>
		</div>
	</div>
</div>
<!--page body-->
<div id="page-body">
	<div class="container">
		<div class="row wow fdeInUp">
			<!--blog posts container-->
			<div class="col-md-12 page-block">
				<p><b>Duration:</b> <?php echo e($tour->day); ?> Days/<?php echo e($tour->night); ?> Nights</p>
				<p><b>Travel Validity:</b> 21 November 2017 - 31 October 2018</p>
				<p><b>Price:</b> Php <?php echo e($tour->price); ?>/1 Person</p>
				<h5>Description</h5>
				<p><?php echo e($tour->description); ?></p>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<ul><b>What's Included?</b>
						<li>Round trip airport transfers based on seat in coach (In & Out <?php echo e($tour->airport); ?>)</li>
						<li>2N / 3DRoom Accommodation</li>
						<li>Daily Hotel Breakfast</li>
					</ul>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<ul><b>What's not Included?</b>
						<li>Tipping for the guide and driver</li>
						<li>Any visa (if required)</li>
						<li>Midnight transfer surcharge between 2200 hrs to 0600 hts (late
						night/early morning transfer): USD 10/Person</li>
						<li>Foreign Passport Surcharge of USD 30 per person</li>
						<li>Anything that is not specifically mentioned in the INCLUSIONS is on
						pax account.</li>
						<li>Any kind of personal expenses or optional tours/ extra meals ordered
						by the guests.</li>
					</ul>
				</div>
			</div>
			<h4><b>PACKAGE ITINERARY:</b></h4>
			<?php $__currentLoopData = $data['package']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tour2): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<?php echo $tour2->day; ?>


			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					<?php if(!Auth::check()): ?>
					<button  data-toggle="modal" data-target="#login" type="button">Book Now!</button>
					<?php else: ?>
					<?php if(Auth::user()->email_conf==0): ?>
					<button data-toggle="modal" data-target="#confirm" type="button">Confirm Email</button>
					<?php else: ?>
					<button data-toggle="modal" data-target="#book" type="button">Book Now!</button>
					<?php endif; ?>
					
					<?php endif; ?>
					</center>
					<!--blog posts container-->
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</ul>
</div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php echo $__env->make('layouts.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>


<div id="book" class="modal fade" role="dialog">
	<br><br><br><br><br><br>
<div class="modal-dialog">
<!-- Modal content-->
<div class="modal-content">
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal">&times;</button>
	<h4 class="modal-title">Book tour </h4>
</div>
<div class="modal-body">
	
        <form class="form-horizontal" method="post" action="<?php echo e(url('booktour')); ?>">
          <?php echo e(csrf_field()); ?>


          <fieldset>
            <!-- Select Basic -->
            <div class="form-group">
              <label class=" control-label" for="room_and_guest">Room &amp; Guests</label>

              <div class="">
                <select id="room_and_guest" name="room_and_guest" class="form-control"  required="true">
                	<option value="1">1 Room 1 Guests</option>
                  <option value="2">1 Room 2 Guests</option>
                </select>
              </div>
            </div>
			<input type="hidden" value="<?php echo e($tour->id); ?>" name="packageid">
            <!-- Datepicker -->
            <div class="form-group">
              <label class=" control-label" for="departure">Departure Date</label>

              <div class="">

                <input type="text" class="form-control datetimepicker-input" id="editout" name="date" data-toggle="datetimepicker" data-target="#editout"  required="true"/>
              </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
              <label class=" control-label" for="queries">Remarks</label>
              <div class="">                     
                <textarea class="form-control" id="queries" name="queries" placeholder="Remarks, if any" ></textarea>
              </div>
            </div>

            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label" for="submit"></label>

            </div>
          </fieldset>
          				<center><button type="submit" class="btn btn-primary">
				Submit
				</button><button type="button" class="btn btn-success" data-dismiss="modal">Close</button></center>
        </form>
	
	
</div>
</div>
</div>
</form>
</div>


<script>

            $(function () {
                $('#editout').datetimepicker({
										defaultDate: Date.now(),
										minDate: moment(1, 'h')
                });
            });
</script>