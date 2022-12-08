<div class="form-group row align-items-center" :class="{'has-danger': errors.has('latitud'), 'has-success': fields.latitud && fields.latitud.valid }">
    <label for="latitud" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.lugare.columns.latitud') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.latitud" v-validate="'required|decimal'" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('latitud'), 'form-control-success': fields.latitud && fields.latitud.valid}" id="latitud" name="latitud" placeholder="{{ trans('admin.lugare.columns.latitud') }}">
        <div v-if="errors.has('latitud')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('latitud') }}</div>
    </div>
</div>

<div class="form-group row align-items-center" :class="{'has-danger': errors.has('logitud'), 'has-success': fields.logitud && fields.logitud.valid }">
    <label for="logitud" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.lugare.columns.logitud') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.logitud" v-validate="'required|decimal'" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('logitud'), 'form-control-success': fields.logitud && fields.logitud.valid}" id="logitud" name="logitud" placeholder="{{ trans('admin.lugare.columns.logitud') }}">
        <div v-if="errors.has('logitud')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('logitud') }}</div>
    </div>
</div>

<div class="form-group row align-items-center" :class="{'has-danger': errors.has('nombre'), 'has-success': fields.nombre && fields.nombre.valid }">
    <label for="nombre" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.lugare.columns.nombre') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.nombre" v-validate="'required'" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('nombre'), 'form-control-success': fields.nombre && fields.nombre.valid}" id="nombre" name="nombre" placeholder="{{ trans('admin.lugare.columns.nombre') }}">
        <div v-if="errors.has('nombre')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('nombre') }}</div>
    </div>
</div>


