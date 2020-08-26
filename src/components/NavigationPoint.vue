<template>
<main>
    {{ this.name }}
</main>
</template>

<script lang="ts">

import { Component, Prop, Vue } from 'vue-property-decorator';

@Component
export default class HelloWorld extends Vue {
    @Prop({ required: true, default: () => 'Menu Point' })
    private name!: string
}
</script>

<style scoped>

</style>
