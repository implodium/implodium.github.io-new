<template>
    <main>
        <Navigation/>

        <router-view/>
    </main>
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

<style lang="scss">

main {
    width: 100vw;
    height: 100vh;
}

body {
    width: 100vw;
    height: 100vh;
    padding: 0;
    margin: 0;
}

</style>
