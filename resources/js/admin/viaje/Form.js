import AppForm from '../app-components/Form/AppForm';

Vue.component('viaje-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                id_lugar:  '' ,
                nombre:  '' ,
                notas:  '' ,
                
            }
        }
    }

});