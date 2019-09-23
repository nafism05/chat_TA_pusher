<template>
    <ul class="chat">
        <li class="left clearfix" v-for="message in messages">
            <div class="chat-body clearfix">
                <div class="header">
                    <strong class="primary-font">
                        {{ message.user.name }}
                    </strong>
                </div>
                <p>
                    {{ message.message }}
                </p>
            </div>
        </li>
    </ul>
</template>

<script>
export default {
    props: ['roomid', 'messages'],

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
        }

    }
};
</script>
