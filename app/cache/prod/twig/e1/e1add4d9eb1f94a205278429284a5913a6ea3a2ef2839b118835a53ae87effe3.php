<?php

/* blocks/header.html.twig */
class __TwigTemplate_f6c025d24e75c34e404fec7e6e753f160b5d463eeb5993c2a4576eaf5b5cef3f extends Twig_Template
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
        echo "<div id=\"header-wrap\">
    <div id=\"head-logo\"> 
        <a href=\"JavaScript:window.open('http://javascript.ru','javascript', 'width=800,height=600');\">
            <img src=\"";
        // line 4
        echo twig_escape_filter($this->env, $this->env->getExtension('asset')->getAssetUrl("img/logo4.png"), "html", null, true);
        echo "\" id=\"logoPicture\" class=\"headimage\" alt=\"Логотип\" name=\"logo\"> 
        </a>
    </div>
    ";
        // line 7
        $this->loadTemplate("blocks/admin.html.twig", "blocks/header.html.twig", 7)->display($context);
        // line 8
        echo "    <div id=\"head-menu\">
        ";
        // line 9
        echo $this->env->getExtension('http_kernel')->renderFragment($this->env->getExtension('http_kernel')->controller("AppBundle:Default:menu"));
        echo "
    </div>
</div>
<div id=\"main-pict\">
    <a><img src=\"";
        // line 13
        echo twig_escape_filter($this->env, $this->env->getExtension('asset')->getAssetUrl("img/picture.jpg"), "html", null, true);
        echo "\" alt=\"Картинка\" class=\"main-picture\"></a>
</div>";
    }

    public function getTemplateName()
    {
        return "blocks/header.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  42 => 13,  35 => 9,  32 => 8,  30 => 7,  24 => 4,  19 => 1,);
    }
}
/* <div id="header-wrap">*/
/*     <div id="head-logo"> */
/*         <a href="JavaScript:window.open('http://javascript.ru','javascript', 'width=800,height=600');">*/
/*             <img src="{{ asset('img/logo4.png') }}" id="logoPicture" class="headimage" alt="Логотип" name="logo"> */
/*         </a>*/
/*     </div>*/
/*     {% include 'blocks/admin.html.twig' %}*/
/*     <div id="head-menu">*/
/*         {{ render(controller('AppBundle:Default:menu')) }}*/
/*     </div>*/
/* </div>*/
/* <div id="main-pict">*/
/*     <a><img src="{{ asset('img/picture.jpg') }}" alt="Картинка" class="main-picture"></a>*/
/* </div>*/
