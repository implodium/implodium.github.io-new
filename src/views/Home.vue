<template>
    <div class="home">
        <FlyingPigCounter> </FlyingPigCounter>
    </div>
</template>

<script lang="ts">
import NavigationPoint from '@/components/NavigationField.vue'
import { Component, Vue } from 'vue-property-decorator';
import DiscordStatsVertical from '@/components/DiscordStatsVertical.vue';
import FlyingPigCounter from '@/components/FlyingPigCounter.vue';

@Component({
    components: {
        NavigationPoint,
        DiscordStatsVertical,
        FlyingPigCounter,
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
    height: 92vh;
}

</style>
