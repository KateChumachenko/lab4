<?php

/* blocks/layout.html.twig */
class __TwigTemplate_9961cba0ff7eb7a8b578b75018fd4b904dfa12b1e4b924208cc919cfd20fa009 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", "blocks/layout.html.twig", 1);
        $this->blocks = array(
            'body' => array($this, 'block_body'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_body($context, array $blocks = array())
    {
        // line 3
        echo "    <div id=\"main-table\">
        ";
        // line 4
        $this->loadTemplate("blocks/header.html.twig", "blocks/layout.html.twig", 4)->display($context);
        // line 5
        echo "        <div id=\"main-cont\">
            ";
        // line 6
        $this->displayBlock('content', $context, $blocks);
        // line 8
        echo "        </div>
        <div id=\"main-adv\">
            ";
        // line 10
        $this->loadTemplate("blocks/adv.html.twig", "blocks/layout.html.twig", 10)->display($context);
        // line 11
        echo "        </div>
        <div id=\"main-copy\">
            ";
        // line 13
        $this->loadTemplate("blocks/copy.html.twig", "blocks/layout.html.twig", 13)->display($context);
        // line 14
        echo "        </div>
    </div>
";
    }

    // line 6
    public function block_content($context, array $blocks = array())
    {
        // line 7
        echo "            ";
    }

    public function getTemplateName()
    {
        return "blocks/layout.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  63 => 7,  60 => 6,  54 => 14,  52 => 13,  48 => 11,  46 => 10,  42 => 8,  40 => 6,  37 => 5,  35 => 4,  32 => 3,  29 => 2,  11 => 1,);
    }
}
/* {% extends 'base.html.twig' %}*/
/* {% block body %}*/
/*     <div id="main-table">*/
/*         {% include 'blocks/header.html.twig' %}*/
/*         <div id="main-cont">*/
/*             {% block content %}*/
/*             {% endblock %}*/
/*         </div>*/
/*         <div id="main-adv">*/
/*             {% include 'blocks/adv.html.twig' %}*/
/*         </div>*/
/*         <div id="main-copy">*/
/*             {% include 'blocks/copy.html.twig' %}*/
/*         </div>*/
/*     </div>*/
/* {% endblock %}*/
