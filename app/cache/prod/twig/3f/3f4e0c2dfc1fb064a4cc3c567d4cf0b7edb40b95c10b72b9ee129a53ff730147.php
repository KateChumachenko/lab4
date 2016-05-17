<?php

/* blocks/index.html.twig */
class __TwigTemplate_5d1e9ed6acef13763a318907aed8f7b6a9b33ce79dffd4fb59f329296df3841d extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("blocks/layout.html.twig", "blocks/index.html.twig", 1);
        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "blocks/layout.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_title($context, array $blocks = array())
    {
        // line 3
        echo "    ";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["page"]) ? $context["page"] : null), "name", array()), "html", null, true);
        echo " - ";
        $this->displayParentBlock("title", $context, $blocks);
        echo "
";
    }

    // line 5
    public function block_content($context, array $blocks = array())
    {
        // line 6
        echo "    ";
        echo $this->getAttribute((isset($context["page"]) ? $context["page"] : null), "content", array());
        echo "
";
    }

    public function getTemplateName()
    {
        return "blocks/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  44 => 6,  41 => 5,  32 => 3,  29 => 2,  11 => 1,);
    }
}
/* {% extends 'blocks/layout.html.twig' %}*/
/* {% block title %}*/
/*     {{ page.name }} - {{ parent() }}*/
/* {% endblock %}*/
/* {% block content %}*/
/*     {{ page.content | raw }}*/
/* {% endblock %}*/
