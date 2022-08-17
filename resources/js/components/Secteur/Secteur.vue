<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="page-title">Secteurs</h3>
              <ul class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="/home">Tableau de bord</a>
                </li>
                <li class="breadcrumb-item active">Secteurs</li>
              </ul>
            </div>
            <div class="col-auto float-right ml-auto">
              <a
                href="#"
                class="btn add-btn"
                data-toggle="modal"
                data-target="#add_holiday"
                ><i class="fa fa-plus"></i> Ajouter secteur</a
              >
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12">
            <div class="table-responsive">
              <table class="table table-striped custom-table mb-0">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Nom</th>
                    <th class="text-right">Action</th>
                  </tr>
                </thead>
                <tbody>
                  <template
                    v-for="secteur in secteurs"
                    :key="secteur.id_secteur"
                  >
                    <tr class="holiday-upcoming">
                      <td>7</td>
                      <td>{{ secteur.nom_secteur }}</td>

                      <td class="text-right">
                        <div class="dropdown dropdown-action">
                          <a
                            href="#"
                            class="action-icon dropdown-toggle"
                            data-toggle="dropdown"
                            aria-expanded="false"
                            ><i class="material-icons">more_vert</i></a
                          >
                          <div class="dropdown-menu dropdown-menu-right">
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#edit_holiday"
                              ><i class="fa fa-pencil m-r-5"></i> Modifier</a
                            >
                            <a
                              class="dropdown-item"
                              href="#"
                              data-toggle="modal"
                              data-target="#delete_holiday"
                              ><i class="fa fa-trash-o m-r-5"></i> Désactiver</a
                            >
                          </div>
                        </div>
                      </td>
                    </tr>
                  </template>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <!-- <div class="modal custom-modal fade" id="add_holiday" role="dialog">

        
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Ajouter secteur</h5>
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
              <form>
                <div class="form-group">
                  <label
                    >Nom du secteur <span class="text-danger">*</span></label
                  >
                  <input
                    class="form-control"
                    type="text"
                    v-model="nom_secteur"
                    placeholder="exemple: INFORMATIQUE"
                  />
                  <p
                    style="color: red"
                    class="text-red"
                    v-if="errors.nom_secteur"
                    v-text="errors.nom_secteur[0]"
                  ></p>
                </div>
                <div class="submit-section">
                  <button
                    type="button"
                    class="btn btn-primary submit-btn"
                    @click="storeClient"
                  >
                    Ajouter
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div> -->

      <div class="modal custom-modal fade" id="delete_holiday" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-body">
              <div class="form-header">
                <h3>Delete Holiday</h3>
                <p>Are you sure want to delete?</p>
              </div>
              <div class="modal-btn delete-action">
                <div class="row">
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      class="btn btn-primary continue-btn"
                      >Delete</a
                    >
                  </div>
                  <div class="col-6">
                    <a
                      href="javascript:void(0);"
                      data-dismiss="modal"
                      class="btn btn-primary cancel-btn"
                      >Cancel</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <AddSecteur />
    </div>
  </div>
</template>

<script>
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import AddSecteur from "./AddSecteur";
import axios from "axios";
export default {
  data() {
    return {
      secteurs: {},
      nom_secteur: "",
      notifmsg: "",
      errorStatus: "",
      errors: {},
    };
  },

  created() {
    this.fetchSecteur();
  },
  mounted() {
    setInterval(() => {
      axios
        .get("/api/secteurs")
        .then((response) => (this.secteurs = response.data))
        .catch((error) => {
          this.errors.push(error);
        });
    }, 2000);
  },
  methods: {
    fetchSecteur() {
      axios
        .get("/api/secteurs")
        .then((response) => (this.secteurs = response.data))
        .catch((error) => console.log(error));
    },
  },
  name: "Secteur",
  components: { Sidebar, Header, AddSecteur },
};
</script>

<style scoped>
</style>
