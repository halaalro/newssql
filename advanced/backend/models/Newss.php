<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "newss".
 *
 * @property int $id
 * @property int $user_id
 * @property int $category_id
 * @property string $title
 * @property string $body
 * @property string $image
 * @property string $created_at
 * @property string|null $updated_at
 * @property int $status
 */
class Newss extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'newss';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [[ 'title', 'body', 'image'], 'required'],
            [[ 'category_id','status'], 'integer'],
            [['body'], 'string'],
            [['user_id','created_at', 'updated_at'], 'safe'],
            [['title'], 'string', 'max' => 255],
            [['image'],'file','extensions'=>'jpg,png,gif','maxFiles'=>3]

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
            'category_id' => 'Category ID',
            'title' => 'Title',
            'body' => 'Body',
            'image' => 'Image',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'status' => 'status',
        ];
    }
    public function getUser(){
        return $this->hasOne(User::className(),['id'=>'user_id']);
        
    }
    public function getCategoryNews(){
        return $this->hasOne(CategoryNews::className(),['id'=>'category_id']);
    }
    
}
