<template>
    <div class="input-group">
        <input id="btn-input" type="text" name="message" class="form-control input-sm" placeholder="Type your message here..." v-model="newMessage" @keyup.enter="sendMessage">

        <span class="input-group-btn">
            <button class="btn btn-primary btn-sm" id="btn-chat" @click="sendMessage">
                Send
            </button>
        </span>
    </div>
</template>

<script>
    export default {
        props: ['user'],

        data() {
            return {
                newMessage: ''
            }
        },

        methods: {

            sendMessage() {
                // this.messages.push(message);

                axios.post('/messages', {
                    message : this.newMessage
                }).then(response => {
                    console.log('axios send message : '+response.data.status);
                });

                this.newMessage = '';
            },

            pushMessage(){
                this.$emit('messagesent', {
                    user: this.user,
                    message: this.newMessage
                });
            }
        }
    }
</script>
