<template>
  <div class="wrapper">
    <parallax class="section page-header header-filter" :style="headerStyle">
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-50 md-small-size-70 md-xsmall-size-100"
          >
            <h1 class="title">雅致六人房</h1>
            <h4>
              位於「童玩」的一樓，擁有獨立客廳，適合團體。
            </h4>
            <!-- <br />
            <md-button
              href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"
              class="md-success md-lg"
              target="_blank"
              ><i class="fas fa-play"></i> Watch video</md-button
            > -->
          </div>
        </div>
      </div>
    </parallax>
    <div class="main main-raised">
      <div class="section section-javascript">
        <div class="container">
          <div class="md-layout">
            <div class="md-layout-item md-size-500 mx-auto md-small-size-100">
              <md-card>
                <carousel
                  :per-page="1"
                  loop
                  :speed="700"
                  autoplay
                  :autoplay-timeout="5000"
                  :mouse-drag="false"
                  navigationEnabled
                  navigationNextLabel="<i class='material-icons'>keyboard_arrow_right</i>"
                  navigationPrevLabel="<i class='material-icons'>keyboard_arrow_left</i>"
                >
                  <slide>
                    <img :src="carousel1" alt="carousel1" />
                  </slide>
                  <slide>
                    <img :src="carousel2" alt="carousel2" />
                  </slide>
                  <slide>
                    <img :src="carousel3" alt="carousel3" />
                  </slide>
                </carousel>
              </md-card>
              <ul>
                <li>平日（星期日-四）3600</li>
                <li>假日（星期五六、假日)4200</li>
                <li>定價（春節）6400</li>
              </ul>

              <ul>
                <li>盥洗用品 / 吹風機</li>
                <li>電熱水瓶 / 茶包 / 咖啡包</li>
              </ul>
            </div>
          </div>
          <!-- <div class="md-layout">
            <div class="section section-download" id="downloadSection2">
              <div class="container">
                <div class="md-layout text-center">
                  <div
                    class="md-layout-item md-size-66 md-small-size-100 mx-auto"
                  >
                    <ul style="text-align:left;width:400px;font-weight:bold">
                      <li>平日（星期日-四）3600</li>
                      <li>假日（星期五六、假日)4200</li>
                      <li>定價（春節）6400</li>
                    </ul>
                  </div>
                  <div
                    class="md-layout-item md-size-66 md-small-size-100 mx-auto"
                  >
                    <ul
                      style="list-style-type:none;text-align:left;width:400px;font-weight:bold"
                    >
                      <li>盥洗用品 / 吹風機</li>
                      <li>電熱水瓶 / 茶包 / 咖啡包</li>
                    </ul>
                  </div>
                </div>
                <br /><br />
              </div>
            </div>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  bodyClass: "landing-page",
  props: {
    header: {
      type: String,
      default: require("@/assets/img/bg7.jpg")
    }
  },
  data() {
    return {
      name: null,
      email: null,
      message: null,
      classicModal: false,
      selectedDate: new Date("2018/03/26"),
      carousel1: require("@/assets/img/room3-1.jpg"),
      carousel2: require("@/assets/img/room3-2.jpg"),
      carousel3: require("@/assets/img/room3-3.jpg")
    };
  },
  computed: {
    headerStyle() {
      return {
        backgroundImage: `url(${this.header})`
      };
    }
  }
};
</script>

<style lang="scss" scoped>
.md-card-actions.text-center {
  display: flex;
  justify-content: center !important;
}
.contact-form {
  margin-top: 30px;
}

.md-has-textarea + .md-layout {
  margin-top: 15px;
}
</style>
