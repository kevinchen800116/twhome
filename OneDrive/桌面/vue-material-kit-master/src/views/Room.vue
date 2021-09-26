<template>
  <div class="wrapper">
    <parallax class="section page-header header-filter" :style="headerStyle">
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-50 md-small-size-70 md-xsmall-size-100"
          >
            <h1 class="title">經典雙人房</h1>
            <h4>
              位於「童玩」的二樓，擁有優雅睡眠空間的雙人房型。
            </h4>
          </div>
        </div>
      </div>
    </parallax>
    <div class="main main-raised">
      <div class="section">
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
                  <slide>
                    <img :src="carousel4" alt="carousel4" />
                  </slide>
                </carousel>
              </md-card>
              <ul>
                <li>平日（星期日-四）1800</li>
                <li>假日（星期五六、假日)2200</li>
                <li>定價（春節）3200</li>
              </ul>
              <ul>
                <li>盥洗用品 / 吹風機</li>
                <li>電熱水瓶 / 茶包 / 咖啡包</li>
              </ul>
            </div>
          </div>
          <!-- <div class="md-layout">
            <div class="section section-download" id="downloadSection">
              <div class="container">
                <div class="md-layout text-center">
                  <div
                    class="md-layout-item md-size-66 md-small-size-100 mx-auto"
                  >
                    <ul>
                      <li>平日（星期日-四）1800</li>
                      <li>假日（星期五六、假日)2200</li>
                      <li>定價（春節）3200</li>
                    </ul>
                  </div>
                  <div
                    class="md-layout-item md-size-66 md-small-size-100 mx-auto"
                  ></div>
                </div>
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
      default: require("@/assets/img/room1-5.jpg")
    },
    teamImg1: {
      type: String,
      default: require("@/assets/img/faces/avatar.jpg")
    },
    teamImg2: {
      type: String,
      default: require("@/assets/img/faces/christian.jpg")
    },
    teamImg3: {
      type: String,
      default: require("@/assets/img/faces/kendall.jpg")
    }
  },
  data() {
    return {
      name: null,
      email: null,
      message: null,
      classicModal: false,
      selectedDate: new Date("2018/03/26"),
      carousel1: require("@/assets/img/room1-1.jpg"),
      carousel2: require("@/assets/img/room1-2.jpg"),
      carousel3: require("@/assets/img/room1-3.jpg"),
      carousel4: require("@/assets/img/room1-4.jpg")
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
