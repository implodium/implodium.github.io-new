<template>
    <div id="app">
        <NavigationPoint></NavigationPoint>

        <router-view/>
    </div>
</template>

<style lang="scss">
</style>
<script>
import Vue from 'vue';
import { Component } from 'vue-property-decorator';
import NavigationPoint from '@/components/NavigationPoint.vue';

@Component({
    components: { NavigationPoint },
})
export default class App extends Vue {
}
</script>
