@include('layouts.headnav')
<!--page body-->

<div id="page-banner" style="background-image: url({{asset('img/')}}/pamilacan.jpg);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1>Inquiries<br>
		</div>
	</div>
</div>


<div class="container">

    <div id="page-body">
        <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Message</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($inquiries as $inquiry)
                    <tr>
                        <td>{{$inquiry->name}}</td>
                        <td>{{$inquiry->email}}</td>
                        <td>{{$inquiry->message}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

</div>

@include('layouts.footer')