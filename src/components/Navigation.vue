<template>
    <main>
        <NavigationPoint name="1"/>
        <NavigationPoint name="2"/>
        <NavigationPoint name="3"/>
        <NavigationPoint name="4"/>
    </main>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import NavigationPoint from '@/components/NavigationPoint.vue';

@Component({
    components: {
        NavigationPoint,
    },
})
export default class Navigation extends Vue {}
</script>

<style scoped>

main {
    width: 100vw;
    height: 15vh;
    background-color: white;
    box-shadow: 0 10px 8px #888888;
}

</style>
