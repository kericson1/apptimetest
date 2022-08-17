<template>
    <div id="block_task" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered"
             role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Supprimer une personne de la tâche</h5>
                    <button type="button" class="close"
                            data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form role="form" method="POST"
                          action="">
                        <div class="input-group m-b-30">
                            <label>Sélectionner une personne</label>
                            <select class="select"
                                    name="user_id[]"
                                    multiple="multiple">
                                <option
                                    value=""
                                    selected="true">
                                </option>
                            </select>
                        </div>
                        <div class="submit-section">
                            <button
                                class="btn btn-primary submit-btn btn_block">
                                Supprimer
                            </button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "BlockTask"
}
</script>

<style scoped>

</style>
