<template>
    <div id="navigation-content">
        <NavigationPoint name="discord"/>
        <NavigationPoint name="2"/>
        <NavigationPoint name="3"/>
        <NavigationPoint name="4"/>
    </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import NavigationPoint from '@/components/NavigationField.vue';

@Component({
    components: {
        NavigationPoint,
    },
})
export default class Navigation extends Vue {}
</script>

<style scoped lang="scss">

#navigation-content {
    width: 100vw;
    height: 15vh;
    background-color: white;
    box-shadow: 0 10px 8px #888888;

    display: flex;
    justify-content: space-evenly;
    align-items: center;
}

</style>
