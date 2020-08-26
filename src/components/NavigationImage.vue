<template>
    <div :id="`navigation-point-${this.displayId}`" class="navigation-point">
        <img :src="url" :alt="displayName">
    </div>
</template>

<script lang="ts">

import { Component, Prop } from 'vue-property-decorator';
import NavigationField from './NavigationField.vue';

@Component
export default class NavigationImage extends NavigationField {
    @Prop({ required: true })
    private url!: string

    @Prop({ required: false, default: () => 'Image' })
    private name!: string

    protected get displayName(): string {
        return this.name;
    }

    protected get displayId(): string {
        return 'image';
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

.navigation-point {
    height: 100%;

    display: flex;
    justify-content: center;
    align-items: center;
}
</style>
