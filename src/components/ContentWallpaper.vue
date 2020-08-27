<template>
    <div class="content-wallpaper"></div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class ContentWallpaper extends Vue {
    private static count = 0
    private static wallpaperUrl = '/images/implo_wallpaper.png'
    public static readonly componentName = 'content-wallpaper'
    private readonly id = ContentWallpaper.count

    created() { ContentWallpaper.count += 1 }

    get elementId() {
        return `${ContentWallpaper.componentName}-${this.id}`
    }
}
</script>

<style scoped lang="scss">

</style>
