<template>
    <ul>
        <!--<li class="left clearfix" v-for="room in rooms">
            <div class="chat-body clearfix">
                <div class="header">
                    <strong class="primary-font">
                        {{ room.judul }}
                    </strong>
                </div>
                <p>
                </p>
            </div>
        </li>-->
        <li v-for="room in rooms">
            <a :href="'chat/id/'+room.id">{{ room.judul }}</a>
            <!-- <a href=@{{ url('/chat/id/'+room.id) }}>{{ room.judul }}</a> -->
        </li>
    </ul>
</template>

<script>
export default {

    props: ['rooms', 'userid'],

    data: () => ({

    }),

    mounted(){
        this.fetchRooms();
        this.listenRoomList(this.userid);
    },

    methods: {

        fetchRooms() {
            this.$emit('fetchrooms');
        },

        listenRoomList(guruid){
            this.$emit('listenroomlist', guruid);
            console.log('listenRoomList : '+guruid);
        }
    }
};

</script>
