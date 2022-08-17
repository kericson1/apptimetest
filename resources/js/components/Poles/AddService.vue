<template>
    <div id="add_department" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajoût de pôle</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Nom du pôle <span class="text-danger">*</span></label>
                            <input class="form-control" type="text" v-model="nom_service">
                        </div>
                        <div class="submit-section">
                            <button class="btn btn-primary submit-btn" @click="storeService"
                                    data-dismiss="modal">Ajouter</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {

    methods: {
        storeService() {
            axios.post('/api/services', {
                nom_service: this.nom_service,
            })
                .then(response => this.$emit('task-added', response))
                .catch(error => console.log(error));
        }
    },
    name: "AddService"
}
</script>

<style scoped>

</style>
