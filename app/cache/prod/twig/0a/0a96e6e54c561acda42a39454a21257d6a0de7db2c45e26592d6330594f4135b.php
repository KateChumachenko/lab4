<?php

/* blocks/adv.html.twig */
class __TwigTemplate_0b5141b1734825956afbc1b47e3d7b101b84364cd10a839d551842110e1e7e0d extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<h4>Реклама</h4>
<a href=\"http://paulkoval.com\"><img src=\"";
        // line 2
        echo twig_escape_filter($this->env, $this->env->getExtension('asset')->getAssetUrl("img/lakefront_banner_wide2.jpg"), "html", null, true);
        echo "\" alt=\"Проплаченный сайт\"></a>";
    }

    public function getTemplateName()
    {
        return "blocks/adv.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  22 => 2,  19 => 1,);
    }
}
/* <h4>Реклама</h4>*/
/* <a href="http://paulkoval.com"><img src="{{ asset('img/lakefront_banner_wide2.jpg') }}" alt="Проплаченный сайт"></a>*/
