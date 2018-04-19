<?php

namespace App\Http\Controllers;
use App\Tour;
use App\Package;
use App\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Auth;
use App\User;
use Mail;
use App\Mail\NewUserWelcome;
use PDF;
use App\BookingProof;
use App\Inquiry;
use Illuminate\Support\Facades\Storage;
use App\LoginReport;

class UserController extends Controller
{
    public function offerPage(){

		$data['domestic'] = Tour::where('tourtype',1)->get();
		$data['international'] = Tour::where('tourtype',2)->get();
    	return view('offers')->with('data',$data); 
;
    }


    public function faqpage(){
        return view('faqs');
    }

    public function aboutpage(){
        return view('about');
    }


    public function contact(){
        return view('contact');
    }

    public function pdf($id){
        $book = Book::find($id);

        $pdf = PDF::loadView('pdf', ['book' => $book]);
        return $pdf->download('receipt.pdf');
    }

    public function booknowPage($id){
    	$data['package'] = Package::where('tour_id',$id)->get();
    	$data['main'] = Tour::where('id',$id)->get();
    	return view('booknow')->with('data',$data); 
    }

    public function booktour(Request $request){
    	Session::put('Flag', 1);
    	date_default_timezone_set('Asia/Manila');
    	$book = new Book;
    	$book->user_id = Auth::id();
    	$book->status = 0;
    	$book->packageitenary_id = $request->packageid;
    	$book->guest = $request->room_and_guest;
    	$book->remarks = $request->queries;
		$book->departuredate =  date("Y-m-d H:i:s" ,strtotime($request->date));
    	$book->enddate = date("Y-m-d H:i:s" ,strtotime("now")+86400);
        $book->save();
        
        $data['list'] = array();

		$booklist = User::find(Auth::id())->books;
		foreach ($booklist as $key ) {
			$row = array();
			array_push($row,$key->id);
            if($key->status==1){
                array_push($row,'Approved');
            }elseif($key->status==4){
                array_push($row,'Rejected');
            }elseif(strtotime($key->enddate)<strtotime("now")){
                array_push($row,'Expired');
            }else{
                array_push($row,'Pending');
            }
			$price = Tour::find($key->packageitenary_id);

			array_push($row,$price->price*$key->guest);
			array_push($row,$price->title);

			array_push($data['list'],$row);
        }
        
    	return view('booklist',compact(['book','data']));
    }


    public function bookRequests(){
    	$data['list'] = array();

		$booklist = User::find(Auth::id())->books;
		foreach ($booklist as $key ) {
			$row = array();
			array_push($row,$key->id);
            if($key->status==1){
                array_push($row,'Approved');
            }elseif($key->status==4){
                array_push($row,'Rejected');
            }elseif(strtotime($key->enddate)<strtotime("now")){
                array_push($row,'Expired');
            }else{
                array_push($row,'Pending');
            }
			$price = Tour::find($key->packageitenary_id);

			array_push($row,$price->price*$key->guest);
			array_push($row,$price->title);

			array_push($data['list'],$row);
		}

    	return view('booklist')->with('data',$data); 
    }


    public function adminHome(){
        $data['list'] = array();

        $booklist = Book::orderByDesc('enddate')->get();
        foreach ($booklist as $key ) {
            $row = array();
            array_push($row,$key->id);
            if($key->status==1){
                array_push($row,'Approved');
            }elseif($key->status==4){
                array_push($row,'Rejected');
            }elseif(strtotime($key->enddate)<strtotime("now")){
                array_push($row,'Expired');
            }else{
                array_push($row,'Pending');
            }
            $price = Tour::find($key->packageitenary_id);

            array_push($row,$price->price*$key->guest);
            array_push($row,$price->title);

            array_push($data['list'],$row);
        }
    	return view('admin.adminhome')->with('data',$data); 
    }

    public function email(){
        $data = 'Sample';


        Mail::to('ugaddanmeljohn@gmail.com')->send(new NewUserWelcome($data));
        return 'Hello';

    }

    public function adminbookstatus($id){
        $book = Book::find($id);
        // $user =  Book::find($data['bookinfo']->id)->tour;
        // $data['user'] = User::find($data['bookinfo']->user_id);
        // $data['bookingproof'] = $data['bookinfo']->booking_proof;
        return view('admin.adminviewbook')->with('book',$book); 
    }
    
    public function confirm(Request $request){
        $user = User::find(Auth::id());
        if($request->code===$user->mail->code){
            
            $user->email_conf = 1;
            $user->save();
        }

        return redirect()->back();
    }

    public function approve(Request $request){
        $book = Book::find($request->id);
        $book->status = 1;
        $book->save();
        return redirect('admin');
    }

    public function reject(Request $request){
        $book = Book::find($request->id);

        $book->status = 4;
        $book->save();
        return redirect('admin');
    }

    public function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
    }

    public function submitProof(Request $request)
    {
        $bookId = request()->post('book_id');
        if ($request->hasFile('pic')) {
            $filename = auth()->user()->id."_".$bookId."_".request()->file('pic')->getClientOriginalName();
            $files = glob(storage_path()."/app/images/".auth()->user()->id."_".$bookId."_"."*");
            if(count($files) > 0){
                Storage::delete($files);  
            }
            $path = request()->pic->storeAs('images',$filename); 
            $book = Book::find($bookId);
            $bookingproof = $book->booking_proof()->create(['picture_path' => request()->file('pic')->getClientOriginalName()]);
        }
        $userbookings = auth()->user()->books();
        $this->bookRequests();
        return redirect()->action('UserController@bookRequests');
    }
    
    public function downloadReceipt($receiptId)
    {
        if(auth()->user()->position == 1){
            $book = BookingProof::find($receiptId)->book;
            $user = $book->user;
            $proof = $book->booking_proof;
            return response()->download(storage_path("app/images/{$user->id}_{$book->id}_{$proof->picture_path}"),$proof->picture_path);
        }
    }

    // non logged in user
    public function submitContact()
    {
        $validator = validator(request()->post(),[
            'name' => 'required|min:3',
            'email' => 'required|email',
            'message' => 'required'
        ]);

        if($validator->validate()){
            Inquiry::create(request()->post());
            return redirect()->back();
        }else{
            return redirect()->back();
        }
        
    }

    // admin 
    public function getInquiries()
    {
        $inquiries = Inquiry::all();
        return view('inquiries',compact(['inquiries']));
    }

    public function viewBooking($id)
    {
        $booking = Book::find($id);
        return view('viewbooking',compact(['booking']));
    }

    public function getLoginReports()
{
        $loginreports = LoginReport::all();
        return view('loginreports',compact(['loginreports']));
    }


}


