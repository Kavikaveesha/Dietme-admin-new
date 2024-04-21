
import javax.servlet.http.HttpServletRequest;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author kavin
 */
public class assestsUrl {

    public static String giveUrl(HttpServletRequest request, String path) {

        String fileUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/" + request.getServletContext().getContextPath() + "/";

        String url = fileUrl + path;

        return url;
    }

}
