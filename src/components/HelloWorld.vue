<script setup lang="ts">
import {ref, useSSRContext} from 'vue'

defineProps({
  msg: String
})

const gitTagCommit = ref(import.meta.env.VITE_GIT_REF);
let ctx : Record<string, any> | undefined;

if(import.meta.env.SSR) {
  ctx = useSSRContext();
}
</script>

<template>
  <h1>{{ msg }}</h1>

  <div class="card">
    <span><strong>Git Tag/Commit</strong></span>
    <span class="data">{{ gitTagCommit }}</span>
    <span><strong>Host</strong></span>
    <span class="data">{{ ctx?.hostname ?? '' }}</span>
  </div>
</template>

<style scoped>
.card {
  display: grid;
  grid-template-columns: 10rem auto;
  row-gap: 0.5rem;

  & span {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
}

.data {
  background-color: #1a1a1a;
  border-radius: 8px;
  padding: 0.6em 1.2em;
  font-size: 1em;
  font-weight: 500;
  font-family: inherit;
}
</style>
