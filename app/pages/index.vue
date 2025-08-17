<template>
    <!-- <Hello /> -->
    <p class="text-red-500 text-3xl font-bold underline text-primary">Hello World I am a index file</p>
    <NuxtLink to="/about">About</NuxtLink>
    <Button type="button" variant="default">Click me</Button>
    <ColorMode />
    <Button type="button" variant="secondary">Click me</Button>
    <Button type="button" variant="primary"  @click="navigateTo('/new-experts')">View Experts</Button>
    <NuxtLink to="/contact">Contact</NuxtLink>
</template>

<script setup>
import { Button } from '@/components/ui/button';
import ColorMode from '@/components/ColorMode.vue';
// import Hello from '@/app/components/Hello.vue';

</script>