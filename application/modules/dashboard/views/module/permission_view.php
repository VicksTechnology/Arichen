<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('dashboard/module_permission/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <a href="<?php echo base_url('dashboard/module_permission/create') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>
                        <a href="#" class="btn btn-sm btn-danger" onclick="printContent('PrintMe')" title="Print"> <i class="fa fa-print"></i></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body" id="PrintMe">

                    <div class="form-group row">
                        <label for="blood" class="col-sm-2"><?php echo display('username') ?> *</label>
                        <div class="col-sm-10">
                            <?php if (!empty($permission[0])) ?>
                            <?php echo $permission[0]->user_name ?> 
                        </div>
                    </div>

                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('module_name') ?></th>
                                <th><?php echo display('create') ?></th>
                                <th><?php echo display('read') ?></th>
                                <th><?php echo display('update') ?></th>
                                <th><?php echo display('delete') ?></th> 
                            </tr>
                        </thead>
                        <?php $sl = 1 ?>
                        <?php if (!empty($permission)) ?>
                        <?php foreach ($permission as $value) { ?> 
                        <tbody>
                            <tr>
                                <td><?php echo ($sl++) ?></td>
                                <td><?php echo $value->module_name ?></td>
                                <td class="text-center"><?php echo (($value->create==1)?"<i class='fa fa-check text-success'></i>":"<i class='fa fa-times text-danger'></i>") ?></td> 
                                <td class="text-center"><?php echo (($value->read==1)?"<i class='fa fa-check text-success'></i>":"<i class='fa fa-times text-danger'></i>") ?></td> 
                                <td class="text-center"><?php echo (($value->update==1)?"<i class='fa fa-check text-success'></i>":"<i class='fa fa-times text-danger'></i>") ?></td> 
                                <td class="text-center"><?php echo (($value->delete==1)?"<i class='fa fa-check text-success'></i>":"<i class='fa fa-times text-danger'></i>") ?></td> 
                            </tr>
                        </tbody>
                        <?php } ?>
                    </table>
          
                <?php echo form_close() ?>

            </div>
        </div>
    </div>
</div>

 