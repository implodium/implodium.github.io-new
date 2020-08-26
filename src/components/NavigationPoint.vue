<template>
    <div :id="`navigation-point-${this.displayId}`" class="navigation-field">
        {{ this.displayName }}
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
#navigation-point-content {
    height: 100%;

    display: flex;
    justify-content: center;
    align-items: center;
}

</style>
