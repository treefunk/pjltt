<?php echo $__env->make('layouts.headnav', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
			<!-- banner Page
			==========================================-->
			<div id="page-banner" style="background-image: url(img/portfolio-bg.jpg);">
				<div class="content  wow fdeInUp">
					<div class="container ">
						<h1>Offers</h1>
						<h5>best offers and packages are here!</h5>
					</div>
				</div>
			</div>
			<!-- our works block
			==========================================-->
			<section id="our-work-block">
				<div class="container">
					<div class="row">
						<!-- Modal -->
						<div class="section-title text-center wow fadeInUp">
							<h2>Domestic Tour Packages</h2>
						</div>	
						<div class="works">
							
							<!--portfolio grid-->
							<ul class="grid">
								<?php $__currentLoopData = $data['domestic']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tour): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<li class="wow fdeInUp">
									<figure> <img src="<?php echo e(asset('img/')); ?>/<?php echo e($tour->image); ?>" alt="Screenshot 01">
										<figcaption>
										<div class="caption-content  wow fdeInUp">
											<h6><?php echo e($tour->title); ?></h6>
											<hr>
											<center><h6>₱<?php echo e($tour->price); ?>&nbsp;per person&nbsp;/&nbsp;<?php echo e($tour->day); ?> Days, <?php echo e($tour->night); ?> Nights</h6></center>
											<br>
											<a href="<?php echo e(url('booknow')); ?>/<?php echo e($tour->id); ?>"><button type="button">Book Now!</button></a>
										</div>
										</figcaption>
									</figure>
								</li>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</ul>
							<!--/portfolio grid-->
							
							<div class="clearfix"></div>
							
							<!--/portfolio page nav-->
							
						</div>
					</div>
				</div>
			</section>
			<hr style="height:5px;border:none;color:#7e7e7e;background-color:#7e7e7e;" />
			<section id="our-work-block">
				<div class="container">
					<div class="row">
						<!-- Modal -->
						<div class="section-title text-center wow fadeInUp">
							<h2>International Tour Packages</h2>
						</div>	
						<div class="works">
							
							<!--portfolio grid-->
							<ul class="grid">
								<?php $__currentLoopData = $data['international']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tour): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<li class="wow fdeInUp">
									<figure> <img src="<?php echo e(asset('img/')); ?>/<?php echo e($tour->image); ?>" alt="Screenshot 01">
										<figcaption>
										<div class="caption-content  wow fdeInUp">
											<h6><?php echo e($tour->title); ?></h6>
											<hr>
											<center><h6>₱<?php echo e($tour->price); ?>&nbsp;per person&nbsp;/&nbsp;<?php echo e($tour->day); ?> Days, <?php echo e($tour->night); ?> Nights</h6></center>
											<br>
											<a href="<?php echo e(asset('booknow/')); ?>/<?php echo e($tour->id); ?>"><button type="button">Book Now!</button></a>
										</div>
										</figcaption>
									</figure>
								</li>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</ul>
							<!--/portfolio grid-->
							
							<div class="clearfix"></div>
							
							<!--/portfolio page nav-->
							
						</div>
					</div>
				</div>
			</section>
<!--/portfolio grid-->
<div class="clearfix"></div>
<!--/portfolio page nav-->
</div></div></div>
</section>

<?php echo $__env->make('layouts.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
