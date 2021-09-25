<template>
  <div class="wrapper">
    <parallax
      class="section page-header header-filter"
      :style="headerStyle"
    ></parallax>
    <div class="main main-raised">
      <div class="section profile-content">
        <div class="section text-center">
          <div class="container">
            <h2 class="title">鄰近景點</h2>
            <div class="team">
              <div class="md-layout">
                <div class="md-layout-item md-medium-size-33 md-small-size-100">
                  <div class="team-player">
                    <md-card class="md-card-plain">
                      <div class="md-layout-item md-size-50 mx-auto">
                        <img
                          :src="teamImg1"
                          alt="Thumbnail Image"
                          class="img-raised rounded-circle img-fluid"
                        />
                      </div>
                      <h4 class="card-title">
                        冬山河親水公園
                        <br />
                        <small class="card-description text-muted">簡介</small>
                      </h4>

                      <md-card-content>
                        <p class="card-description">
                          在冬山河親水公園從超大型的龍舟競賽、西式划船，到家庭親子的休閒知性之旅，都令你流連忘返．暢意而歸
                          。自1996年起的每年暑假於親水公園舉辦的『宜蘭國際童玩藝術節』，有來自各國的表演團體演出，還有大型的水上活動，千萬別錯過哦！.
                        </p>
                      </md-card-content>
                      <md-button
                        href="https://www.necoast-nsa.gov.tw/Attraction-Content.aspx?a=296&l=1"
                        class="md-success md-round"
                        target="_blank"
                      >
                        <i class="fa fa-thumbs-up"></i>連結
                      </md-button>
                      <!-- <md-card-actions class="text-center">
                        <md-button
                          href="https://www.necoast-nsa.gov.tw/Attraction-Content.aspx?a=296&l=1"
                          class="md-success md-round"
                        >
                          <i class="fa fa-thumbs-up"></i>
                        </md-button>
                      </md-card-actions> -->
                    </md-card>
                  </div>
                </div>
                <div class="md-layout-item md-medium-size-33 md-small-size-100">
                  <div class="team-player">
                    <md-card class="md-card-plain">
                      <div class="md-layout-item md-size-50 mx-auto">
                        <img
                          :src="teamImg2"
                          alt="Thumbnail Image"
                          class="img-raised rounded-circle img-fluid"
                        />
                      </div>
                      <h4 class="card-title">
                        傳藝中心
                        <br />
                        <small class="card-description text-muted">簡介</small>
                      </h4>

                      <md-card-content>
                        <p class="card-description">
                          民國八十五年三月成立國立傳統藝術中心籌備處，傾力推動傳統藝術的維護與研究，並展開保存、傳習、展演及推廣等工作，目標為帶動民間藝術的再生、發展與創新。
                        </p>
                      </md-card-content>

                      <md-button
                        href="https://www.ncfta.gov.tw/#slidePage7"
                        class="md-success md-round"
                      >
                        <i class="fa fa-thumbs-up"></i>連結
                      </md-button>
                    </md-card>
                  </div>
                </div>
                <div class="md-layout-item md-medium-size-33 md-small-size-100">
                  <div class="team-player">
                    <md-card class="md-card-plain">
                      <div class="md-layout-item md-size-50 mx-auto">
                        <img
                          :src="teamImg3"
                          alt="Thumbnail Image"
                          class="img-raised rounded-circle img-fluid"
                        />
                      </div>
                      <h4 class="card-title">
                        羅東夜市
                        <br />
                        <small class="card-description text-muted">簡介</small>
                      </h4>

                      <md-card-content>
                        <p class="card-description">
                          極具人情味的羅東夜市有許多傳統美食小吃，從日頭西晒開始，燈便通夜亮麗明晃，熙來攘往的人群，自四面八方攢聚而來，來到宜蘭記得來品嚐。
                        </p>
                      </md-card-content>
                      <!-- <md-button
                        href="https://www.necoast-nsa.gov.tw/Attraction-Content.aspx?a=296&l=1"
                        class="md-success md-round"
                      >
                        <i class="fa fa-thumbs-up"></i>連結
                      </md-button> -->
                    </md-card>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="section text-center">
          <div class="container">
            <!-- <h2 class="title">Here is our team</h2> -->
            <div class="team">
              <div class="md-layout">
                <div class="md-layout-item md-medium-size-33 md-small-size-100">
                  <div class="team-player">
                    <md-card class="md-card-plain">
                      <div class="md-layout-item md-size-50 mx-auto">
                        <img
                          :src="teamImg4"
                          alt="Thumbnail Image"
                          class="img-raised rounded-circle img-fluid"
                        />
                      </div>
                      <h4 class="card-title">
                        蘇澳冷泉
                        <br />
                        <small class="card-description text-muted">簡介</small>
                      </h4>

                      <md-card-content>
                        <p class="card-description">
                          肌膚新體驗~冰冰、刺刺、涼涼舒暢，感受不同的冷泉風貌，讓您體驗前所未有的極鮮冷泉22℃。
                        </p>
                      </md-card-content>

                      <md-button
                        href="https://www.necoast-nsa.gov.tw/Attraction-Content.aspx?a=292&l=1"
                        class="md-success md-round"
                      >
                        <i class="fa fa-thumbs-up"></i>連結
                      </md-button>
                    </md-card>
                  </div>
                </div>
                <div class="md-layout-item md-medium-size-33 md-small-size-100">
                  <div class="team-player">
                    <md-card class="md-card-plain">
                      <div class="md-layout-item md-size-50 mx-auto">
                        <img
                          :src="teamImg5"
                          alt="Thumbnail Image"
                          class="img-raised rounded-circle img-fluid"
                        />
                      </div>
                      <h4 class="card-title">
                        龜山島
                        <br />
                        <small class="card-description text-muted">簡介</small>
                      </h4>

                      <md-card-content>
                        <p class="card-description">
                          龜山島位於宜蘭縣頭城鎮海岸以東約10公里處，是孤懸於海中之火山島嶼，因其形似浮龜而得名，更曾被國際知名自然網站《WHEN
                          ON
                          EARTH》列為全世界最酷的小島之一，來到東北角除了觀覽濱海美景和壯麗的巨岩礁石，現在還可搭上船航向宜蘭外海上的神祕小島，暢遊藍色公路，一路玩進龜山島！
                          Feel free to add some <a href="#">links</a> for people
                        </p>
                      </md-card-content>

                      <md-button
                        href="https://www.necoast-nsa.gov.tw/Attraction-Content.aspx?a=383&l=1"
                        class="md-success md-round"
                      >
                        <i class="fa fa-thumbs-up"></i>連結
                      </md-button>
                    </md-card>
                  </div>
                </div>
                <div class="md-layout-item md-medium-size-33 md-small-size-100">
                  <div class="team-player">
                    <md-card class="md-card-plain">
                      <div class="md-layout-item md-size-50 mx-auto">
                        <img
                          :src="teamImg6"
                          alt="Thumbnail Image"
                          class="img-raised rounded-circle img-fluid"
                        />
                      </div>
                      <h4 class="card-title">
                        烏石港賞鯨
                        <br />
                        <small class="card-description text-muted">簡介</small>
                      </h4>

                      <md-card-content>
                        <p class="card-description">
                          敞揚在藍色濱海公路上，行經外澳與頭城交接處您就能看見烏石港，烏石港不僅是魚貨市場也是宜蘭著名的賞鯨碼頭，每到夏季時分可說是熱鬧非凡，廣大的港區內設有便利的停車空間，站在碼頭岸邊還能遠眺龜山島，可說是景色美不勝收喔。
                        </p>
                      </md-card-content>

                      <md-button
                        href="https://www.necoast-nsa.gov.tw/Attraction-Content.aspx?a=280&l=1"
                        class="md-success md-round"
                      >
                        <i class="fa fa-thumbs-up"></i>連結
                      </md-button>
                    </md-card>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { Tabs } from "@/components";
export default {
  components: {
    // Tabs
  },
  bodyClass: "profile-page",
  // data() {
  //   return {
  //     tabPane1: [
  //       { image: require("@/assets/img/examples/studio-1.jpg") },
  //       { image: require("@/assets/img/examples/studio-2.jpg") },
  //       { image: require("@/assets/img/examples/studio-4.jpg") },
  //       { image: require("@/assets/img/examples/studio-5.jpg") }
  //     ],
  //     tabPane2: [
  //       { image: require("@/assets/img/examples/olu-eletu.jpg") },
  //       { image: require("@/assets/img/examples/clem-onojeghuo.jpg") },
  //       { image: require("@/assets/img/examples/cynthia-del-rio.jpg") },
  //       { image: require("@/assets/img/examples/mariya-georgieva.jpg") },
  //       { image: require("@/assets/img/examples/clem-onojegaw.jpg") }
  //     ],
  //     tabPane3: [
  //       { image: require("@/assets/img/examples/mariya-georgieva.jpg") },
  //       { image: require("@/assets/img/examples/studio-3.jpg") },
  //       { image: require("@/assets/img/examples/clem-onojeghuo.jpg") },
  //       { image: require("@/assets/img/examples/olu-eletu.jpg") },
  //       { image: require("@/assets/img/examples/studio-1.jpg") }
  //     ]
  //   };
  // },
  props: {
    header: {
      type: String,
      default: require("@/assets/img/bg7.jpg")
    },
    teamImg1: {
      type: String,
      default: require("@/assets/img/spring2.jpg")
    },
    teamImg2: {
      type: String,
      default: require("@/assets/img/tranditional.jpg")
    },
    teamImg3: {
      type: String,
      default: require("@/assets/img/night.jpg")
    },
    teamImg4: {
      type: String,
      default: require("@/assets/img/spring.jpg")
    },
    teamImg5: {
      type: String,
      default: require("@/assets/img/turtle.jpg")
    },
    teamImg6: {
      type: String,
      default: require("@/assets/img/dolphlin2.jpg")
    }
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
.section {
  padding: 0;
}

.profile-tabs::v-deep {
  .md-card-tabs .md-list {
    justify-content: center;
  }

  [class*="tab-pane-"] {
    margin-top: 3.213rem;
    padding-bottom: 50px;

    img {
      margin-bottom: 2.142rem;
    }
  }
}
</style>
