/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

// Vue.component('example-component', require('./components/ExampleComponent.vue').default);

Vue.component('chat-messages', require('./components/ChatMessages.vue').default);
Vue.component('chat-form', require('./components/ChatForm.vue').default);
Vue.component('room-list', require('./components/guru/RoomList.vue').default);
Vue.component('room-list-s', require('./components/siswa/RoomList.vue').default);
Vue.component('send-notification', require('./components/SendNotification.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',

    data: {
        messages: [],
        rooms: []
    },

    created() {
        Echo.private('chat.'+chatId)
        .listen('MessageSent', (e) => {
            this.messages.push({
                message: e.message.message,
                user: e.user
            });
        });

        Echo.private(guruChannel)
        .listen('RoomCreated', (e) => {
            this.rooms.push({
                judul: e.chatroom.judul
            });
            console.log('tes bosse');
            console.log(e);
        });
    },

    methods: {
        pushMessage(message){
          this.messages.push(message);
        }
    }
});
