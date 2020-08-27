<template>
    <div id="app">
        <header><Navigation/></header>

        <div class="content"><router-view/></div>

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

.content {
    height: 92vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: row;
}

</style>
