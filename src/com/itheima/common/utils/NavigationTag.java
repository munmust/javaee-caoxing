package com.itheima.common.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.Map;


public class NavigationTag extends TagSupport {
    static final long serialVersionUID=2372405317744358833L;
    private String bean="page";
    private String url=null;
    private int number=5;
    public String getBean() {
        return bean;
    }

    public void setBean(String bean) {
        this.bean = bean;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }


    @Override
    public int doStartTag() throws JspException {
    JspWriter writer=pageContext.getOut();
    HttpServletRequest request=(HttpServletRequest) pageContext.getRequest();
    Page page=(Page) request.getAttribute(bean);
    if (page==null){
        return SKIP_BODY;
    }
    url= resolveUrl(url,pageContext);
      try {
          int pageCount=page.getTotal() / page.getSize();
          if (page.getTotal()%page.getSize()>0){
              pageCount++;
          }
          writer.print("<nav><ul class=\"pagination\">");
          String homeUrl=append(url,"page",1);
          String backUrl=append(url,"page",pageCount);
          if (page.getPage()>1){
              String preUrl=append(url,"page",page.getPage()-1);
              preUrl=append(preUrl,"rows",page.getSize());
              writer.print("<li><a href=\""+homeUrl+"\">"+"first</a></li>");
              writer.print("<li><a href=\""+preUrl+"\">" +"pre</a></li>");
          }else{
              writer.print("<li class=\"disabled\"><a href=\"#\">"+"first</a></li>");
              writer.print("<li class=\"disabled\"><a href=\"#\">"+"pre</a></li>");
          }
         int indexPage=1;
          if (page.getPage()-2<=0){
              indexPage=1;
          }else if(pageCount - page.getPage()<=2){
              indexPage=pageCount-4;
          }else {
              indexPage=page.getPage()-2;
          }
          for (int i=1;i<number && indexPage<=pageCount;indexPage++,i++) {
              if (indexPage == page.getPage()) {
                  writer.print("<li class=\"active\"><a href=\"#\">" + indexPage + "<span class=\"sr-only\">(current)</span></a></li>");
                  continue;
              }
              String pageUrl = append(url, "page", indexPage);
              pageUrl = append(pageUrl, "rows", page.getSize());
              writer.print("<li><a href=\"" + pageUrl + "\">" + indexPage + "</a></li>");
          }

            if (page.getSize()<pageCount){
                String nextUrl=append(url,"page",page.getPage()+1);
                nextUrl=append(nextUrl,"rows",page.getSize());
                writer.print("<li><a href=\""+nextUrl+"\">"+"next</a></li>");
                writer.print("<li><a href=\""+backUrl+"\">"+"last</a></li>");
            }else {
                writer.print("<li class=\"disabled\"><a href=\"#\">"+"next</a></li>");
                writer.print("<li class=\"disabled\"><a href=\"#\">"+"last</a></li>");
            }
            writer.print("</nav>");
      } catch (IOException e) {
          e.printStackTrace();
      }
      return SKIP_BODY;
    }

    private String resolveUrl(String url,javax.servlet.jsp.PageContext pageContext)throws JspException {
        Map params=pageContext.getRequest().getParameterMap();
        for (Object key:params.keySet()){
            if ("page".equals(key)||"rows".equals(key)){
                continue;
            }
            Object value=params.get(key);
            if (value==null){
                continue;
            }if (value.getClass().isArray()){
                url=append(url,key.toString(),((String[]) value)[0]);
            }else if(value instanceof String){
                url=append(url,key.toString(),value.toString());
            }
        }
        return url;
    }

    private String append(String url, String key, int value) {
        return append(url,key,String.valueOf(value));
    }
    private String append(String url,String key,String value){
        if (url==null||url.trim().length()==0){
            return "";
        }
        if(!url.contains("?")){
            url=url+"?"+key+"="+value;
        }else {
            if (url.endsWith("?")){
                url=url+key+"="+value;
            }else {
                url=url+"&amp;"+key+"="+value;
            }
        }
        return url;
    }
}
