<template>
    <div>
        <div class="form-group">
            <div class="star-rating">
                <label class="star-rating__star" v-for="rating in ratings"
                :class="{'is-selected': ((value >= rating) && value != null), 'is-disabled': disabled}"
                v-on:click="set(rating)" v-on:mouseover="star_over(rating)" v-on:mouseout="star_out">
                <input class="star-rating star-rating__checkbox" type="radio" :value="rating" :name="name"
                v-model="value" :disabled="disabled">★</label>
            </div>
        </div>
        <button class="btn btn-primary" v-on:click="saverating()">Submit</button>
    </div>
</template>

<script>
export default {
    props: {
        'name': String,
        'value': null,
        'id': String,
        'disabled': Boolean,
        'required': Boolean,
        'roomid' : String
      },

      data: function() {
    return {
      temp_value: null,
      ratings: [1, 2, 3, 4, 5]
    };
  },

  methods: {
    /*
     * Behaviour of the stars on mouseover.
     */
    star_over: function(index) {
      var self = this;

      if (!this.disabled) {
        this.temp_value = this.value;
        return this.value = index;
      }

    },

    /*
     * Behaviour of the stars on mouseout.
     */
    star_out: function() {
      var self = this;

      if (!this.disabled) {
        return this.value = this.temp_value;
      }
    },

    /*
     * Set the rating.
     */
    set: function(value) {
      var self = this;

      if (!this.disabled) {
        this.temp_value = value;
        console.log('bintang: ', value);
        return this.value = value;
      }
    },

    saverating(){
        axios.post('/saverating', {
            rating: this.value,
            roomid: this.roomid
        }).then(response => {
            console.log(response.data);
            window.location.replace("/");
        }).catch(error => {
            console.log('error post axios : '+error);
        });
    }

  }
}
</script>
