<template>
<div :id="`navigation-point-${this.displayId}`" class="navigation-field">
    {{ this.displayName }}
</div>
</template>

<script lang="ts">

import { Component, Vue } from 'vue-property-decorator';

@Component
export default class NavigationField extends Vue {
    protected width = '';

    mounted() {
        const navigationPoint = document.querySelector(
            `#navigation-point-${this.displayId}`,
        ) as HTMLElement
        console.log(navigationPoint)
        const navigation = navigationPoint.parentElement as HTMLElement

        this.width = `${100 / navigation.children.length}%`
        navigationPoint.style.width = this.width
    }

    protected get displayName() {
        return 'default_name'
    }

    protected get displayId() {
        return 'default_id'
    }
}
</script>

<style lang="scss">
.navigation-field {
    height: 100%;

    display: flex;
    justify-content: center;
    align-items: center;

    cursor: pointer;
}
</style>
