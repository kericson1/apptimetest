<template>
  <div id="file_projet" class="modal custom-modal fade" role="dialog">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Ajouter fichier au projet</h5>
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
            <input type="text" v-model="projectoedit.id_projet" />
            <div class="row">
              <div class="col-sm-12">
                <div class="form-group">
                  <label>Fichier</label>
                  <input
                    class="form-control"
                    type="file"
                    name="files"
                    @change="handleFiles"
                  />
                </div>
              </div>
            </div>
            <div class="submit-section">
              <input
                type="submit"
                class="btn btn-primary submit-btn btn_tasks"
                value="Ajouter"
              />
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import Form from "vform";
import axios from 'axios';
export default {
  props: ["projectoedit"],
  data() {
    return {
      files: null,
      // form: Form.make({
      //   files: null,
      // }),
    };
  },
  methods: {
    handleFiles(event) {
      const files = event.target.files[0];
    },
    async submit() {
      axios
      .post("/api/addfile", {
        files: this.files,
        id_projet: this.projectoedit.id_projet

      }).then((res) => {
        if (res.status === 200) {
          toaster.success(`Fichier ajouté avec succès`, {
            position: "top-right",
          });
        }
        // window.$("#showModal").modal("hide");
      });
    },
  },
  name: "Progression",
};
</script>