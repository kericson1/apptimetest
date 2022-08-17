<template>
  <div id="create_project" class="modal custom-modal fade" role="dialog">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Création de projet</h5>
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
            <div class="row">
              <div class="col-sm-12" style="text-align: center">
                <label>Sélectionnez type</label>
              </div>
              <div class="col-sm-12" style="text-align: center">
                <input
                  type="radio"
                  id="projet"
                  name="type_projet"
                  v-model="type_projet"
                  value="PROJET"
                  required
                />
                <label for="projet">Projet</label>
                <input
                  type="radio"
                  id="mission"
                  name="type_projet"
                  v-model="type_projet"
                  value="MISSION"
                />
                <label for="offre">Mission</label>
                 <input
                  type="radio"
                  id="offre"
                  name="type_projet"
                  v-model="type_projet"
                  value="OFFRE"
                />
                <label for="mission">Offre</label>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <div class="form-group">
                  <label>Nom du projet</label>
                  <input
                    class="form-control"
                    type="text"
                    v-model="nom_projet"
                  />
                  <span
                    style="color: red"
                    v-if="errors.nom_projet"
                    v-text="errors.nom_projet[0]"
                  ></span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Date de début</label>
                  <input
                    type="date"
                    class="form-control"
                    v-model="date_debut"
                  />
                  <span
                    style="color: red"
                    v-if="errors.date_debut"
                    v-text="errors.date_debut[0]"
                  ></span>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Date de fin</label>
                  <input type="date" class="form-control" v-model="date_fin" />
                  <span
                    style="color: red"
                    v-if="errors.date_fin"
                    v-text="errors.date_fin[0]"
                  ></span>
                </div>
              </div>
            </div>
            <div class="row" id="client" style="display: none">
              <div class="col-sm-12">
                <div class="form-group">
                  <label>Client</label>
                  <Multiselect
                    v-model="client_id"
                    :options="clients"
                    :custom-label="
                      ({ id_client, nom_client }) =>
                        `${id_client} - [${nom_client}]`
                    "
                    valueProp="id_client"
                    placeholder="Choisir un client"
                    label="nom_client"
                    track-by="nom_client"
                    :searchable="true"
                  >
                  </Multiselect>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Ajouter chef de projet</label>
                  <Multiselect
                    v-model="user_id"
                    :options="users"
                    :custom-label="({ id, name }) => `${id} - [${name}]`"
                    valueProp="id"
                    placeholder="Choisir le chef de projet"
                    label="name"
                    track-by="name"
                    :searchable="true"
                  >
                  </Multiselect>
                  <span
                    style="color: red"
                    v-if="errors.user_id"
                    v-text="errors.user_id[0]"
                  ></span>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Chef de projet</label>
                  <div class="project-members">
                    <a
                      href="#"
                      data-toggle="tooltip"
                      title="Jeffery Lalor"
                      class="avatar"
                    >
                      <img src="assets/img/profiles/avatar-16.jpg" alt="" />
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Ajouter une équipe</label>
                  <Multiselect
                    v-model="users_team"
                    :allow-empty="true"
                    mode="tags"
                    :custom-label="({ id, name }) => `${id} - [${name}]`"
                    valueProp="id"
                    placeholder="Choisir les membres du projet"
                    label="name"
                    track-by="name"
                    :options="users"
                    :object="true"
                    :close-on-select="false"
                    :searchable="true"
                  >
                  </Multiselect>
                  <span
                    style="color: red"
                    v-if="errors.users_team"
                    v-text="errors.users_team[0]"
                  ></span>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Membre de l'équipe</label>
                  <div class="project-members">
                    <a
                      href="#"
                      data-toggle="tooltip"
                      title="John Doe"
                      class="avatar"
                    >
                      <img src="assets/img/profiles/avatar-16.jpg" alt="" />
                    </a>
                    <a
                      href="#"
                      data-toggle="tooltip"
                      title="Richard Miles"
                      class="avatar"
                    >
                      <img src="assets/img/profiles/avatar-09.jpg" alt="" />
                    </a>
                    <a
                      href="#"
                      data-toggle="tooltip"
                      title="John Smith"
                      class="avatar"
                    >
                      <img src="assets/img/profiles/avatar-10.jpg" alt="" />
                    </a>
                    <a
                      href="#"
                      data-toggle="tooltip"
                      title="Mike Litorus"
                      class="avatar"
                    >
                      <img src="assets/img/profiles/avatar-05.jpg" alt="" />
                    </a>
                    <span class="all-team">+2</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Ajouter sponsor</label>
                  <Multiselect
                    v-model="sponsor_id"
                    :options="sponsors"
                    :custom-label="
                      ({ id_sponsor, name }) => `${id_sponsor} - [${name}]`
                    "
                    valueProp="id_sponsor"
                    placeholder="Choisir un sponsor"
                    label="name"
                    track-by="name"
                    :searchable="true"
                  >
                  </Multiselect>
                  <span
                    style="color: red"
                    v-if="errors.sponsor_id"
                    v-text="errors.sponsor_id[0]"
                  ></span>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Sponsor</label>
                  <div class="project-members">
                    <a
                      href="#"
                      data-toggle="tooltip"
                      title="Jeffery Lalor"
                      class="avatar"
                    >
                      <img src="assets/img/profiles/avatar-16.jpg" alt="" />
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <div class="form-group">
                  <label>Description</label>
                  <textarea
                    rows="4"
                    class="form-control"
                    placeholder="Entrez la description ici"
                    v-model="description"
                  ></textarea>
                  <span
                    style="color: red"
                    v-if="errors.description"
                    v-text="errors.description[0]"
                  ></span>
                </div>
              </div>
            </div>
            <div class="submit-section">
              <button
                type="button"
                class="btn btn-primary submit-btn"
                @click="ProjectStore"
                data-dismiss="modal"
              >
                Créer
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import Multiselect from "@vueform/multiselect";
import { createToaster } from "@meforma/vue-toaster";
import $ from "jquery";

const toaster = createToaster({
  /* options */
});

export default {
  components: {
    Multiselect,
  },
  data() {
    return {
      users: [],
      user_id: "",
      type_projet: "",
      sponsor_id: "",
      client_id: "",
      nom_projet: "",
      date_debut: "",
      date_fin: "",
      sponsors: "",
      clients: "",
      users_team: [],
      description: "",
      errors: {},
      projets: {},
    };
  },
  mounted() {
    this.fetchProject();
  },
  methods: {
    fetchProject() {
      axios.get("/api/projets").then((response) => {
        this.projets = response.data;
      });
    },
    ProjectStore() {
      // console.log(this.users_team)
      // console.log(typeof(this.users_team))
      // console.log(JSON.parse(JSON.stringify(this.users_team)))

      let test = JSON.parse(JSON.stringify(this.users_team));
      let donnees = [];

      for (let i = 0; i < Object.keys(test).length; i++) {
        donnees.push(test[i]["id"]);
      }

      // console.log(donnees,typeof(donnees))

      // console.log(typeof (JSON.parse(JSON.stringify(this.users_team))))
      axios
        .post("/api/projets", {
          user_id: this.user_id,
          nom_projet: this.nom_projet,
          date_debut: this.date_debut,
          date_fin: this.date_fin,
          description: this.description,
          sponsor_id: this.sponsor_id,
          client_id: this.client_id,
          type_projet: this.type_projet,
          users_team: donnees,
        })
        .then((response) => {
          console.log(response.data);
          toaster.success(`Projet crée avec succès`, {
            position: "top-right",
          });
          $("#create_project").modal("toggle");
        })
        .catch((error) => {
          if (error.response === 422) {
            this.errors = error.response.data.errors;
            toaster.error(
              `Projet non crée . Veuillez remplir les champs demandé`,
              {
                position: "top-right",
                duration: 4000,
              }
            );
          }
        });
    },
  },

  created: function () {
    var that = this;
    axios
      .all([
        axios.get("api/users"),
        axios.get("api/sponsors"),
        axios.get("api/clients"),
      ])
      .then(
        axios.spread(function (users, sponsors, clients) {
          that.users = users.data;
          that.sponsors = sponsors.data;
          that.clients = clients.data;
          // console.log(clients.data);
          // console.log(sponsors.data);
        })
      );
  },
  name: "CreateProject",
};
</script>

<style src="@vueform/multiselect/themes/default.css"></style>
