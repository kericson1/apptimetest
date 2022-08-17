<template>
    <div class="modal custom-modal fade" id="add_grade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter client</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Nom grade <span class="text-danger">*</span></label>
                            <input class="form-control" type="text" v-model="nom_grade" placeholder="exemple: DIRECTEUR">
                            <p style="color: red" class="text-red" v-if="errors.nom_grade" v-text="errors.nom_grade[0]"></p>
                        </div>
                        <div class="submit-section">
                            <button type="button" class="btn btn-primary submit-btn" @click="storeGrade">Ajouter
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

const toaster = createToaster({ /* options */ });
export default {
    data() {
        return {
            nom_grade: '',
            errors: {}
        }
    },
    methods: {
        storeGrade() {
            this.error = false;
            axios
                .post('/api/grades', {
                    nom_grade: this.nom_grade,
                })
                .then((response) =>{
                    console.log(response.data)
                    toaster.success(`Grade crée avec succès`,{
                        position: "top-right",
                    });
                })
                .catch((error) => {

                    if (error.response.status === 422) {
                        this.errors = error.response.data.errors
                        toaster.error(`Grade non crée . Veuillez remplir les champs demandé`,{
                            position: "top-right",
                            duration: 4000
                        });
                    }
                });
        },
    },
    name: "AddGrade"
}
</script>

<style scoped>

</style>
