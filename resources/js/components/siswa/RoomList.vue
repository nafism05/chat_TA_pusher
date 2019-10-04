<template>
    <ul class="nav discussions" role="tablist">
        <!-- <li>
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
		</li> -->
        <li v-for="room in rooms">
            <!-- <a :href="'chat/id/'+room.id">{{ room.judul }}</a> -->
            <a :href="'chat/id/'+room.id" class="filter direct active" data-chat="open" role="tab" aria-controls="chat1" aria-selected="true">
				<!-- <div class="status online"><img src="dist/img/avatars/avatar-male-1.jpg" alt="avatar"><i data-eva="radio-button-on"></i></div> -->
				<div class="content">
					<div class="headline">
						<h5>{{ room.judul }}</h5>
						<!-- <span>Today</span> -->
					</div>
					<!-- <p>Please review and sign the binding agreement.</p> -->
				</div>
			</a>
        </li>
    </ul>
</template>

<script>
export default {

    props: ['rooms'],

    data: () => ({

    }),

    mounted(){
        this.fetchRooms();
    },

    methods: {

        fetchRooms() {
            this.$emit('fetchrooms');
        }
    }
};

</script>
