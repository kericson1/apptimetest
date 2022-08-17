<template>
  <div id="add_asset" class="modal custom-modal fade" role="dialog">
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Ajouter</h5>
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
              <div class="col-md-6">
                <div class="form-group">
                  <label>Type</label>
                  <Multiselect
                    v-model="value"
                    :options="options"
                    placehoder="Choisir le type"
                  />
                </div>
              </div>
              <div class="col-md-6" v-if="value === 'Logiciel'">
                <div class="form-group">
                  <label>Selectionnez le logiciel</label>
                  <Multiselect
                    v-model="logiciel"
                    :options="logiciels"
                    placeholder="Choisir l'equipement"
                  />
                </div>
              </div>
              <div class="col-md-6" v-if="value === 'Physique'">
                <div class="form-group">
                  <label>Numero d'identification</label>
                  <input
                    class="form-control"
                    type="text"
                    v-model="identification"
                  />
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6" v-if="value === 'Physique'">
                <div class="form-group">
                  <label>Selectionnez l'equipement</label>
                  <Multiselect
                    v-model="equipement"
                    :options="equipements"
                    placeholder="Choisir l'equipement"
                  />
                </div>
              </div>
              <div class="col-md-6" v-if="value === 'Physique'">
                <div class="form-group">
                  <label>Modele</label>
                  <input class="form-control" type="text" v-model="modele" />
                </div>
              </div>
            </div>
            <div class="row" v-if="equipement === 'Ordinateur'">
              <div class="col-md-6">
                <div class="form-group">
                  <label>CPU</label>
                  <input class="form-control" type="text" v-model="cpu" />
                </div>
              </div>
              <div class="col-md-6" v-if="equipement === 'Ordinateur'">
                <div class="form-group">
                  <label>GPU</label>
                  <input class="form-control" type="text" v-model="gpu" />
                </div>
              </div>
            </div>
            <div class="row" v-if="equipement === 'Ordinateur'">
              <div class="col-md-6">
                <div class="form-group">
                  <label>RAM</label>
                  <input class="form-control" type="text" v-model="ram" />
                </div>
              </div>
              <div class="col-md-6" v-if="equipement === 'Ordinateur'">
                <div class="form-group">
                  <label>Type de clavier</label>
                  <input class="form-control" type="text" v-model="clavier" />
                </div>
              </div>
              <div class="col-md-6" v-if="equipement === 'Ordinateur'">
                <div class="form-group">
                  <label>Type de disque</label>
                  <Multiselect v-model="disque" :options="disques" />
                </div>
              </div>
              <div class="col-md-6" v-if="equipement === 'Ordinateur'">
                <div class="form-group">
                  <label>Capacite du dique</label>
                  <input class="form-control" type="text" v-model="capacite" />
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6" v-if="value === 'Physique'">
                <div class="form-group">
                  <label>Marque</label>
                  <Multiselect v-model="marque" :options="marques" />
                </div>
              </div>
              <div class="col-md-6" v-if="value === 'Physique'">
                <div class="form-group">
                  <label>Annee</label>
                  <input class="form-control" type="date" v-model="annee" />
                </div>
              </div>
              <div class="col-md-6" v-if="value === 'Logiciel'">
                <div class="form-group">
                  <label>De</label>
                  <input class="form-control" type="date" v-model="de" />
                </div>
              </div>
              <div class="col-md-6" v-if="value === 'Logiciel'">
                <div class="form-group">
                  <label>a</label>
                  <input class="form-control" type="date" v-model="a" />
                </div>
              </div>
              <div class="col-md-12">
                <div class="form-group">
                  <label>Description</label>
                  <textarea
                    class="form-control"
                    v-model="description"
                  ></textarea>
                </div>
              </div>
              <div class="col-md-6" v-if="value === 'Physique'">
                <div class="form-group">
                  <label>Etat</label>
                  <Multiselect
                    v-model="etat"
                    :options="etats"
                    placeholder="Choisir l'etat du materiel"
                  />
                </div>
              </div>
              <div class="col-md-6" v-if="value === 'Physique'">
                <div class="form-group">
                  <label>Numero MAC</label>
                  <input
                    class="form-control"
                    type="text"
                    v-model="numero_mac"
                  />
                </div>
              </div>
              <div class="col-md-6" v-if="equipement === 'Imprimante'">
                <div class="form-group">
                  <label>Type d'imprimantes</label>
                  <Multiselect
                    v-model="imprimante"
                    :options="imprimantes"
                    placeholder="Choisir le type d'imprimante"
                  />
                </div>
              </div>
            </div>
            <div class="submit-section">
                 <button type="button" class="btn btn-primary submit-btn" @click="storeMateriel">Demander</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import Multiselect from "@vueform/multiselect";
import { createToaster } from "@meforma/vue-toaster";
// import $ from "jquery";

const toaster = createToaster({
  /* options */
});
export default {
  components: {
    Multiselect,
  },
  data() {
    return {
      value: "",
      logiciel: "",
      identification: "",
      equipement: "",
      modele: "",
      cpu: "",
      gpu: "",
      ram: "",
      clavier: "",
      disque: "",
      capacite: "",
      marque: "",
      annee: "",
      de: "",
      a: "",
      description: "",
      numero_mac: "",
      etat: "",
      imprimante: "",
      etat: "",
      options: ["Logiciel", "Physique"],
      equipements: [
        "Ordinateur",
        "Telephone",
        "Tablette",
        "Imprimante",
        "Routeur",
        "Switch",
        "Serveur",
        "Souris",
        "Clavier",
        "Onduleur",
      ],
      marques: [
        "ASUS",
        "BROTHER",
        "DELL",
        "HP",
        "LENOVO",
        "COMPAQ",
        "CANON",
        "SAMSUNG",
        "APPLE",
        "KYOCERA",
        "TOSHIBA",
        "ACER",
        "MICROSOFT",
        "RAZER",
        "HUAWEI",
        "XIAOMI",
        "MSI",
        "ALIENWARE",
        "APC",
        "SONY",
        "FUJISU",
        "EPSON",
        "XEROX",
        "OKI",
        "TECNO",
        "INFINIX",
      ],
      disques: ["HDD", "SSD"],
      logiciels: ["ADOBE", "OFFICE", "JETBRAINS", "SAGE", "WINDOWS"],
      etats: ["EN STOCK", "EN PANNE"],
      imprimantes: ["JET D'ENCRE", "LASER"],
    };
  },
  methods: {
    storeMateriel() {
      axios
        .post("/api/equipements", {
          type: this.value,
          identification: this.identification,
          logiciel: this.logiciel,
          identification: this.identification,
          equipement: this.equipement,
          cpu: this.cpu,
          gpu: this.gpu,
          ram: this.ram,
          clavier: this.clavier,
          disque: this.disque,
          capacite: this.capacite,
          marque: this.marque,
          annee: this.annee,
          de: this.de,
          a: this.a,
          description: this.gpu,
          etat: this.etat,
        
        })
        .then((response) => {
          this.equipements = response.data;
           if (response.status === 200) {
            toaster.success(`Matériel ajouté`, {
              position: "top-right",
            });
          }
          // this.fetchConge();
        })
        .catch((error) => console.log(error));
    },
  },
  name: "AddMateriel",
};
</script>
<style src="@vueform/multiselect/themes/default.css"></style>