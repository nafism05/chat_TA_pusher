<template>
  <div>
    <!-- Send notification button -->
    <button
      type="button"
      class="btn btn-success btn-send" @click="sendNotification"
    >
      Send Notification
    </button>

    <!-- Enable/Disable push notifications -->
    <button
      type="button"
      class="btn btn-primary"
      @click="initPush"
    >
      Enable Push Notifications
    </button>
  </div>
</template>

<script>
import axios from 'axios'

export default {
    // props: ['token'],

  data: () => ({
  }),

  methods: {
    initPush() {
        if (!navigator.serviceWorker.ready) {
            return;
        }

        new Promise(function (resolve, reject) {
            const permissionResult = Notification.requestPermission(function (result) {
                resolve(result);
            });

            if (permissionResult) {
                permissionResult.then(resolve, reject);
            }
        })
            .then((permissionResult) => {
                if (permissionResult !== 'granted') {
                    throw new Error('We weren\'t granted permission.');
                }
                this.subscribeUser();
            });
    },

    subscribeUser() {
        navigator.serviceWorker.ready
            .then((registration) => {
                const subscribeOptions = {
                    userVisibleOnly: true,
                    applicationServerKey: this.urlBase64ToUint8Array(
                        'BFVGRWSo59nns60lzUoUQQGOhRpFKpBDT3j2S7Q_PUVQTGTj8BN7bxz3PDD7MKgT5s5ZheBzM2g1w7s1KcExQsg'
                    )
                };

                return registration.pushManager.subscribe(subscribeOptions);
            })
            .then((pushSubscription) => {
                console.log('Received PushSubscription: ', JSON.stringify(pushSubscription));
                this.storePushSubscription(pushSubscription);
            });
    },

    urlBase64ToUint8Array(base64String) {
        var padding = '='.repeat((4 - base64String.length % 4) % 4);
        var base64 = (base64String + padding)
            .replace(/\-/g, '+')
            .replace(/_/g, '/');

        var rawData = window.atob(base64);
        var outputArray = new Uint8Array(rawData.length);

        for (var i = 0; i < rawData.length; ++i) {
            outputArray[i] = rawData.charCodeAt(i);
        }
        return outputArray;
    },

    storePushSubscription(pushSubscription) {
        // const token = this.token;
        const token = document.querySelector('meta[name=csrf-token]').getAttribute('content');
        console.log('token:', token);

        console.log('push subscriptions: ', JSON.stringify(pushSubscription));

        // fetch('/push', {
        //     method: 'POST',
        //     body: JSON.stringify(pushSubscription),
        //     headers: {
        //         'Accept': 'application/json',
        //         'Content-Type': 'application/json',
        //         'X-CSRF-TOKEN': token
        //     }
        // })
        //     .then((res) => {
        //         return res.json();
        //     })
        //     .then((res) => {
        //         console.log(res)
        //     })
        //     .catch((err) => {
        //         console.log(err)
        //     });

        axios.post('/push', {
            test: 'test'
        }).then(response => {
            console.log(response.data);
        });

    },

    sendNotification () {
      fetch('/push')
        .then(function(response) {
          return response.json();
        })
        .then(function(myJson) {
          console.log(JSON.stringify(myJson));
        });
    },

    cobaPermission(){
        Notification.requestPermission();
    }
  }
}
</script>
