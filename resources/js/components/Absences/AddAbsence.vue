<template>
  <div id="add_leave" class="modal custom-modal fade" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Demander une permission</h5>
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
                >Type de permission<span class="text-danger">*</span></label
              >
              <multiselect
                v-model="type"
                :options="options"
                placeholder="Choisir le type de permission"
              >
              </multiselect>
            </div>
            <div class="form-group">
              <label>Du <span class="text-danger">*</span></label>
              <input
                type="datetime-local"
                class="form-control"
                v-model="date_debut"
              />
            </div>
            <div class="form-group">
              <label>Au <span class="text-danger">*</span></label>
              <input
                type="datetime-local"
                class="form-control"
                v-model="date_fin"
              />
            </div>
            <div class="form-group">
              <label>Motif <span class="text-danger">*</span></label>
              <a
                class="addjustify"
                style="float: right"
                href="#"
                data-toggle="modal"
              >
                <i class="fa fa-plus m-r-5"></i> Ajouter justificatif
              </a>
              <a
                class="closejustify"
                style="float: right; display: none"
                href="#"
                data-toggle="modal"
              >
                <i class="fa fa-minus m-r-5"></i> cacher
              </a>
              <textarea
                rows="4"
                class="form-control"
                v-model="motif"
              ></textarea>
            </div>

            <div class="form-group justificatif" style="display: none">
              <label>Justificatif</label>
              <input
                class="form-control"
                multiple
                type="file"
                id="fichier_conge"
              />
            </div>
            <div class="submit-section">
              <button
                type="button"
                class="btn btn-primary submit-btn"
                @click="storeConge"
              >
                Demander
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Multiselect from "@vueform/multiselect";
import axios from "axios";

export default {
  components: {
    Multiselect,
  },
  data() {
    return {
      type: "",
      date_debut: "",
      date_fin: "",
      motif: "",
      options: ["CONGE", "PERMISSION", "ARRET MALADIE"],
    };
  },
  mounted() {
    this.fetchConge();
  },
  methods: {
    fetchConge() {
      axios.get("/api/conges").then((response) => {
        this.conges = response.data;
      });
    },
    storeConge() {
      axios
        .post("/api/conges", {
          date_debut: this.date_debut,
          date_fin: this.date_fin,
          motif: this.motif,
          type: this.type,
        })
        .then((response) => {
          this.conges = response.data;
          this.fetchConge();
          $("#add_leave").modal("hide");
        })
        .catch((error) => console.log(error));
    },
  },
  name: "AddAbsence",
};
</script>

<style scoped>
</style>
