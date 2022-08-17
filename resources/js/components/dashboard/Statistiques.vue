<template>
  <div class="main-wrapper">
    <Header />

    <Sidebar />

    <div class="page-wrapper">
      <div class="content container-fluid">
        <div class="page-header">
          <div class="row align-items-center">
            <div class="col">
              <h3 class="page-title">Statistiques</h3>
              <ul class="breadcrumb">
                <router-link to="/home" class="breadcrumb-item"
                  >Tableau de bord</router-link
                >
                <li class="breadcrumb-item active">Statistiques</li>
              </ul>
            </div>
          </div>
        </div>

        <div class="row filter-row">
          <div class="col-sm-6 col-md-2">
            <div class="form-group form-focus select-focus">
              <multiselect
                v-model="type"
                :options="options"
                placeholder="Selectionnez le type"
                :searchable="true"
              >
              </multiselect>
            </div>
          </div>
          <div
            class="col-sm-6 col-md-2"
            id="couleur"
            v-if="type === 'Taux d\'occupation'"
          >
            <multiselect
              v-model="code"
              :options="codes"
              placeholder="Choisir la recherche"
              :searchable="true"
            >
            </multiselect>
          </div>
          <div
            class="col-sm-6 col-md-2"
            v-if="
              code === 'Collaborateur' ||
              type === 'Projets' ||
              type === 'Tâches' ||
              type === 'Diagrammes de Gantt' ||
              type === 'Feuilles de temps' ||
              type === 'Diagrammes feuilles de temps' ||
              type === 'Absences'
            "
          >
            <div class="form-group form-focus select-focus">
              <Multiselect
                v-model="user_id"
                :options="users"
                :custom-label="({ id, name }) => `${id} - [${name}]`"
                valueProp="id"
                placeholder="Choisir le collaborateur"
                label="name"
                track-by="name"
                :searchable="true"
              >
              </Multiselect>
            </div>
          </div>
          <div
            class="col-sm-6 col-md-3"
            id="code_couleur"
            v-if="code === 'Code couleur'"
          >
            <div class="form-group form-focus select-focus">
              <multiselect
                v-model="couleur"
                :options="couleurs"
                placeholder="Sélectionnez code de couleur"
                :searchable="true"
              >
              </multiselect>
            </div>
          </div>
          <div
            class="col-sm-6 col-md-2 col-lg-3 col-xl-2 col-12"
            id="debut"
            v-if="
              code === 'Collaborateur' ||
              type === 'Projets' ||
              type === 'Tâches' ||
              type === 'Diagrammes de Gantt' ||
              type === 'Feuilles de temps' ||
              type === 'Diagrammes feuilles de temps' ||
              type === 'Absences'
            "
          >
            <div class="form-group form-focus">
              <input
                class="form-control floating"
                type="date"
                v-model="ddebut"
                id="ddebut"
              />
              <label class="focus-label">Du</label>
              <span id="erreurd"></span>
            </div>
          </div>
          <div
            class="col-sm-6 col-md-2 col-lg-3 col-xl-2 col-12"
            id="fin"
            v-if="
              code === 'Collaborateur' ||
              type === 'Projets' ||
              type === 'Tâches' ||
              type === 'Diagrammes de Gantt' ||
              type === 'Feuilles de temps' ||
              type === 'Diagrammes feuilles de temps' ||
              type === 'Absences'
            "
          >
            <div class="form-group form-focus">
              <input class="form-control floating" type="date" v-model="ffin" />
              <label class="focus-label">au</label>
              <span id="erreurf"></span>
            </div>
          </div>

          <div class="col-sm-6" id="search" style="display: none">
            <div class="form-group">
              <select class="select" name="search[]" multiple="multiple">
                <!-- @foreach ($allprojects as $all)
                <option value="{{ $all->id_projet }}">
                  {{ $all->nom_projet }}
                </option>
                @endforeach -->
              </select>
            </div>
          </div>
          <div
            class="col-sm-6 col-md-2"
            v-if="
              type === 'Taux d\'occupation' ||
              type === 'Projets' ||
              type === 'Tâches' ||
              type === 'Diagrammes de Gantt' ||
              type === 'Feuilles de temps' ||
              type === 'Diagrammes feuilles de temps' ||
              type === 'Absences'
            "
          >
            <a href="#" class="btn btn-success btn-block" @click="addStat()">
              Rechercher
            </a>
          </div>
        </div>

        <span
          v-if="type === 'Taux d\'occupation'"
          class="text-xs"
          v-text="calcul"
        ></span>

        <div class="row" v-if="type === 'Projets'">
          <div class="col-md-12 d-flex">
            <div class="card card-table flex-fill">
              <div class="card-header">
                <h3 class="card-title mb-0">Projets</h3>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-nowrap custom-table mb-0">
                    <thead>
                      <tr>
                        <th>Reference</th>
                        <th>Nom</th>
                        <th>Date de debut</th>
                        <th>Date de fin</th>
                        <th>Tâche encours</th>
                        <th>Tâche terminées</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <template
                        v-for="projet in projets"
                        :key="projet.id_projet"
                      >
                        <tr>
                          <td>{{ projet.reference_projet }}</td>
                          <td>
                            {{ projet.nom_projet }}
                          </td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>
                            <span
                              v-if="projet.etat == 0"
                              class="badge bg-inverse-success"
                              >EN COURS</span
                            >
                            <span
                              v-if="projet.etat == 2"
                              class="badge bg-inverse-warning"
                              >TERMINER</span
                            >
                          </td>
                        </tr>
                      </template>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row" v-if="type === 'Tâches'">
          <div class="col-md-12 d-flex">
            <div class="card card-table flex-fill">
              <div class="card-header">
                <h3 class="card-title mb-0">Tâches</h3>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-nowrap custom-table mb-0">
                    <thead>
                      <tr>
                        <th>Projets</th>
                        <th>Tâche</th>
                        <th>Date de debut</th>
                        <th>Date de fin</th>
                        <th>Etat</th>
                        <th>Progression</th>
                      </tr>
                    </thead>
                    <tbody>
                      <template v-for="tache in taches" :key="tache.id_tache">
                        <tr>
                          <td>
                            {{ tache.project.nom_projet }}
                          </td>
                          <td>
                            {{ tache.nom_tache }}
                          </td>
                          <td></td>
                          <td></td>                   
                          <td>
                            <span
                              v-if="tache.statut == 0"
                              class="badge bg-inverse-warning"
                              >EN COURS</span
                            >
                            <span
                              v-if="tache.statut == 2"
                              class="badge bg-inverse-success"
                              >TERMINER</span
                            >
                          </td>
                           <td>{{ tache.progression }}%</td>
                        </tr>
                      </template>
                    </tbody>
                  </table>
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
import Header from "../layouts/Header";
import Sidebar from "../layouts/Sidebar";
import Multiselect from "@vueform/multiselect";
export default {
  name: "ListUsers",
  data() {
    return {
      type: "",
      calcul: "",
      projets: {},
      taches: {},
      feuilles: {},
      code: "",
      couleur: "",
      ddebut: "",
      ffin: "",
      user_id: "",
      users: {},
      options: [
        "Taux d'occupation",
        "Tâches",
        "Projets",
        "Diagrammes de Gantt",
        "Feuilles de temps",
        "Absences",
        "Diagrammes feuilles de temps",
        "Recherche de projet",
        "Liste de tous les projets (Vue par projet)",
        "Liste de tous les projets (Vue par coût)",
        "Timeline",
        "Autre",
      ],
      codes: ["Code couleur", "Collaborateur"],
      couleurs: ["ROUGE", "ORANGE", "VERT"],
    };
  },
  created() {
    this.fetchUsers();
  },
  mounted() {
    setInterval(() => {
      axios
        .get("/api/users")
        .then((response) => (this.users = response.data))
        .catch((error) => {
          this.errors.push(error);
        });
    }, 2000);
  },
  methods: {
    fetchUsers() {
      axios.get("/api/users").then((response) => {
        this.users = response.data;
      });
    },
    addStat() {
      axios
        .post("/api/getStat", {
          type: this.type,
          ddebut: this.ddebut,
          ffin: this.ffin,
          user_id: this.user_id,
        })
        .then((response) => {
          this.calcul = response.data;
          this.projets = response.data;
          this.taches = response.data;
          this.feuilles = response.data;
        })
        .catch((error) => console.log(error));
    },
  },
  components: {
    Sidebar,
    Header,
    Multiselect,
  },
};
</script>