<template>
    <div :id="`${elementId}`" class="content-wallpaper" :style="background">
        Implodium
    </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class ContentWallpaper extends Vue {
    private static count = 0
    private static wallpaperUrl = '/images/implo_wallpaper.png'
    public static readonly componentName = 'content-wallpaper'
    public readonly id = ContentWallpaper.count

    created() { ContentWallpaper.count += 1 }

    private get elementId() {
        return `${ContentWallpaper.componentName}-${this.id}`
    }

    public get background() {
        return {
            'background-image': `url(${ContentWallpaper.wallpaperUrl})`,
        }
    }
}
</script>

<style scoped lang="scss">

.content-wallpaper {
    width: 100%;
    height: 70vh;

    display: flex;
    justify-content: center;
    align-items: center;

    font-size: 20vh;
    font-family: 'Oswald', sans-serif;
    color: white;
}

</style>
