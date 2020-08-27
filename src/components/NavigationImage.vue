<template>
    <div :id="`navigation-point-${this.displayId}`"
         class="navigation-field navigation-image">
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

.navigation-image {

    img {
        margin-top: 5vw;
        width: 40%;
        box-shadow: 0 10px 8px #888888;
        border-radius: 100%;
    }
}

</style>
