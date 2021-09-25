<template>
  <div class="wrapper">
    <parallax class="page-header header-filter" :style="headerStyle">
      <div class="md-layout">
        <div class="md-layout-item">
          <div class="image-wrapper">
            <!-- <img :src="leaf4" alt="leaf4" class="leaf4" v-show="leafShow" />
            <img :src="leaf3" alt="leaf3" class="leaf3" v-show="leafShow" />
            <img :src="leaf2" alt="leaf2" class="leaf2" v-show="leafShow" />
            <img :src="leaf1" alt="leaf1" class="leaf1" v-show="leafShow" /> -->
            <div class="brand">
              <h1>童玩民宿</h1>
              <h3>歡迎您一起開啟秘境之旅!</h3>
            </div>
          </div>
        </div>
      </div>
    </parallax>
    <div class="main main-raised">
      <div class="section section-javascript">
        <div class="container">
          <javascript-components></javascript-components>
        </div>
      </div>
      <div class="section" style="margin:0px 70px; padding:0px;">
        <div class="container text-center">
          <div class="md-layout">
            <div
              class="md-layout-item md-size-66 md-xsmall-size-100 ml-auto mr-auto text-center"
            >
              <h1 class="title">
                <span class="tim-note text-primary">民宿簡介</span>
              </h1>
              <p class="text-primary">
                童玩民宿位於五結交流道附近，鄰近轉運站、羅東火車站，交通十分便利，
                距離羅東夜市、傳統藝術中心、冬山河親水公園等知名景點只需幾分鐘路程，
                民宿鄰近還有24小時便利商店，提供最佳生活機能。
                快來宜蘭享受專屬於你，一趟追尋幸福的假期。
              </p>
              <hr />
              <h2 class="title">
                <span class="tim-note text-info">最新消息</span>
              </h2>
              <h4 class="title">
                <span class="tim-note text-info">2020安心旅遊補助：</span>
              </h4>
              <!-- <h2></h2> -->
              <p class="text-info">
                安心旅遊/健康住宿 入住觀光局百大好客民宿
                可申請→安心旅遊補助：不分平假日（7/1～10/31），每房折扣1000元。
                可使用→實體振興三倍券：折扣後，房款餘額全可使用。
              </p>
              <h4 class="title">
                <span class="tim-note text-info">代訂服務：</span>
              </h4>
              <p class="text-info">可幫忙代訂烤肉食材、賞鯨套票，費用另計。</p>
              <p class="text-info">
                若想<badge type="rose">登陸龜山島</badge>者，請先行至
                <badge type="rose"
                  >交通部觀光局東北角暨宜蘭海岸國家風景區管理處</badge
                >
              </p>
              <p class="text-info">
                申請<badge type="rose">龜山島登島登記 </badge
                >後，再行訂購船票，可至官方連結自行聯絡業者。
              </p>
              <md-button
                class="md-rose md-round"
                target="_blank"
                href="https://events.necoast-nsa.gov.tw/Coast/Application.aspx?a=2659"
                ><i class="fas fa-hand-point-up"></i>登島線上申請</md-button
              >
              <md-button
                class="md-info md-round"
                target="_blank"
                href="https://events.necoast-nsa.gov.tw/Coast/Articles.aspx?a=2662"
                ><i class="fa fa fa-ship"></i>船舶資訊</md-button
              >
              <md-button
                href="https://events.necoast-nsa.gov.tw/Coast/Articles.aspx?a=2655"
                class="md-success md-round"
                target="_blank"
                ><i class="fas fa-play"></i>登島須知影片
              </md-button>
              <hr />
              <h2 class="title">
                <i class="material-icons text-primary">landscape</i>
                <router-link to="/Travel"
                  ><span class="tim-note text-primary"
                    >鄰近景點</span
                  ></router-link
                >
                <!-- <router-link to="/Travel">Go to Foo</router-link> -->
              </h2>
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
                  <slide>
                    <img :src="carousel5" alt="carousel5" />
                  </slide>
                </carousel>
              </md-card>
              <!-- <hr /> -->
            </div>
          </div>
        </div>
      </div>
      <!-- <basic-elements></basic-elements> -->
    </div>
  </div>
</template>

<script>
// import BasicElements from "./components/BasicElementsSection";
// import Navigation from "./components/NavigationSection";
// import SmallNavigation from "./components/SmallNavigationSection";
// import Tabs from "./components/TabsSection";
// import NavPills from "./components/NavPillsSection";
// import Notifications from "./components/NotificationsSection";
// import TypographyImages from "./components/TypographyImagesSection";
import JavascriptComponents from "./components/JavascriptComponentsSection";
import { Badge } from "@/components";
// import { LoginCard } from "@/components";

export default {
  components: {
    // BasicElements,
    // SmallNavigation,
    // Navigation,
    // Tabs,
    // NavPills,
    // Notifications,
    // TypographyImages,
    Badge,
    JavascriptComponents
    // LoginCard
  },
  name: "index",
  bodyClass: "index-page",
  props: {
    image: {
      type: String,
      default: require("@/assets/img/vue-mk-header.jpg")
      // default: require("@/assets/img/nature-10.jpg")
      // default: require("@/assets/img/nature.jpg")
    },
    leaf4: {
      type: String,
      default: require("@/assets/img/leaf4.png")
    },
    leaf3: {
      type: String,
      default: require("@/assets/img/leaf3.png")
    },
    leaf2: {
      type: String,
      default: require("@/assets/img/leaf2.png")
    },
    leaf1: {
      type: String,
      default: require("@/assets/img/leaf1.png")
    },
    signup: {
      type: String,
      default: require("@/assets/img/city.jpg")
    },
    landing: {
      type: String,
      default: require("@/assets/img/landing.jpg")
    },
    profile: {
      type: String,
      default: require("@/assets/img/profile.jpg")
    }
  },
  data() {
    return {
      firstname: null,
      email: null,
      password: null,
      leafShow: false,
      carousel1: require("@/assets/img/tranditional.jpg"),
      carousel2: require("@/assets/img/spring2.jpg"),
      carousel3: require("@/assets/img/turtle.jpg"),
      carousel4: require("@/assets/img/spring.jpg"),
      carousel5: require("@/assets/img/night.jpg")
    };
  },
  methods: {
    leafActive() {
      if (window.innerWidth < 768) {
        this.leafShow = false;
      } else {
        this.leafShow = true;
      }
    }
  },
  computed: {
    headerStyle() {
      return {
        backgroundImage: `url(${this.image})`
      };
    },
    signupImage() {
      return {
        backgroundImage: `url(${this.signup})`
      };
    }
  },
  mounted() {
    this.leafActive();
    window.addEventListener("resize", this.leafActive);
  },
  beforeDestroy() {
    window.removeEventListener("resize", this.leafActive);
  }
};
</script>
<style lang="scss">
.section-download {
  .md-button + .md-button {
    margin-left: 5px;
  }
}

@media all and (min-width: 991px) {
  .btn-container {
    display: flex;
  }
}
</style>
