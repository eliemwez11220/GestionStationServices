<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Listing des intrants demandées</h3>
                <div class="box-tools">
                    <a href="<?php echo site_url('demande/add'); ?>" class="btn btn-success btn-sm">Ajouter une nouvelle demande</a>
                </div>
            </div>
            <div class="box-body">
                <div class="table-responsive">
                    <table class="table table-striped table-sm table-condensed">
                        <tr>
                            <th>#</th>
                            <th>Code Produit</th>
                            <th>Quantité achatée</th>
                            <th>Prix total</th>
                            <th>Date Achat</th>
                            <th>Noms Client</th>
                            <th>Telephone</th>
                           
                        </tr>
                        <?php $count=1; foreach($all_demandes as $t){ ?>
                            <tr>
                                <td><?php echo $count++; ?></td>
                                <td><?php echo $t->intrant_sid; ?></td>
                                <td><?php echo $t->qte_demandee; ?></td>
                                <td><?php echo $t->prix_total; ?>.00</td>
                                <td><?php echo $t->date_demandee; ?></td>
                                <td><?php echo $t->benef_nom; ?> <?php echo $t->benef_prenom; ?></td>
                                <td><?php echo $t->benef_phone; ?></td>
                            </tr>
                        <?php } ?>
                    </table>
                </div>
                <div class="pull-right">
                    <?php echo $this->pagination->create_links(); ?>
                </div>
            </div>

        </div>
    </div>
</div>
