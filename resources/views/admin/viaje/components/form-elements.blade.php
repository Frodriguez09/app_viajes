<div class="form-group row align-items-center" :class="{'has-danger': errors.has('id_lugar'), 'has-success': fields.id_lugar && fields.id_lugar.valid }">
    <label for="id_lugar" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.viaje.columns.id_lugar') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.id_lugar" v-validate="''" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('id_lugar'), 'form-control-success': fields.id_lugar && fields.id_lugar.valid}" id="id_lugar" name="id_lugar" placeholder="{{ trans('admin.viaje.columns.id_lugar') }}">
        <div v-if="errors.has('id_lugar')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('id_lugar') }}</div>
    </div>
</div>

<div class="form-group row align-items-center" :class="{'has-danger': errors.has('nombre'), 'has-success': fields.nombre && fields.nombre.valid }">
    <label for="nombre" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.viaje.columns.nombre') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.nombre" v-validate="'required'" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('nombre'), 'form-control-success': fields.nombre && fields.nombre.valid}" id="nombre" name="nombre" placeholder="{{ trans('admin.viaje.columns.nombre') }}">
        <div v-if="errors.has('nombre')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('nombre') }}</div>
    </div>
</div>

<div class="form-group row align-items-center" :class="{'has-danger': errors.has('notas'), 'has-success': fields.notas && fields.notas.valid }">
    <label for="notas" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.viaje.columns.notas') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.notas" v-validate="'required'" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('notas'), 'form-control-success': fields.notas && fields.notas.valid}" id="notas" name="notas" placeholder="{{ trans('admin.viaje.columns.notas') }}">
        <div v-if="errors.has('notas')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('notas') }}</div>
    </div>
</div>


