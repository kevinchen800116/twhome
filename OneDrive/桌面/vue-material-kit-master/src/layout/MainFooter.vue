<template>
  <footer
    class="footer"
    :class="{ [`footer-${type}`]: type }"
    :data-background-color="backgroundColor"
  >
    <div class="container">
      <nav>
        <ul>
          <!-- <li style="font-weight:bolder;padding-right:10px"> -->
          <li class="copyright">
            專線 | TEL 0938789858
          </li>
          <!-- <li style="font-weight:bolder;padding-right:10px"> -->
          <li class="copyright">
            地址 | 宜蘭縣五結鄉親河路二段103巷1弄15號
          </li>
          <!-- <li style="font-weight:bolder;padding-right:10px"> -->
          <li class="copyright">
            LINE | 0938789858
          </li>
        </ul>
      </nav>
      <md-list-item
        href="https://www.facebook.com/yilangtwhome"
        target="_blank"
      >
        <i class="fab fa-facebook-square"></i>
        <p class="hidden-lg">Facebook</p>
        <md-tooltip md-direction="bottom">Like us on Facebook</md-tooltip>
      </md-list-item>
      <!-- <div class="copyright">
        &copy; {{ year }}, made with <md-icon>favorite</md-icon> by Twhome for a
        better web.
      </div> -->
    </div>
  </footer>
</template>
<script>
export default {
  props: {
    backgroundColor: String,
    type: String
  },
  data() {
    return {
      year: new Date().getFullYear()
    };
  }
};
</script>
<style></style>
