<!-- resources/views/chat.blade.php -->

@extends('layouts.swipe')

@section('content')

	<!-- Start of Sidebar -->
	<div class="sidebar">
		<div class="container">
			<div class="tab-content">
				<!-- Start of Discussions -->
				<div class="tab-pane fade show active" id="conversations" role="tabpanel">
					<div class="middle">
						<ul class="nav discussions" role="tablist">
							{{-- <li>
								<a href="#chat1" class="filter direct active" data-chat="open" data-toggle="tab" role="tab" aria-controls="chat1" aria-selected="true">
									<div class="status online"><img src="dist/img/avatars/avatar-male-1.jpg" alt="avatar"><i data-eva="radio-button-on"></i></div>
									<div class="content">
										<div class="headline">
											<h5>Ham Chuwon</h5>
											<span>Today</span>
										</div>
										<p>Please review and sign the binding agreement.</p>
									</div>
								</a>
							</li> --}}


						</ul>
					</div>
				</div>
				<!-- End of Discussions -->
			</div>
		</div>
	</div>
	<!-- End of Sidebar -->


<!-- Start of Chat -->
<div class="chat open">
	<div class="tab-content">
		<!-- Start of Chat Room -->
		<div class="tab-pane fade show active" id="chat1" role="tabpanel">
			<div class="item">
				<div class="content">
					<div class="middle" id="scroll">
						<div class="container">
						    <chat-messages
								v-on:fetchmessages="fetchMessages"
								v-on:listenmessagesent="listenMessageSent"
								:roomid="{{ $data['roomId'] }}"
								:messages="messages"
								:userid="{{ Auth::id() }}"
							></chat-messages>
						    {{-- <chat-form
						        v-on:messagesent="sendMessage"
								:roomid="{{ $data['roomId'] }}"
						        :user="{{ Auth::user() }}"
						    ></chat-form> --}}

							{{-- <a href="{{ url('endsession') }}">End Session</a> --}}
						</div>
					</div>
					<div class="container">
						<div class="bottom">
							<form>
								<textarea class="form-control" placeholder="Type message..." rows="1"></textarea>
								<button type="submit" class="btn prepend"><i data-eva="paper-plane"></i></button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
