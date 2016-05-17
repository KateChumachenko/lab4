<?php

/* blocks/menu.html.twig */
class __TwigTemplate_97e3e60d795fed30c5cc97ec28fe739ac199a1ece638c5e862e60c40e9d70897 extends Twig_Template
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
        echo "<ul>
    ";
        // line 2
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["pages"]) ? $context["pages"] : null));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["page"]) {
            // line 3
            echo "        <li>
            <a href=\"";
            // line 4
            echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("show_page", array("url" => twig_slice($this->env, $this->getAttribute($context["page"], "url", array()), 1))), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->getAttribute($context["page"], "name", array()), "html", null, true);
            echo "</a>
        </li>
    ";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 7
            echo "        <li>
            <a href=\"/\">
                Главная
            </a>
        </li>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['page'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 13
        echo "</ul>";
    }

    public function getTemplateName()
    {
        return "blocks/menu.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  51 => 13,  40 => 7,  30 => 4,  27 => 3,  22 => 2,  19 => 1,);
    }
}
/* <ul>*/
/*     {% for page in pages %}*/
/*         <li>*/
/*             <a href="{{ path('show_page', {url: page.url|slice(1)}) }}">{{ page.name }}</a>*/
/*         </li>*/
/*     {% else %}*/
/*         <li>*/
/*             <a href="/">*/
/*                 Главная*/
/*             </a>*/
/*         </li>*/
/*     {% endfor %}*/
/* </ul>*/
