<template>
  <div class="wrapper">
    <parallax class="section page-header header-filter" :style="headerStyle">
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-50 md-small-size-70 md-xsmall-size-100"
          >
            <h1 class="title">客房服務項目</h1>
            <!-- <h4>
              客房注意事項及服務項目
            </h4> -->
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
      <div class="section">
        <div class="container">
          <div class="md-layout">
            <div
              class="md-layout-item md-size-66 md-xsmall-size-100 mx-auto text-center"
            >
              <h2 class="title text-center">客房注意事項及服務項目</h2>
              <h5 class="description"></h5>
            </div>
          </div>
          <div class="features text-center">
            <div class="md-layout">
              <div class="md-layout-item md-medium-size-33 md-small-size-100">
                <div class="info">
                  <div class="icon icon-info">
                    <md-icon>info</md-icon>
                  </div>
                  <h4 class="info-title">
                    住宿登記
                  </h4>
                  <ul class="info-title">
                    <li>入住時間為下午15:00</li>
                    <li>退房時間為隔日上午11:00</li>
                    <li>請於下午15：00至18：00辦理住宿登記</li>
                    <li>若行程另有安排，敬請來電告知</li>
                    <li>
                      貴重的物品請自行小心保管，退房時請務必繳回房門的鑰匙。
                    </li>
                  </ul>
                  <!-- <p>
                    住宿的朋友請於住宿日下午15：00至18：00辦理住宿登記，若行程另有安排，敬請來電告知。
                    住宿時，請記得出示您的國民身份證以便我們辦理登記。
                    早餐用餐時間為 08:30-09:30，敬請準時用餐。
                  </p> -->
                </div>
              </div>
              <div class="md-layout-item md-medium-size-33 md-small-size-100">
                <div class="info">
                  <div class="icon icon-danger">
                    <md-icon>dining</md-icon>
                  </div>
                  <h4 class="info-title">
                    早餐時間
                  </h4>
                  <ul class="info-title">
                    <li>
                      08:30-09:30，敬請準時用餐
                    </li>
                    <li>為維護早餐備餐品質，廚房暫無開放煮食服務。</li>
                  </ul>
                </div>
              </div>
              <div class="md-layout-item md-medium-size-33 md-small-size-100">
                <div class="info">
                  <div class="icon icon-danger">
                    <md-icon>warning</md-icon>
                  </div>
                  <h4 class="info-title">
                    禁止項目
                  </h4>
                  <ul class="info-title">
                    <li>室內嚴禁吸煙。</li>
                    <li>嚴禁未經許可逕自加人。</li>
                    <li>嚴禁未經許可攜帶寵物入內。</li>
                    <li>打麻將，於晚上10:00後請降低音量，以維護住宿品質。</li>
                    <li>請勿於客房內使用瓦斯爐或電磁爐等危險物品。</li>
                  </ul>
                </div>
              </div>
              <div class="md-layout-item md-medium-size-33 md-small-size-100">
                <div class="info">
                  <div class="icon icon-danger">
                    <md-icon>room_service</md-icon>
                  </div>
                  <h4 class="info-title">
                    提供服務
                  </h4>
                  <ul class="info-title">
                    <li>提供現做早餐</li>
                    <li>代辦賞鯨行程</li>
                    <li>代售傳藝中心門票</li>
                    <li>附500坪停車場</li>
                    <li>代辦童玩節套裝行程</li>
                    <li>提供補充式洗髮沐浴乳</li>
                    <li>烤肉場地（代訂食材）等服務</li>
                    <li>‧公共設施：客廳、餐廳、廚房、Wifi</li>
                    <li>為響應低碳生活，民宿採用熱泵熱水器</li>
                    <li>
                      為響應環保請自備牙刷，不提供一次性備品，如需拋棄式牙刷請向民宿主人索取
                    </li>
                  </ul>
                  <!-- <p>
                    為響應低碳生活，民宿採用熱泵熱水器，提供補充式洗髮沐浴乳，不提供一次性備品，如需拋棄式牙刷請向民宿主人索取。
                    熱水壺、水杯 冷氣 液晶電視（數位頻道） 無線網路 吹風機
                    牙刷架、 口杯 補充式洗髮沐浴乳 換洗毛巾
                    為響應環保請自備牙刷，需拋棄式牙刷者請告知。
                  </p> -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- <div class="section text-center">
        <div class="container">
          <h2 class="title">Here is our team</h2>
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
                      Gigi Hadid
                      <br />
                      <small class="card-description text-muted">Model</small>
                    </h4>

                    <md-card-content>
                      <p class="card-description">
                        You can write here details about one of your team
                        members. You can give more details about what they do.
                        Feel free to add some <a href="#">links</a> for people
                        to be able to follow them outside the site.
                      </p>
                    </md-card-content>

                    <md-card-actions class="text-center">
                      <md-button
                        href="javascript:void(0)"
                        class="md-just-icon md-simple"
                      >
                        <i class="fab fa-twitter"></i>
                      </md-button>
                      <md-button
                        href="javascript:void(0)"
                        class="md-just-icon md-simple"
                      >
                        <i class="fab fa-instagram"></i>
                      </md-button>
                      <md-button
                        href="javascript:void(0)"
                        class="md-just-icon md-simple"
                      >
                        <i class="fab fa-facebook-square"></i>
                      </md-button>
                    </md-card-actions>
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
                      Carla Hortensia
                      <br />
                      <small class="card-description text-muted"
                        >Designer</small
                      >
                    </h4>

                    <md-card-content>
                      <p class="card-description">
                        You can write here details about one of your team
                        members. You can give more details about what they do.
                        Feel free to add some <a href="#">links</a> for people
                        to be able to follow them outside the site.
                      </p>
                    </md-card-content>

                    <md-card-actions class="text-center">
                      <md-button
                        href="javascript:void(0)"
                        class="md-just-icon md-simple"
                      >
                        <i class="fab fa-twitter"></i>
                      </md-button>
                      <md-button
                        href="javascript:void(0)"
                        class="md-just-icon md-simple"
                      >
                        <i class="fab fa-linkedin"></i>
                      </md-button>
                    </md-card-actions>
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
                      Kendall Jenner
                      <br />
                      <small class="card-description text-muted">Model</small>
                    </h4>

                    <md-card-content>
                      <p class="card-description">
                        You can write here details about one of your team
                        members. You can give more details about what they do.
                        Feel free to add some <a href="#">links</a> for people
                        to be able to follow them outside the site.
                      </p>
                    </md-card-content>

                    <md-card-actions class="text-center">
                      <md-button
                        href="javascript:void(0)"
                        class="md-just-icon md-simple"
                      >
                        <i class="fab fa-twitter"></i>
                      </md-button>
                      <md-button
                        href="javascript:void(0)"
                        class="md-just-icon md-simple"
                      >
                        <i class="fab fa-instagram"></i>
                      </md-button>
                      <md-button
                        href="javascript:void(0)"
                        class="md-just-icon md-simple"
                      >
                        <i class="fab fa-facebook-square"></i>
                      </md-button>
                    </md-card-actions>
                  </md-card>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div> -->
      <!-- <div class="section section-contacts">
        <div class="container">
          <div class="md-layout">
            <div class="md-layout-item md-size-66 md-xsmall-size-100 mx-auto">
              <h2 class="text-center title">Work with us</h2>
              <h4 class="text-center description">
                Divide details about your product or agency work into parts.
                Write a few lines about each one and contact us about any
                further collaboration. We will responde get back to you in a
                couple of hours.
              </h4>
              <form class="contact-form">
                <div class="md-layout">
                  <div class="md-layout-item md-size-50">
                    <md-field>
                      <label>Your Name</label>
                      <md-input v-model="name" type="text"></md-input>
                    </md-field>
                  </div>
                  <div class="md-layout-item md-size-50">
                    <md-field>
                      <label>Your Email</label>
                      <md-input v-model="email" type="email"></md-input>
                    </md-field>
                  </div>
                </div>
                <md-field maxlength="5">
                  <label>Your Message</label>
                  <md-textarea v-model="message"></md-textarea>
                </md-field>
                <div class="md-layout">
                  <div class="md-layout-item md-size-33 mx-auto text-center">
                    <md-button class="md-success">Send Message</md-button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div> -->
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
      message: null
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
