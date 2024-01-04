<?php

namespace backend\models;
use backend\models\User;


use Yii;

/**
 * This is the model class for table "category_news".
 *
 * @property int $id
 * @property int $user_id
 * @property string $name
 * @property string $created_at
 * @property string|null $updated_at
 */
class CategoryNews extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'category_news';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [[ 'name'], 'required'],
            [['user_id','created_at', 'updated_at'], 'safe'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'name' => 'News type',
            'created_at' => 'Created Time',
            'updated_at' => 'Updated Time',
        ];
    }
    public function getUser(){
        return $this->hasOne(User::className(),['id'=>'user_id']);
    }
}
