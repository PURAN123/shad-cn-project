<script setup>
if (process.client) {
  // If it's not really a 404 but a client-side route, let Nuxt handle it
  const path = window.location.pathname
  if (!path.includes("404.html")) {
    window.location.replace("/shad-cn-project/" + "#!" + path)
  }
}
</script>

<template>
  <div class="h-screen flex items-center justify-center">
    <h1 class="text-2xl">404 - Page Not Found</h1>
  </div>
</template>