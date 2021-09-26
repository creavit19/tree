<?php

namespace Tree\Classes;

class Model
{
	
  protected $pdo;
  
	public function __construct()
	{
    
    $config = include( dirname(__DIR__) . '\config.php' );
    
    $dsn = "mysql:host={$config['host']};dbname={$config['db']};charset={$config['charset']}";
    
    $opt = [
        \PDO::ATTR_ERRMODE            => \PDO::ERRMODE_EXCEPTION,
        \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
        \PDO::ATTR_EMULATE_PREPARES   => false,
    ];

    $this->pdo = new \PDO($dsn, $config['user'], $config['password'], $opt);

  }

  public function readData( $level )
  {
   
    if( $level == 0 ) return $this->pdo->query('SELECT id, name, idParent FROM entities')->fetchAll();

    $joins = 'entities LEFT JOIN entities AS entities_1 ON entities.idParent = entities_1.id';

    for($i = 2; $i <= $level; $i++) {
      $joins = '(' . $joins . ') LEFT JOIN entities AS entities_' 
                . $i . ' ON entities_' . ($i - 1) .  '.idParent = entities_' . $i . '.id'; 
    }

    $sql = 'SELECT entities.id, entities.name, entities.idParent FROM '
              . $joins . ' WHERE (entities_' . $level . '.id) Is Null;';

    return $this->pdo->query($sql)->fetchAll();

  }
	
  public function getSelect()
  {
    if(isset($_POST['level'])){
      return filter_var( $_POST['level'],
                        FILTER_VALIDATE_INT,
                        [
                          'default' => 3,
                          'min_range' => 0,
                          'max_range' => 7,
                        ]);
    } else {
      return 3;
    }
  }
  
}
