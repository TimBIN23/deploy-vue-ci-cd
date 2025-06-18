<template>
  <div>
    <nav>
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> |
      <router-link to="/contact">Contact</router-link>
    </nav>
    <router-view />
  </div>
</template>

<script setup>
</script>

<style>
body{
  padding: 0;
  margin: 0;
}
nav {
  padding: 10px;
  background-color: #f0f0f0;
}

nav a {
  /* margin-right: 10px; */
  text-decoration: none;
  color: #333;
}

nav a.router-link-exact-active {
  font-weight: bold;
}
</style>
