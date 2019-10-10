<template>
    <!-- <ul v-chat-scroll>
        <li v-for="message in messages">
            <div class="alert alert-success">
                {{ message.message }}
            </div>
            {{ message.user.name }}
        </li>
    </ul> -->

    <div class="row">
        <div class="col-10" v-for="message in messages" :class="{'offset-2':kananorkiri(message.user.id)}" >
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title" :class="{'text-right':kananorkiri(message.user.id)}">{{ message.message }}</h5>
                    <!-- <h6 class="card-subtitle mb-2 text-muted">Nama Guru</h6> -->
                    <!-- <p class="card-text">Isi terakhir</p> -->
                    <!-- <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a> -->
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Vue from 'vue'
import VueChatScroll from 'vue-chat-scroll'
Vue.use(VueChatScroll)

export default {
    props: ['roomid', 'messages', 'userid'],

    data: () => ({
        // messages: []
    }),

    mounted () {
        this.fetchMessages(this.roomid);
        this.listenMessageSent(this.roomid);
    },

    methods: {
        fetchMessages(roomid) {
            this.$emit('fetchmessages', roomid);
        },

        listenMessageSent(roomid){
            this.$emit('listenmessagesent', roomid);
        },
        kananorkiri(userid){
            if(userid==this.userid){
                return true;
            }else{
                return false;
            }
        }

    }
};
</script>
