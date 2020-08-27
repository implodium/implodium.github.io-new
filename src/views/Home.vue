<template>
    <div class="home">
        <content-wallpaper/>
    </div>
</template>

<script lang="ts">
import NavigationPoint from '@/components/NavigationField.vue'
import { Component, Vue } from 'vue-property-decorator';
import DiscordStatsVertical from '@/components/DiscordStatsVertical.vue';
import ContentWallpaper from '@/components/ContentWallpaper.vue';

@Component({
    components: {
        NavigationPoint,
        DiscordStatsVertical,
        ContentWallpaper,
    },
})
export default class Home extends Vue {
}
</script>

<style scoped lang="scss">

.home {
    display: flex;
    justify-content: center;
    align-items: center;

    width: 100%;
}

</style>
