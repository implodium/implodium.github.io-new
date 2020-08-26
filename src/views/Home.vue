<template>
    <div> Content </div>
</template>

<script lang="ts">
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue';
import NavigationPoint from '@/components/NavigationPoint.vue'
import { Component, Vue } from 'vue-property-decorator';

@Component({
    components: {
        HelloWorld,
        NavigationPoint,
    },
})
export default class Home extends Vue {
}
</script>
