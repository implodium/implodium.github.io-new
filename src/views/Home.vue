<template>
    <div> Content </div>
</template>

<script lang="ts">
import NavigationPoint from '@/components/NavigationPoint.vue'
import { Component, Vue } from 'vue-property-decorator';

@Component({
    components: {
        NavigationPoint,
    },
})
export default class Home extends Vue {
}
</script>
