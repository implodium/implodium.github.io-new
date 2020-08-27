<template>
    <div> <discord-stats-vertical></discord-stats-vertical> </div>
</template>

<script lang="ts">
import NavigationPoint from '@/components/NavigationField.vue'
import { Component, Vue } from 'vue-property-decorator';
import DiscordStatsVertical from '@/components/DiscordStatsVertical.vue';

@Component({
    components: {
        NavigationPoint,
        DiscordStatsVertical,
    },
})
export default class Home extends Vue {
}
</script>
