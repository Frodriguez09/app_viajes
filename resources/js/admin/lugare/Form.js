import AppForm from '../app-components/Form/AppForm';

Vue.component('lugare-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                latitud:  '' ,
                logitud:  '' ,
                nombre:  '' ,
                
            }
        }
    }

});