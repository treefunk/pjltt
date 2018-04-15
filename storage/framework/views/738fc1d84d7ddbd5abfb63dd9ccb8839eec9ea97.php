<?php $__env->startComponent('mail::layout'); ?>
    
    <?php $__env->slot('header'); ?>
        <?php $__env->startComponent('mail::header', ['url' => config('app.url')]); ?>
            PJT Travel and Tour
        <?php echo $__env->renderComponent(); ?>
    <?php $__env->endSlot(); ?>
# Welcome to PJL Travel and Tour

Please use this code to confirm your email address <?php echo e($data); ?>

    
    <?php $__env->slot('subcopy'); ?>
        <?php $__env->startComponent('mail::subcopy'); ?>
            <!-- subcopy here -->
        <?php echo $__env->renderComponent(); ?>
    <?php $__env->endSlot(); ?>


    
    <?php $__env->slot('footer'); ?>
        <?php $__env->startComponent('mail::footer'); ?>
            Copyright © 2018
        <?php echo $__env->renderComponent(); ?>
    <?php $__env->endSlot(); ?>
<?php echo $__env->renderComponent(); ?>
