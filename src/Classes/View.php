<?php

namespace Tree\Classes;

class View
{

  protected $data;
	protected $viewPath;
  protected $width;

	public function __construct()
	{
		$this->viewPath = dirname(__DIR__) . '/views/';
	}

  private function getView(string $view, array $data = [])
  {
    $viewPath = $this->viewPath . $view . '.php';
		ob_start();
		extract($data);
		require_once $viewPath;
		return ob_get_clean();
  }

  private function getViewFast($template, $data = []) 
  {
    $view = file_get_contents($this->viewPath . $template . '.php');
    $dataKeys = array_map(function($key) {
        return '<?php echo $' . $key . ' ?>';
    }, array_keys($data));
    $dataValues = array_values($data);
    return str_replace($dataKeys, $dataValues, $view);
  }


	public function renderDocument( $data, $selected )
	{
    $this->data = $data;
		echo $this->getView('document', 
                        [
                        'content' => $this->getContent(),
                        'selected' => $selected,
                        ]);
	}

  private function getBlocks( $id = 0, $level = 1 )
  {
    $html = '';
    foreach($this->data as $data){
      if($data['idParent'] == $id){
        $className = ' level' . $level;
        $subBlock = $this->getBlocks($data['id'], ($level + 1));
        if ( $subBlock == '' ) {
          $className .= ' leaf';
          $this->width++;
        }
        $html .= $this->getViewFast('block',
                                [
                                'blockContent' => $data['name'],
                                'subBlock' => $subBlock,
                                'className' => $className,
                                ]);

      }
    }
    return $html;
  }

  protected function getContent()
  {
    $this->width = 0;
    return $this->getViewFast('wrapper', [
      'content' => $this->getBlocks(),
      'width' => ( 124 * $this->width ),
    ]);
  }

}
