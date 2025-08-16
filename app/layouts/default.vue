<template>
    <main>
        <div class="container mx-auto">
            <div class="flex justify-end w-full py-2">
                <ColorMode />
            </div>
            <slot />
        </div>
    </main>
</template>
<script setup>
import ColorMode from '@/components/ColorMode.vue';
</script>