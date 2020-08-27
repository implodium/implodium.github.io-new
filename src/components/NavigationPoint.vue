<template>
    <div :id="`navigation-point-${this.displayId}`"
         class="navigation-field navigation-point"
         @mouseover="hoverOn"
         @mouseout="hoverOff">
        <span> {{ this.displayName }} </span>
        <div class="animation-box"></div>
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

    mounted() {
        const animationBox = document.querySelector(
            `#navigation-point-${this.displayId} .animation-box`,
        ) as HTMLElement

        animationBox.style.width = this.width
    }

    private hoverOn() {
        const animationBox = document.querySelector(
            `#navigation-point-${this.displayId} .animation-box`,
        ) as HTMLElement

        animationBox.style.height = '1vh'
    }

    private hoverOff() {
        const animationBox = document.querySelector(
            `#navigation-point-${this.displayId} .animation-box`,
        ) as HTMLElement

        animationBox.style.height = '0'
    }
}
</script>

<style scoped lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Oswald:wght@200&display=swap');

.navigation-point {

    span {
        font-family: 'Oswald', sans-serif;
        font-size: 3vh;
    }

    .animation-box {
        position: absolute;
        align-self: flex-end;
        height: 0;
        background-color: #EE4950;
        transition: height 0.5s;
    }
}

</style>
