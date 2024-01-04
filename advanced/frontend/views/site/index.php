<?php
use yii\helpers\Html;
use yii\helpers\Url;
use frontend\components\SmallBody;
use yii\widgets\LinkPager;
use common\models\User;

use yii\widgets\ListView;
/** @var yii\web\View $this */

$this->title = 'My Yii Application';
?>

    <div class="body-content">
    <div class="contener">
<div class="row">
<?php foreach ($news as $newss) {?>
    
    
 

   <div class="col-sm-6 col-md-3 myjob">
   <?php if(empty($newss->image)){

     $img=Url::to('@web/img/elzero.jpg');
     }
     else{
     $img=Url::to('@web/img/upload/'.$newss->image);
}?>
   <div class="immg"><?=Html::img($img)?></div>


   <h3><?=$newss->title?></h3>
   <p><?=$newss->categoryNews->name?></p>
   <p><?=SmallBody::widget(['body'=>$newss->body,'count'=>7])?></p>
        

        
        <!-- <p>
         <?=$newss->user->username?>
      </p> -->










        
        <a href="<?=Url::toRoute(['newss/viewcuctom','id'=>$newss->id])?>">reed more..</a>


        

        </div>
        <?php }?>
  </div>
  
      
      
      
</div>
<?=
 LinkPager::widget([
    'pagination' => $pagination
]);?>