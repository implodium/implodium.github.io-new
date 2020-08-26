<template>
<div :id="`navigation-point-${this.displayId}`" class="navigation-point">
    {{ this.displayName }}
</div>
</template>

<script lang="ts">

import { Component, Vue } from 'vue-property-decorator';

@Component
export default class NavigationField extends Vue {
    mounted() {
        const navigationPoint = document.querySelector(
            `#navigation-point-${this.displayId}`,
        ) as HTMLElement
        console.log(navigationPoint)
        const navigation = navigationPoint.parentElement as HTMLElement

        navigationPoint.style.width = `${100 / navigation.children.length}%`
    }

    protected get displayName() {
        return 'default_name'
    }

    protected get displayId() {
        return 'default_id'
    }
}
</script>

<style scoped lang="scss">

</style>
