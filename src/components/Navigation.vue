<template>
    <div id="navigation-content">
        <NavigationPoint name="Software"/>
        <NavigationPoint name="Gaming"/>
        <NavigationImage name="logo" url="/images/ImplodiumLogo.png"/>
        <NavigationPoint name="About"/>
        <NavigationPoint name="Discord"/>
    </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import NavigationPoint from '@/components/NavigationPoint.vue';
import NavigationImage from '@/components/NavigationImage.vue';

@Component({
    components: {
        NavigationImage,
        NavigationPoint,
    },
})
export default class Navigation extends Vue {}
</script>

<style scoped lang="scss">

#navigation-content {
    width: 100vw;
    height: 8vh;
    background-color: white;
    box-shadow: 0 10px 8px #888888;

    display: flex;
    justify-content: space-evenly;
    align-items: center;
}

</style>
