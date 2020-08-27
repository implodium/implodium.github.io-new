<template>
    <div :id="`navigation-point-${this.displayId}`" class="navigation-field navigation-point">
        <div> {{ this.displayName }} </div>
    </div>
</template>

<script lang="ts">

import { Component, Prop } from 'vue-property-decorator';
import NavigationField from './NavigationField.vue';

@Component
export default class NavigationPoint extends NavigationField {
    @Prop({ required: true, default: () => 'Menu Point' })
    protected name!: string

    protected get displayName(): string {
        return this.name;
    }

    protected get displayId(): string {
        return this.name.toLowerCase();
    }
}
</script>

<style scoped lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Oswald:wght@200&display=swap');

.navigation-point div {
    font-family: 'Oswald', sans-serif;
    font-size: 3vh;
}

</style>
