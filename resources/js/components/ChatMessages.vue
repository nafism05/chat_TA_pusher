<template>
    <ul>
        <li v-for="message in messages" :class="[kananorkiri(message.user.id)]">
            <div class="content">
                <div class="message">
                    <div class="bubble">
                        <p>{{ message.message }}</p>
                    </div>
                </div>
                <span>{{ message.user.name }}</span>
            </div>
        </li>
    </ul>
</template>

<script>
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
