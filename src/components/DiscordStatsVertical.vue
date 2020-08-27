<template>
    <div :id="`discord-stats-vertical-${this.id}`"
         class="discord-stats-vertical"
         :style="{width: width, height: height}">
        <div class="offline-display tracking-display">
            <div class="status-circle"></div>
            <div class="tracking-number">00</div>
        </div>
        <div class="online-display tracking-display">
            <div class="status-circle"></div>
            <div class="tracking-number">00</div>
        </div>
        <div class="member-display tracking-display">
            <img src="/images/users-solid.svg" alt="users-icon">
            <div class="tracking-number">00</div>
        </div>
    </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from 'vue-property-decorator';
import * as firebase from 'firebase';

@Component
export default class DiscordStatsVertical extends Vue {
    private static count = 0
    public static readonly componentName = 'discord-stats-vertical'

    @Prop({ required: false, default: () => '70vh' })
    private height!: string

    @Prop({ required: false, default: () => '12vw' })
    private width!: string

    public readonly id = DiscordStatsVertical.count

    public get elementId() {
        return `#${DiscordStatsVertical.componentName}-${this.id}`
    }

    mounted() {
        const membersOnlineDisplay = document.querySelector(`${this.elementId} .online-display .tracking-number`) as HTMLElement
        const membersOfflineDisplay = document.querySelector(`${this.elementId} .offline-display .tracking-number`) as HTMLElement
        const membersDisplay = document.querySelector(`${this.elementId} .member-display .tracking-number`) as HTMLElement

        const firebaseConfig = {
            apiKey: 'AIzaSyDBNz9ziXI3J1_S6ZcM8efmLuhj2jvHD9c',
            authDomain: 'discord-stat-tracker.firebaseapp.com',
            databaseURL: 'https://discord-stat-tracker.firebaseio.com',
            projectId: 'discord-stat-tracker',
            storageBucket: 'discord-stat-tracker.appspot.com',
            messagingSenderId: '734118203066',
            appId: '1:734118203066:web:5e7f44296c2e1338ea7c83',
        };

        firebase.initializeApp(firebaseConfig);
        const database = firebase.database();

        const stats = database.ref('/guilds/388433193638035457');

        stats.on('value', snapshot => {
            const data = snapshot.val();

            membersDisplay.textContent = data.memberCount;
            membersOfflineDisplay.textContent = data.offlineCount;
            membersOnlineDisplay.textContent = data.onlineCount;
        })
    }

    created() {
        DiscordStatsVertical.count += 1
    }
}
</script>

<style scoped lang="scss">

@import url('https://fonts.googleapis.com/css?family=Oswald');

.tracking-display {
    width: 100%;
    height: 33.3%;

    display: flex;
    justify-content: space-between;
    align-items: center;

    img, .status-circle {
        height: 10vh;
        width: 10vh;
    }

    .status-circle {
        border-radius: 100%;
    }

    .tracking-number {
        font-size: 10vh;
        font-family: 'Oswald', sans-serif;
    }
}

.offline-display .status-circle {
    background-color: red;
}

.online-display .status-circle {
    background-color: green;
}
</style>
