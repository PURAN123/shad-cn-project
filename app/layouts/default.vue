<template>
    <main>
        <div class="container mx-auto">
            <div class="flex justify-between w-full py-2">
                <NuxtLink to="/">Home</NuxtLink>
                <ColorMode />
            </div>
            <slot />
        </div>
    </main>
</template>
<script setup>
import ColorMode from '@/components/ColorMode.vue';
</script>