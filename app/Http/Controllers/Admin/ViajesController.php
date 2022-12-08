<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Viaje\BulkDestroyViaje;
use App\Http\Requests\Admin\Viaje\DestroyViaje;
use App\Http\Requests\Admin\Viaje\IndexViaje;
use App\Http\Requests\Admin\Viaje\StoreViaje;
use App\Http\Requests\Admin\Viaje\UpdateViaje;
use App\Models\Viaje;
use Brackets\AdminListing\Facades\AdminListing;
use Exception;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Response;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class ViajesController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexViaje $request
     * @return array|Factory|View
     */
    public function index(IndexViaje $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(Viaje::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'id_lugar', 'nombre', 'notas'],

            // set columns to searchIn
            ['id', 'nombre', 'notas']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.viaje.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.viaje.create');

        return view('admin.viaje.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreViaje $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreViaje $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the Viaje
        $viaje = Viaje::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/viajes'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/viajes');
    }

    /**
     * Display the specified resource.
     *
     * @param Viaje $viaje
     * @throws AuthorizationException
     * @return void
     */
    public function show(Viaje $viaje)
    {
        $this->authorize('admin.viaje.show', $viaje);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Viaje $viaje
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(Viaje $viaje)
    {
        $this->authorize('admin.viaje.edit', $viaje);


        return view('admin.viaje.edit', [
            'viaje' => $viaje,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateViaje $request
     * @param Viaje $viaje
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateViaje $request, Viaje $viaje)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values Viaje
        $viaje->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/viajes'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/viajes');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyViaje $request
     * @param Viaje $viaje
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyViaje $request, Viaje $viaje)
    {
        $viaje->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyViaje $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyViaje $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    Viaje::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
