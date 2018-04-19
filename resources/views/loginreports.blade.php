@include('layouts.headnav')
<!--page body-->

<div id="page-banner" style="background-image: url({{asset('img/')}}/pamilacan.jpg);">
	<div class="content  wow fdeInUp">
		<div class="container ">
			<h1>Login Reports<br>
		</div>
	</div>
</div>


<div class="container">

    <div id="page-body">
        <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>User</th>
                        <th>Action</th>
                        <th>Date/Time</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($loginreports as $report)
                    <tr>
                        <td>{{$report->user->name}}</td>
                        <td>{{$report->action}}</td>
                        <td>{{$report->created_at}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

</div>

@include('layouts.footer')