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
    props: ['roomid'],

    data: () => ({
        messages: []
    }),

    mounted () {
        console.log('roomId = '+this.roomid);
        this.fetchMessages();
    },

    methods: {
        fetchMessages() {
            axios.get('/messages/'+this.roomid).then(response => {
                this.messages = response.data;
            });
        },

        addMessage(message) {
            this.messages.push(message);

            axios.post('/messages', message).then(response => {
              // console.log(response.data);
            }).catch(error => {
                console.log('error post axios : '+error);
            });
        },

    }
};
</script>
