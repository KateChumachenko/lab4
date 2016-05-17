<?php

/* blocks/admin.html.twig */
class __TwigTemplate_cb1c6677801ec50da5812dee46b11ee2c9bb5eec1c95c6084ff4001a765a5807 extends Twig_Template
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
        echo "<div id=\"admin\"> 
    <a href=\"";
        // line 2
        echo $this->env->getExtension('routing')->getPath("admin_login");
        echo "\">Админка</a>
    ";
        // line 3
        if ($this->getAttribute((isset($context["app"]) ? $context["app"] : null), "user", array())) {
            // line 4
            echo "        <p>Здравствуйте, ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["app"]) ? $context["app"] : null), "user", array()), "username", array()), "html", null, true);
            echo "</p>
        <a href=\"";
            // line 5
            echo $this->env->getExtension('routing')->getPath("admin_logout");
            echo "\">Выход</a>
    ";
        }
        // line 7
        echo "</div>";
    }

    public function getTemplateName()
    {
        return "blocks/admin.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  38 => 7,  33 => 5,  28 => 4,  26 => 3,  22 => 2,  19 => 1,);
    }
}
/* <div id="admin"> */
/*     <a href="{{ path('admin_login')}}">Админка</a>*/
/*     {% if app.user %}*/
/*         <p>Здравствуйте, {{ app.user.username }}</p>*/
/*         <a href="{{ path('admin_logout')}}">Выход</a>*/
/*     {% endif %}*/
/* </div>*/
