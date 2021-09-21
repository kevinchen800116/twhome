<template>
  <div class="wrapper">
    <parallax
      class="section page-header header-filter"
      :style="headerStyle"
    ></parallax>
    <div class="main main-raised">
      <div class="section profile-content">
        <div class="container">
          <div class="md-layout">
            <div class="md-layout-item md-size-50 mx-auto">
              <div class="profile">
                <div class="avatar">
                  <img
                    :src="img"
                    alt="Circle Image"
                    class="img-raised rounded-circle img-fluid"
                  />
                </div>
                <div class="name">
                  <h3 class="title">宜蘭童玩民宿訂房辦法</h3>
                </div>
              </div>
            </div>
          </div>
          <div class="description text-center">
            <p>
              務必請您先確認預訂入住的日期和房型是否還有空房。
            </p>
            <p>
              預約定金為每個房間1000元，需於兩日內完成定金匯款，始完成訂房。
            </p>
            <p>
              若未能在期限完成定金匯款，將取消您的預訂，且不另行通知，謝謝您的諒解!
            </p>
          </div>
          <div class="profile-tabs">
            <tabs
              :tab-name="['匯款資訊', '收費說明', '改期、取消與退費辦法']"
              :tab-icon="['paid', 'price_check', 'restart_alt']"
              plain
              nav-pills-icons
              color-button="success"
            >
              <!-- here you can add your content for tab-content -->
              <template slot="tab-pane-1">
                <div class="md-layout">
                  <div class="md-layout-item md-size-50 ml-auto">
                    <!-- <p>匯款銀行：</p>
                    <p class="ml-auto">台北榮星郵局</p>
                    <p class="ml-auto">戶　　名：徐葆蘭</p>
                    <p class="ml-auto">代　　號：700</p> -->
                    <div>
                      <ul>
                        <li>匯款銀行：台北榮星郵局</li>
                        <li>戶　　名：徐葆蘭</li>
                        <li>代　　號：700</li>
                        <li>帳　　號：0002015-0165676</li>
                        <li>
                          匯款完成後，煩請來電告知交易帳號後五碼，即完成訂房手續，謝謝您。
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="md-layout-item md-size-50 ml-auto">
                    <!-- <p class="mr-auto">帳　　號：0002015-0165676</p>
                    <p class="mr-auto">
                      匯款完成後，煩請來電告知交易帳號後五碼，即完成訂房手續，謝謝您。
                    </p> -->
                    <ul>
                      <li>Line帳　　號：0938789858</li>
                      <li>負責人：徐葆蘭</li>
                      <li>民宿地址：宜蘭縣五結鄉親河路二段103巷1弄15號</li>
                    </ul>
                  </div>
                </div>
              </template>
              <template slot="tab-pane-2">
                <div class="md-layout">
                  <div class="md-layout-item md-size-100 ml-auto">
                    <!-- <img :src="tabPane2[0].image" class="rounded" />
                    <img :src="tabPane2[1].image" class="rounded" />
                    <img :src="tabPane2[2].image" class="rounded" /> -->
                    <p>
                      星期日至星期四為平日價格，星期五六及國定假日為假日價格，
                    </p>
                    <!-- <p style="width:307px">星期五六及國定假日為假日價格，</p> -->
                    <p>農曆過年期間為定價價格。</p>

                    <p style="width:307px">
                      客房費用已包含住宿、早餐服務。
                    </p>
                    <p style="width:307px">入住人數必需小於客房人數規定。</p>

                    <p>
                      人數超過人數規定時，90公分以上加人不加床，每人收費800元。
                    </p>
                    <!-- <p>每人收費800元。</p> -->

                    <p>
                      90公分以下的小朋友不收費，但每房以一位為限，同房第二位以上按人數加收加人費用300元。
                    </p>
                  </div>
                  <div class="md-layout-item md-size-100 mr-auto">
                    <!-- <img :src="tabPane2[3].image" class="rounded" />
                    <img :src="tabPane2[4].image" class="rounded" /> -->
                    <p>
                      農曆春節期間，每加一人，成人收費1000元，小孩收費500元。
                    </p>

                    <p>以上加人費用含早餐、腳踏車、換洗毛巾。</p>

                    <p>
                      嚴禁未告知自行增加入住人數，如有增加人數需補足加人費用。
                    </p>

                    <p>
                      僅接受攜帶小型寵物，另加收清潔費用300元，並配合不上床、不上沙發。另需押金1000元，於退房確認無任何破壞項目後始可歸還；若發現有破壞情事，民宿得不退還押金，房客需配合支付合理之賠償
                    </p>

                    <p>續住不需更換備品及床被單者，第二天起每晚折扣200元。</p>
                  </div>
                </div>
              </template>
              <template slot="tab-pane-3">
                <div class="md-layout">
                  <div class="md-layout-item md-size-100 ml-auto">
                    <!-- <img :src="tabPane3[0].image" class="rounded" />
                    <img :src="tabPane3[1].image" class="rounded" /> -->
                    <p>
                      如需改期需於七日前通知，延後期限為3個月內；退費辦法依交通部觀光局之「旅館業個別旅客直接訂房定型化契約範本」辦理。
                    </p>
                    <ul>
                      <li>於14天前通知取消，可退還已付訂金之100%。</li>
                      <li>於10-13天前通知取消，可退還已付訂金之70%。</li>
                      <li>於7-9天前通知取消，可退還已付訂金之50%。</li>
                      <li>於4-6天前通知取消，可退還已付訂金之40%。</li>
                      <li>於2-3天前通知取消，可退還已付訂金之30%。</li>
                      <li>於1天前通知取消，可退還已付訂金之20%。</li>
                      <li>於預定住宿日當日或怠於通知者，無法退還訂金。</li>
                    </ul>
                  </div>
                  <div class="md-layout-item md-size-100 mr-auto">
                    <!-- <img :src="tabPane3[2].image" class="rounded" />
                    <img :src="tabPane3[3].image" class="rounded" />
                    <img :src="tabPane3[4].image" class="rounded" /> -->
                    <p>
                      如遇天候因素(如颱風)不克前來，請當日即時告知。
                    </p>
                    <p>
                      您可選擇取消訂房，定金將退還至指定帳戶；或延後訂房日期。
                    </p>
                    <p>
                      非常歡迎來信給予寶貴意見，若是訂房問題及重要意見，敬請來電指教，以免擔誤時效，謝謝您～
                    </p>
                  </div>
                </div>
              </template>
            </tabs>
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
    Tabs
  },
  bodyClass: "profile-page",
  data() {
    return {
      tabPane1: [
        { image: require("@/assets/img/examples/studio-1.jpg") },
        { image: require("@/assets/img/examples/studio-2.jpg") },
        { image: require("@/assets/img/examples/studio-4.jpg") },
        { image: require("@/assets/img/examples/studio-5.jpg") }
      ],
      tabPane2: [
        { image: require("@/assets/img/examples/olu-eletu.jpg") },
        { image: require("@/assets/img/examples/clem-onojeghuo.jpg") },
        { image: require("@/assets/img/examples/cynthia-del-rio.jpg") },
        { image: require("@/assets/img/examples/mariya-georgieva.jpg") },
        { image: require("@/assets/img/examples/clem-onojegaw.jpg") }
      ],
      tabPane3: [
        { image: require("@/assets/img/examples/mariya-georgieva.jpg") },
        { image: require("@/assets/img/examples/studio-3.jpg") },
        { image: require("@/assets/img/examples/clem-onojeghuo.jpg") },
        { image: require("@/assets/img/examples/olu-eletu.jpg") },
        { image: require("@/assets/img/examples/studio-1.jpg") }
      ]
    };
  },
  props: {
    header: {
      type: String,
      default: require("@/assets/img/city-profile.jpg")
    },
    img: {
      type: String,
      default: require("@/assets/img/faces/christian.jpg")
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

    // .p {
    //   width: 607.167px;
    // }
  }
}
</style>
