@include('layouts.headnav')
<div class="content  wow fdeInUp">
	<div class="container "></div>
</div>
<div id="page-banner" style="background-image: url({{asset('img/')}}/pamilacan.jpg);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1>{{$booking->package->tour->title}}</h1><br>
			<h4>Departure Date: {{$booking->departuredate}}</h4>
		</div>
	</div>
</div>

<div class="container">
	<div id="page-body">
		<div class="container">
			<h4>Total Price: {{ ($booking->guest * $booking->package->tour->price)  }}</h4>
			@if(!isset($booking->booking_proof))
				<form action="/submitproof" method="POST" enctype="multipart/form-data">
						{{ csrf_field() }}
					Select image to upload:
					<input type="hidden" name="book_id" value="{{$booking->id}}">
					<center><input type="file" name="pic" accept="image/*"></center>

					<br>
					<button type="submit">submit receipt</button>
				</form>
			@else
				Receipt already submitted!
			@endif
		</div>
	</div>
</div>

@include('layouts.footer')
       
</script>