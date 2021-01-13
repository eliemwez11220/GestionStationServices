
<?php
$date_jour = date('Y-m-d');
//Date minimale
//$date_max_naissance = new DateTime($date_jour);
//$date_max_naissance->modify('-18 year');
$date_max_naissance = ((new DateTime())->modify('-18 year'))->format('Y-m-d');
?>
<div class="row">
    <div class="col-md-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Creation d'un nouveau point de vente</h3>
            </div>
            <?php echo form_open('shopVente/add'); ?>
            <div class="box-body">
              <div class="row clearfix">
          <div class="col-md-6">
            <label for="libelle" class="control-label"><span class="text-danger">*</span>
            Nom du point de vente</label>
            <div class="form-group">
              <input type="text" name="libelle" value="<?php echo $this->input->post('libelle'); ?>" class="form-control" id="libelle" />
              <span class="text-danger"><?php echo form_error('libelle');?></span>
            </div>
          </div><div class="col-md-6">
            <label for="shop_qte_stock" class="control-label"><span class="text-danger">*</span>
            Quantite Stock Initiale</label>
            <div class="form-group">
              <input type="number" name="shop_qte_stock" value="<?php echo $this->input->post('shop_qte_stock'); ?>" class="form-control" id="shop_qte_stock" min="1"/>
              <span class="text-danger"><?php echo form_error('shop_qte_stock');?></span>
            </div>
          </div>
          <div class="col-md-6">
            <label for="shop_adresse" class="control-label">Adresse du lieu de localisation ou ville</label>
            <div class="form-group">
              <input type="text" name="shop_adresse" min="1" value="<?php echo $this->input->post('shop_adresse'); ?>" class="form-control" id="shop_adresse" />
              <span class="text-danger"><?php echo form_error('shop_adresse');?></span>
            </div>
          </div>
          
        
      </div>
            <div class="box-footer">
              <button type="submit" class="btn btn-success">
                <i class="fa fa-check"></i> Enregistrer point vente
              </button>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>