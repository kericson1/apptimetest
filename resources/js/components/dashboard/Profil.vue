<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row">
            <div class="col-sm-12">
              <h3 class="page-title">Profil</h3>
              <ul class="breadcrumb">
                <li class="breadcrumb-item">
                  <router-link to="dashboard">Tableau de bord</router-link>
                </li>
                <li class="breadcrumb-item active">Profil</li>
              </ul>
            </div>
          </div>
        </div>

        <div class="card mb-0">
          <div class="card-body">
            <div class="row">
              <div class="col-md-12">
                <div class="profile-view">
                  <div class="profile-img-wrap">
                    <div class="profile-img">
                      <a href="#"
                        ><img alt="" src="assets/img/profiles/avatar-02.jpg"
                      /></a>
                    </div>
                  </div>
                  <div class="profile-basic">
                    <div class="row">
                      <div class="col-md-5">
                        <div class="profile-info-left">
                          <h3 class="user-name m-t-0 mb-0">
                            {{ user.name }} {{ user.prenom }}
                          </h3>
                          <h6 class="text-muted">UI/UX Design Team</h6>
                          <small class="text-muted">{{ user.poste }}</small>
                          <div class="staff-msg">
                            <a
                              data-target="#personal_info_modal"
                              data-toggle="modal"
                              class="btn btn-custom"
                              href="#"
                              >Modifier mot de passe</a
                            >
                          </div>
                        </div>
                      </div>
                      <div class="col-md-7">
                        <ul class="personal-info">
                          <li>
                            <div class="title">Téléphone:</div>
                            <div class="text" v-if="user.phone == null">
                              Pas de téléphone enregistré
                            </div>
                            <div class="text" v-else>
                              {{ user.phone }}
                            </div>
                          </li>
                          <li>
                            <div class="title">Email:</div>
                            <div class="text">
                              {{ user.email }}
                            </div>
                          </li>
                          <li>
                            <div class="title">Anniversaire:</div>
                            <div class="text" v-if="user.phone == null">
                              Pas de date d'anniveraire enregistré
                            </div>
                            <div class="text" v-else>
                              {{ user.anniversaire }}
                            </div>
                          </li>
                          <li>
                            <div class="title">Addresse:</div>
                            <div class="text" v-if="user.phone == null">
                              Pas d'adresse enregistré
                            </div>
                            <div class="text" v-else>
                              {{ user.adresse }}
                            </div>
                          </li>
                          <li>
                            <div class="title">Sexe:</div>
                            <div class="text">{{ user.sexe }}</div>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="pro-edit">
                    <a
                      data-target="#profile_info"
                      data-toggle="modal"
                      class="edit-icon"
                      href="#"
                      ><i class="fa fa-pencil"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div id="profile_info" class="modal custom-modal fade" role="dialog">
        <div
          class="modal-dialog modal-dialog-centered modal-lg"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Mettre à jour son profil</h5>
              <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form @submit.prevent="submit" @keydown="form.onKeydown($event)">
                <div class="row">
                  <div class="col-md-12">
                    <div class="col-md-12">
                      <input
                        class="form-control"
                        type="file"
                        name="file"
                        @change="handleFile"
                      />
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Nom</label>
                          <input
                            type="text"
                            class="form-control"
                            v-model="form.name"
                          />
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Prenom</label>
                          <input
                            type="text"
                            class="form-control"
                            v-model="form.prenom"
                          />
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Date d'anniversaire</label>
                          <input
                            type="text"
                            class="form-control"
                            v-model="form.anniversaire"
                          />
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Téléphone</label>
                          <input
                            type="text"
                            class="form-control"
                            v-model="form.telephone"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Addresse</label>
                      <input
                        type="text"
                        class="form-control"
                        v-model="form.adresse"
                      />
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button type="submit" class="btn btn-primary submit-btn">
                    Modifier
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div
        id="personal_info_modal"
        class="modal custom-modal fade"
        role="dialog"
      >
        <div
          class="modal-dialog modal-dialog-centered modal-lg"
          role="document"
        >
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Modifier mot de passe</h5>
              <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form @submit.prevent="submit" @keydown="form.onKeydown($event)">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Mot de passe actuel</label>
                      <input type="text" class="form-control" />
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Nouveau mot de passe</label>
                      <input type="text" class="form-control" />
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Retapez le mot de passe</label>
                      <input class="form-control" type="text" />
                    </div>
                  </div>
                </div>
                <div class="submit-section">
                  <button class="btn btn-primary submit-btn">Modifier</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import Form from "vform";
import { createToaster } from "@meforma/vue-toaster";

const toaster = createToaster({
  /* options */
});
export default {
  data() {
    return {
      form: Form.make({
        name: "",
        prenom: "",
        anniversaire: "",
        telephone: "",
        id: "",
        adresse: "",
        file: null,
      }),
      user: "",
    };
  },
  mounted() {
    this.fetchDash();
  },
  methods: {
    handleFile(event) {
      // We'll grab just the first file...
      // You can also do some client side validation here.
      const file = event.target.files[0];

      // Set the file object onto the form...
      this.form.file = file;
      // this.form.id_sinistre = file
      // php artisan make:migration create_item_order_table --create="item_order" file_sinistres
    },
    async submit() {
      const response = await this.form
        .post("/api/updateuser", {})
        .then((res) => {
          if (res.status === 200) {
            toaster.success(`Profil modifié avec succès`, {
              position: "top-right",
            });
          }
          // window.$("#showModal").modal("hide");
        });
    },
    fetchDash() {
      axios
        .get("/api/user")
        .then((user) => {
          this.user = user.data;
          this.form.name = user.data.name;
          this.form.prenom = user.data.prenom;
          this.form.anniversaire = user.data.anniversaire;
          this.form.telephone = user.data.telephone;
          this.form.id = user.data.id;
          this.form.adresse = user.data.adresse;
        })
        .catch((error) => {
          this.errors.push(error);
        });
    },
  },
  name: "Profil",
  components: { Sidebar, Header },
};
</script>

<style scoped>
</style>
