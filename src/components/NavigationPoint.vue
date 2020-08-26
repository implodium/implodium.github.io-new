<template>
<div id="navigation-point-content">
    {{ this.name }}
</div>
</template>

<script lang="ts">

import { Component, Prop, Vue } from 'vue-property-decorator';

@Component
export default class HelloWorld extends Vue {
    @Prop({ required: true, default: () => 'Menu Point' })
    private name!: string
}
</script>

<style scoped lang="scss">

#navigation-point-content {
}

</style>
