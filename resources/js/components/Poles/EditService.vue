<template>
    <div id="edit_department" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modifier pôle</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Nom du pôle <span class="text-danger">*</span></label>
                            <input class="form-control" id="nom_service" name="nom_service" v-model="servicetoedit.nom_service" type="text">
                        </div>
                        <div class="submit-section">
                            <button class="btn btn-primary submit-btn" @click="saveService" data-dismiss="modal">Modifier</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['servicetoedit'],
    methods: {
        saveService() {
            axios.patch('/api/services/' + this.servicetoedit.id_service, {
                nom_service: this.servicetoedit.nom_service,
            })
                .then(response =>  this.$emit('task-updated', response))
                .catch(error => console.log(error));
        }
    },
    name: "EditService"
}
</script>

<style scoped>

</style>
