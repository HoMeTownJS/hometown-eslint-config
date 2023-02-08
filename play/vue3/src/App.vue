<template>
  <div>{{ dog.name }}</div>
</template>
<script setup lang="ts">
import { ref } from 'vue';
const dog = ref({ name: '1' });
</script>
