@include('layouts.headnav')
<div id="page-banner" style="background-image: url({{asset('img/')}}/pamilacan.jpg);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1>Book No: {{$book->id}}</h1><br>
			<h4>Submitted by: {{ $book->user->name ?? "" }} {{ $book->user->lname ?? ""}}</h4>
		</div>
	</div>
</div>
<div class="container">
	<div id="page-body">
		<div class="container">
			<h4>Book Title: {{$book->package->tour->title}}</h4>
			<h4>Book by: {{ $book->user->name ?? "User deleted" }} {{ $book->user->lname ?? "" }}</h4>
			<h4>Departure Date:  {{ $book->departuredate }}</h4>
		<h4>Booking Date: {{ $book->created_at}}</h4>
			<h4>Email: {{ $book->user->email ?? "" }} </h4>
			<h4>No# of Guest: {{ $book->guest }}</h4>
			<h4>Price Per Person: {{ 'PHP ' . $book->package->tour->price }}</h4>
			<h4>Total Price: {{ ($book->guest * $book->package->tour->price)  }}</h4>
		{{-- <img src="{{storage_path("app\\images\\{$data['user']->id}_{$data['bookinfo']->id}_{$data['bookingproof']->picture_path}")}}" alt=""> --}}
		
		@if(isset($book->booking_proof))
		<a href="/downloadReceipt/{{$book->booking_proof->id}}" class="btn btn-default">Download Receipt</a>
		<br>
		@else
		No receipt uploaded
		@endif
			

			<form class="form-horizontal" method="POST" action="{{ url('approve') }}">
				{{ csrf_field() }}
				<button type="submit" class="btn btn-default" name="id" value="{{$book->id}}" data-dismiss="modal">Approve</button>
			</form>
			<form class="form-horizontal" method="POST" action="{{ url('reject') }}">
				{{ csrf_field() }}
				<button type="submit" class="btn btn-default" name="id" value="{{$book->id}}" data-dismiss="modal">Reject</button>
			</form>
		</div>
	</div>
</div>
@include('layouts.footer')