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
      <div class="md-collapse">
        <div class="md-collapse-wrapper">
          <mobile-menu nav-mobile-section-start="false">
            <!-- Here you can add your items from the section-start of your toolbar -->
          </mobile-menu>
          <md-list>
            <md-list-item>
              <i class="material-icons">layers</i>
              <p>測試</p>
            </md-list-item>
          </md-list>
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
