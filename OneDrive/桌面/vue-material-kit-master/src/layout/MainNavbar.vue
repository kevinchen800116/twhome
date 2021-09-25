<template>
  <md-toolbar
    id="toolbar"
    md-elevation="0"
    class="md-transparent md-absolute"
    :class="extraNavClasses"
    :color-on-scroll="colorOnScroll"
  >
    <div class="md-toolbar-row md-collapse-lateral">
      <!-- class="md-transparent md-absolute" -->
      <div style="width: 100px;height: 100px;border-radius: 50%;">
        <img
          :src="img"
          alt="Circle Image"
          class="img-raised rounded-circle img-fluid"
        />
      </div>
      <!-- <div class="md-toolbar-section-start">
        <h3 class="md-title">童玩民宿</h3>
      </div> -->
      <div class="md-toolbar-section-end">
        <md-button
          class="md-just-icon md-simple md-toolbar-toggle"
          :class="{ toggled: toggledClass }"
          @click="toggleNavbarMobile()"
        >
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </md-button>

        <div class="md-collapse">
          <div class="md-collapse-wrapper">
            <mobile-menu nav-mobile-section-start="false">
              <!-- Here you can add your items from the section-start of your toolbar -->
            </mobile-menu>
            <md-list>
              <md-list-item>
                <a href="#/">
                  <i class="material-icons">layers</i>
                  <p>關於我們</p>
                </a>
              </md-list-item>

              <md-list-item>
                <a href="#/profile">
                  <i class="material-icons">content_paste</i>
                  <p>訂房須知</p>
                </a>
              </md-list-item>
              <md-list-item
                href="javascript:void(0)"
                @click="scrollToElement()"
              >
                <a href="#/room">
                  <i class="material-icons">bed</i>
                  <p>{{ roomTwo }}</p>
                </a>
              </md-list-item>

              <md-list-item
                href="javascript:void(0)"
                @click="scrollToElement1()"
              >
                <!-- 打開 -->
                <!-- v-if="showDownload" -->
                <!-- 關閉 -->
                <!-- v-if="!showDownload" -->
                <a href="#/room1">
                  <i class="material-icons">home</i>
                  <p>{{ roomFour }}</p>
                </a>
              </md-list-item>

              <md-list-item
                href="javascript:void(0)"
                @click="scrollToElement2()"
              >
                <a href="#/room2">
                  <i class="material-icons">holiday_village</i>
                  <p>{{ roomSix }}</p>
                </a>
              </md-list-item>

              <md-list-item
                href="javascript:void(0)"
                @click="scrollToElement2()"
              >
                <a href="#/landing">
                  <i class="material-icons">view_day</i>
                  <p>客房服務項目</p>
                </a>
              </md-list-item>
              <md-list-item href="javascript:void(0)">
                <a href="#/Travel">
                  <i class="material-icons">landscape</i>
                  <p>鄰近景點</p>
                </a>
              </md-list-item>
              <md-list-item
                href="https://www.facebook.com/yilangtwhome"
                target="_blank"
              >
                <i class="fab fa-facebook-square"></i>
                <p class="hidden-lg">Facebook</p>
                <md-tooltip md-direction="bottom"
                  >Like us on Facebook</md-tooltip
                >
              </md-list-item>
            </md-list>
          </div>
        </div>
      </div>
    </div>
  </md-toolbar>
</template>

<script>
let resizeTimeout;
function resizeThrottler(actualResizeHandler) {
  // ignore resize events as long as an actualResizeHandler execution is in the queue
  if (!resizeTimeout) {
    resizeTimeout = setTimeout(() => {
      resizeTimeout = null;
      actualResizeHandler();

      // The actualResizeHandler will execute at a rate of 15fps
    }, 66);
  }
}

// import Navigation from "./components/NavigationSection";
import MobileMenu from "@/layout/MobileMenu";
export default {
  components: {
    // Navigation,
    MobileMenu
  },
  props: {
    img: {
      type: String,
      default: require("@/assets/img/faces/christian.jpg")
    },
    type: {
      type: String,
      default: "white",
      validator(value) {
        return [
          "white",
          "default",
          "primary",
          "danger",
          "success",
          "warning",
          "info"
        ].includes(value);
      }
    },
    colorOnScroll: {
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      roomTwo: "經典雙人房",
      roomFour: "親子四人房",
      roomSix: "雅緻六人房",
      extraNavClasses: "",
      toggledClass: false
    };
  },
  computed: {
    showDownload() {
      const excludedRoutes = [
        "room",
        "room1",
        "room2",
        "login",
        "landing",
        "profile"
      ];
      return excludedRoutes.every(r => r !== this.$route.name);
    }
  },
  methods: {
    bodyClick() {
      // console.log("MainNavbar打開關閉的方法");
      let bodyClick = document.getElementById("bodyClick");

      if (bodyClick === null) {
        let body = document.querySelector("body");
        let elem = document.createElement("div");
        elem.setAttribute("id", "bodyClick");
        body.appendChild(elem);

        let bodyClick = document.getElementById("bodyClick");
        bodyClick.addEventListener("click", this.toggleNavbarMobile);
      } else {
        bodyClick.remove();
      }
    },
    // 產出手機板menu的方法
    toggleNavbarMobile() {
      this.NavbarStore.showNavbar = !this.NavbarStore.showNavbar;
      this.toggledClass = !this.toggledClass;
      this.bodyClick();
    },
    handleScroll() {
      let scrollValue =
        document.body.scrollTop || document.documentElement.scrollTop;
      let navbarColor = document.getElementById("toolbar");
      this.currentScrollValue = scrollValue;
      if (this.colorOnScroll > 0 && scrollValue > this.colorOnScroll) {
        this.extraNavClasses = `md-${this.type}`;
        navbarColor.classList.remove("md-transparent");
      } else {
        if (this.extraNavClasses) {
          this.extraNavClasses = "";
          navbarColor.classList.add("md-transparent");
        }
      }
    },
    scrollListener() {
      resizeThrottler(this.handleScroll);
    },
    scrollToElement() {
      // this.$router.push("/room");
      let element_id = document.getElementById("downloadSection");
      // console.log("元素ID", element_id);
      if (element_id) {
        element_id.scrollIntoView({ block: "end", behavior: "smooth" });
      }
    },
    scrollToElement1() {
      // this.$router.push("/room1");
      let element_id1 = document.getElementById("downloadSection1");
      if (element_id1) {
        element_id1.scrollIntoView({ block: "end", behavior: "smooth" });
      }
    },
    scrollToElement2() {
      // this.$router.push("/room2");
      let element_id1 = document.getElementById("downloadSection2");
      if (element_id1) {
        element_id1.scrollIntoView({ block: "end", behavior: "smooth" });
      }
    }
  },
  mounted() {
    document.addEventListener("scroll", this.scrollListener);
  },
  beforeDestroy() {
    document.removeEventListener("scroll", this.scrollListener);
  }
};
</script>
