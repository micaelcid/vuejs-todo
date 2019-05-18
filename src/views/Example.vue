<template>
    <div>
      <!-- <Data /> -->
      <!-- <Props :message="message" /> -->
      <!-- <Methods /> -->
      <Computed />
    </div>
</template>

<script>
// import Data from '@/components/Example/data.vue';
// import Props from '@/components/Example/props.vue';
// import Methods from '@/components/Example/methods.vue';
import Computed from '@/components/Example/computed.vue';

export default {
  components: {
    // Data,
    // Props,
    // Methods,
    Computed,
  },
  data() {
    return {
      message: 'Vem tranquilo',
    };
  },
};
</script>

<style>

</style>
