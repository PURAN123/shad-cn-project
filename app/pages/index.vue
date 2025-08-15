<template>
    <!-- <Hello /> -->
    <p class="text-red-500 text-3xl font-bold underline text-primary">Hello World I am a index file</p>
    <a href="/about">About</a>
    <Button type="button" variant="default">Click me</Button>
    <ColorMode />
    <Button type="button" variant="secondary">Click me</Button>
</template>

<script setup>
import { Button } from '@/components/ui/button';
import ColorMode from '@/components/ColorMode.vue';
// import Hello from '@/app/components/Hello.vue';

</script>