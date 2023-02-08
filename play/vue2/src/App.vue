<template>
  <div>{{ verson1 }}</div>
</template>
<script lang="ts">
export default {
  data() {
    return {
      verson1: '2.7.6'
    };
  },
  watch: {
    verson1: {
      handler(val, oldVal) {
        console.log(val, oldVal);
      }
    }
  },
  mounted() {},
  created() {}
};
</script>
