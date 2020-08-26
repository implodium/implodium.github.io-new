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
import NavigationPoint from '@/components/NavigationField.vue';
import Navigation from '@/components/Navigation.vue';

@Component({
    components: { Navigation, NavigationPoint },
})
export default class App extends Vue {
}
</script>

<style lang="scss">
body {
    width: 100vw;
    height: 100vh;
    padding: 0;
    margin: 0;
}

#app {
    width: 100vw;
    height: 100vh;
    padding: 0;
    margin: 0;
}

</style>
