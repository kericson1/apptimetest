<template>
    <div id="edit_leave" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Voir absence</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Validation <span class="text-danger">*</span></label>
                            <multiselect
                                v-model="type"
                                :options="options"
                                placeholder="Choisir le type de permission">
                            </multiselect>
                        </div>

                        <div class="form-group">
                            <label>Motif <span class="text-danger">*</span></label>
                            <textarea rows="4" class="form-control"
                                      name="motif_etat"></textarea>
                        </div>
                        <div class="submit-section">
                            <button class="btn btn-primary submit-btn">Enregister</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Multiselect from "@vueform/multiselect";

export default {
    components: {
        Multiselect,
    },
    data() {
        return {
            options: [
                'ACCEPTER',
                'REFUSER',
            ]
        }
    },
    name: "ModalValidationAbsence"
}
</script>

<style scoped>

</style>
