<template>
    <!-- <ul>
        <li v-for="room in rooms">
            <a :href="'chat/id/'+room.id">
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">{{ room.judul }}</h5>
                  </div>
                </div>
            </a>
        </li>
    </ul> -->

    <div class="row">
        <div class="col-sm-12" v-for="room in rooms">
            <a :href="'chat/id/'+room.id">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">{{ room.judul }}</h5>
                <!-- <h6 class="card-subtitle mb-2 text-muted">Nama Guru</h6> -->
                <!-- <p class="card-text">Isi terakhir</p> -->
                <!-- <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a> -->
              </div>
            </div>
            </a>
        </div>
    </div>
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
