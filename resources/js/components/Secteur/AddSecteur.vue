<template>
  <div class="modal custom-modal fade" id="add_holiday" role="dialog">
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
              <label>Nom secteur <span class="text-danger">*</span></label>
              <input
                class="form-control"
                type="text"
                v-model="nom_secteur"
                placeholder="exemple: ASSURANCE"
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
              v-on:click="displaynumbers"
                type="button"
                class="btn btn-primary submit-btn"
                @click="storeSecteur"
              >
                Ajouter
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { createToaster } from "@meforma/vue-toaster";

const toaster = createToaster({
  /* options */
});
export default {
  data() {
    return {
      nom_secteur: "",
      errors: {},
    };
  },
  methods: {
    displaynumbers: function (event) {
      // $(".modal").modal('hide');
      	$('#add_holiday').toggle()
      // alert("Non");
    },
    storeSecteur() {
      this.error = false;
      axios
          .post("/api/secteurs", {
            nom_secteur: this.nom_secteur,
          })
        .then((response) => {
          console.log(response.data);
          toaster.success(`Secteur ajouté avec succès`, {
            position: "top-right",
          });
          this.nom_secteur = "";
          this.secteurs = response.data;
          this.fetchSecteur();
          
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(
              `Secteur non ajouté . Veuillez remplir le champs demandé`,
              {
                position: "top-right",
                duration: 4000,
              }
            );
          }
        });
    },
  },
  name: "AddSecteur",
};
</script>

<style scoped>
</style>
