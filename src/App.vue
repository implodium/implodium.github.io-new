<template>
    <div id="app">
        <Navigation/>

        <router-view/>
    </div>
</template>

<style lang="scss">
</style>
<script>
import Vue from 'vue';
import { Component } from 'vue-property-decorator';
import NavigationPoint from '@/components/NavigationPoint.vue';
import Navigation from '@/components/Navigation.vue';

@Component({
    components: { Navigation, NavigationPoint },
})
export default class App extends Vue {
}
</script>
