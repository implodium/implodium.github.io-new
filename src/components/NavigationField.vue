<template>
<div :id="`navigation-point-${this.name}`">
    {{ this.name }}
</div>
</template>

<script lang="ts">

import { Component, Prop, Vue } from 'vue-property-decorator';

@Component
export default class NavigationPoint extends Vue {
    @Prop({ required: true, default: () => 'Menu Point' })
    private name!: string

    mounted() {
        const navigationPoint = document.querySelector(
            `#navigation-point-${this.name}`,
        ) as HTMLElement
        console.log(navigationPoint)
        const navigation = navigationPoint.parentElement as HTMLElement

        navigationPoint.style.width = `${100 / navigation.children.length}%`
    }
}
</script>

<style scoped lang="scss">
#navigation-point-content {
    height: 100%;

    display: flex;
    justify-content: center;
    align-items: center;
}

</style>
