<template>
    <div :id="`${elementId}`" class="content-wallpaper" :style="background"></div>
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
}

</style>
