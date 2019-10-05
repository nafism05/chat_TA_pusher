<template>
    <ul>
        <li v-for="room in rooms">
            <!-- <a :href="'chat/id/'+room.id">{{ room.judul }}</a> -->
            <!-- <a :href="'chat/id/'+room.id" class="filter direct active" data-chat="open" role="tab" aria-controls="chat1" aria-selected="true"> -->
				<!-- <div class="status online"><img src="dist/img/avatars/avatar-male-1.jpg" alt="avatar"><i data-eva="radio-button-on"></i></div> -->
				<!-- <div class="content"> -->
					<!-- <div class="headline"> -->
						<!-- <h5>{{ room.judul }}</h5> -->
						<!-- <span>Today</span> -->
					<!-- </div> -->
					<!-- <p>Please review and sign the binding agreement.</p> -->
				<!-- </div> -->
			<!-- </a> -->
            <a :href="'chat/id/'+room.id">
                <div class="card" style="width: 18rem;">
                  <div class="card-body">
                    <h5 class="card-title">{{ room.judul }}</h5>
                    <!-- <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a> -->
                  </div>
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
