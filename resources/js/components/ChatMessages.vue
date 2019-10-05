<template>
    <ul v-chat-scroll>
        <li v-for="message in messages">
            <div class="alert alert-success">
                {{ message.message }}
            </div>
            {{ message.user.name }}
        </li>
    </ul>
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
                return "isichatkanan";
            }else{
                return "isichatkiri";
            }
        }

    }
};
</script>
