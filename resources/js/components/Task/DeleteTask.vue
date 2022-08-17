<template>
  <div class="modal custom-modal fade" id="delete_task" role="dialog">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-body">
          <div class="form-header">
            <h3>Supprimer tâche</h3>
            <p>Vous êtes sûr de vouloir supprimer ?</p>
          </div>
          <div class="modal-btn delete-action">
            <div class="row">
              <div class="col-6">
                <a
                  href="javascript:void(0);"
                  class="btn btn-primary continue-btn"
                  @click="deleteTask"
                  >Supprimer</a
                >
              </div>
              <div class="col-6">
                <a
                  href="javascript:void(0);"
                  data-dismiss="modal"
                  class="btn btn-primary cancel-btn"
                  >Annuler</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["tachestoedit"],
  methods: {
    deleteTask() {
      axios
        .patch("/api/taches/supprime/" + this.tachestoedit.id_tache)
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Tâche Supprimé avec sucess`, {
              position: "top-right",
            });
            this.taches = response.data;
            this.fetchTask();
          }
        })
        // .then((response) => (this.taches = response.data))
        .catch((error) => console.log(error));
    },
  },
  name: "DeleteTask",
};
</script>

<style scoped>
</style>
