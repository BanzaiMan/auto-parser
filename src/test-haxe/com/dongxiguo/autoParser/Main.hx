package com.dongxiguo.autoParser;

import com.dongxiguo.autoParser.UriTemplateLevel1ParserTest;
import haxe.ds.Vector;

class Main {

  public static function main(arguments:Vector<String>) {
    {
      var text = "/prefix/123/456/";
      trace('Parsing $text...');
      var source = new StringSource(text);
      var ast = UriTemplateLevel1Parser.parse_com_dongxiguo_autoParser_Literal(source);
      trace('$ast\n');
    }

    {
      var text = "/prefix/123/456/";
      trace('Parsing $text...');
      var source = new StringSource(text);
      var ast = UriTemplateLevel1Parser.parse_com_dongxiguo_autoParser_Literals(source);
      trace('$ast\n');
    }

    {
      var text = "/prefix/123/456/";
      trace('Parsing $text...');
      var source = new StringSource(text);
      var ast = UriTemplateLevel1Parser.parse_com_dongxiguo_autoParser_LiteralOrExpression(source);
      trace('$ast\n');
    }

    {
      var text = "{category}";
      trace('Parsing $text...');
      var source = new StringSource(text);
      var ast = UriTemplateLevel1Parser.parse_com_dongxiguo_autoParser_LiteralOrExpression(source);
      trace('$ast\n');
    }

    {
      var text = "/prefix/{category}/{userId}";
      trace('Parsing $text...');
      var source = new StringSource(text);
      var ast = UriTemplateLevel1Parser.parse_com_dongxiguo_autoParser_UriTemplateLevel1(source);
      trace('$ast\n');
    }

  }

}