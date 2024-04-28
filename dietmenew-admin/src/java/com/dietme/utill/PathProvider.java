/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dietme.utill;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kavin
 */
public class PathProvider {
    
             public static String giveUrl(HttpServletRequest request, String path)
             {
                 
                    
                    String fileUrl = request.getScheme() + "://" + request.getServerName()+ ":" + request.getServerPort() + "/"+ request.getServletContext().getContextPath() + "/";
                    
                    String url = fileUrl + path;
                    
                 return url;
             }
             
}
