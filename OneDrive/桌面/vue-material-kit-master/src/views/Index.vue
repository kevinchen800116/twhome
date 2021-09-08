<template>
  <div class="wrapper">
    <parallax class="page-header header-filter" :style="headerStyle">
      <div class="md-layout">
        <div class="md-layout-item">
          <div class="image-wrapper">
            <img :src="leaf4" alt="leaf4" class="leaf4" v-show="leafShow" />
            <img :src="leaf3" alt="leaf3" class="leaf3" v-show="leafShow" />
            <img :src="leaf2" alt="leaf2" class="leaf2" v-show="leafShow" />
            <img :src="leaf1" alt="leaf1" class="leaf1" v-show="leafShow" />
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
      <div class="section">
        <div class="container text-center">
          <div class="md-layout">
            <div
              class="md-layout-item md-size-66 md-xsmall-size-100 ml-auto mr-auto text-center"
            >
              <h2>最新消息</h2>
              <h4>可代訂烤肉食材、賞鯨套票，費用另計。</h4>
              <h5>簡介</h5>
              <p>
                童玩民宿位於五結交流道附近，鄰近轉運站、羅東火車站，交通十分便利，
                距離羅東夜市、傳統藝術中心、冬山河親水公園等知名景點只需幾分鐘路程，
                民宿鄰近還有24小時便利商店，提供最佳生活機能。
                快來宜蘭享受專屬於你，一趟追尋幸福的假期。
              </p>
            </div>
          </div>
        </div>
      </div>
      <!-- <div class="section section-download" id="downloadSection">
        <div class="container">
          <div class="md-layout text-center">
            <div>
              <img
                src="@/assets/img/nature-2.jpg"
                alt="雙人房"
                class="img-thumbnail"
              />
            </div>
            <div class="md-layout-item md-size-66 md-small-size-100 mx-auto">
              <h2>雙人房</h2>
              <ul>
                <li>平日（星期日-四）1800</li>
                <li>假日（星期五六、假日)2400</li>
                <li>定價（春節）3200</li>
              </ul>
            </div>
          </div>
          <br /><br />
        </div>
      </div> -->
      <!-- <div class="section section-download" id="downloadSection1">
        <div class="container">
          <div class="md-layout text-center">
            <div>
              <img
                src="@/assets/img/nature-4.jpg"
                alt="四人房"
                class="img-thumbnail"
              />
            </div>
            <div class="md-layout-item md-size-66 md-small-size-100 mx-auto">
              <h2>四人房</h2>
              <ul>
                <li>平日（星期日-四）2800</li>
                <li>假日（星期五六、假日)3400</li>
                <li>定價（春節）4800</li>
              </ul>
            </div>
          </div>
          <br /><br />
        </div>
      </div> -->
      <!-- <div class="section section-download" id="downloadSection2">
        <div class="container">
          <div class="md-layout text-center">
            <div>
              <img
                src="@/assets/img/nature-5.jpg"
                alt="四人房"
                class="img-thumbnail"
              />
            </div>
            <div class="md-layout-item md-size-66 md-small-size-100 mx-auto">
              <h2>六人房</h2>
              <ul>
                <li>平日（星期日-四）3600</li>
                <li>假日（星期五六、假日)4200</li>
                <li>定價（春節）6400</li>
              </ul>
            </div>
          </div>
          <br /><br />
        </div>
      </div> -->
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
// import { LoginCard } from "@/components";

export default {
  components: {
    // BasicElements,
    // SmallNavigation,
    // Tabs,
    // NavPills,
    // Notifications,
    // TypographyImages,
    JavascriptComponents
    // LoginCard
  },
  name: "index",
  bodyClass: "index-page",
  props: {
    image: {
      type: String,
      default: require("@/assets/img/vue-mk-header.jpg")
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
      leafShow: false
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
