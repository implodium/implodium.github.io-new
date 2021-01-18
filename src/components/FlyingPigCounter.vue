<template>
    <main style="display: flex">
        <div id="content">
            <div id="flying-pig-logo">
                <img id="flying-pig-logo-img" src="../assets/FlyingPigLogo07.svg" alt="">
            </div>
            <div id="counter">
                <div id="counter-content">
                    loading ...
                </div>
                <div id="counter-breakline"></div>
                <div id="githubrepolink-container">
                    <div id="githubrepolink"> More Info </div>
                </div>
            </div>
        </div>
        <video autoplay loop muted src="../assets/FlyingPigWallpaper.mp4"></video>
    </main>
</template>

<script>

import { Component, Vue } from 'vue-property-decorator';

@Component
export default class FlyingPigCounter extends Vue {
    mounted() {
        setInterval(() => {
            const counterBox = document.querySelector('#counter-content');
            const beginningDate = new Date(2021, 1, 21, 18, 0, 0, 0)
            const currentTimeWrong = new Date();
            const currentTime = new Date(currentTimeWrong.valueOf());
            const timediff = beginningDate - currentTime;
            const timediffObject = new Date(timediff - 3600000);

            console.log(timediff)

            if (timediff <= 2678400858) {
                counterBox.textContent = 'Project is running'
            } else {
                counterBox.textContent = `${timediffObject.getDate() - 1}d
                            ${timediffObject.getHours()}h
                            ${timediffObject.getMinutes()}m
                            ${timediffObject.getSeconds()}s`;
            }
        }, 1000)
    }
}
</script>

<style scoped>
main {
    z-index: -1;
    position: relative;

    height: 92vh;
    width: 100%;

    display: flex;
    justify-content: center;
    align-items: center;

    -webkit-background-size: cover;
    background-size: cover;
    overflow: hidden;
}

main #content {
    z-index: 0;
    position: absolute;
    width: 50vw;
    height: 50vh;

    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    overflow: visible;
}

main #content #flying-pig-logo {
    width: 20vw;
    height: 20vw;
    display: flex;
    justify-content: center;
}

main #content #flying-pig-logo #flying-pig-logo-img {
    width: 100%;
    height: 100%;
}

main #content #counter {
    width: 100%;
    height: auto;

    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;

    background-color: black;
    border-radius: 20px;
}

main #content #counter-content {
    margin: 1vw;

    color: white;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: myriad-pro, sans-serif;
    font-weight: 700;
    font-style: normal;
    font-size: 4vw;
}

main #content #counter-breakline {
    width: 80%;
    height: 1px;
    margin: 3px;
    background-color: white;
}

main #content #githubrepolink-container {
    margin: 1vw;

    color: white;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: myriad-pro, sans-serif;
    font-weight: 700;
    font-style: normal;
    font-size: 3vw;
}

main #content #githubrepolink {
    padding: 10px;

    display: flex;
    justify-content: center;
    align-items: center;

    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    cursor: pointer;

    background-color: black;
    border: 3px solid rgb(101, 218, 128);
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    border-radius: 20px;

    -webkit-transition: background-color 0.5s;
    -moz-transition: background-color 0.5s;
    -ms-transition: background-color 0.5s;
    -o-transition: background-color 0.5s;
    transition: background-color 0.5s;
}

main #content #githubrepolink:hover {
    background-color: rgb(101, 218, 128);
}

main video {
    display: flex;
    justify-content: center;
    align-items: center;

    z-index: -1;
    position: fixed;
    right: 0;
    bottom: 0;
    min-height: 100%;
    min-width: 100%;
}
</style>
