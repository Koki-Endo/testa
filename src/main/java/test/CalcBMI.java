package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bmi")
public class CalcBMI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalcBMI() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        // 送信されたデータを受け取る（必ずString型、存在しなければnullが入る）
        String strHeight = request.getParameter("height");
        String strWeight = request.getParameter("weight");
        String himando = "";
        double bmi = 0.0;
        
        try {
            double height = Double.parseDouble(strHeight) / 100.0;
            double weight = Double.parseDouble(strWeight);
            bmi = weight / (height * height);
            if (bmi < 18.5) {
                himando = "低体重";
            } else if (bmi < 25.0) {
                himando = "普通体重";
            } else if (bmi < 30.0) {
                himando = "肥満";
            } else {
                himando = "高度肥満";
            }
        } catch(Exception e) {
            e.printStackTrace();
            himando = "計算できませんでした。";
        }
        
        request.setAttribute("HEIGHT" , strHeight);
        request.setAttribute("WEIGHT" , strWeight);
        request.setAttribute("BMI"    , bmi);
        request.setAttribute("HIMANDO", himando);
        request.getRequestDispatcher("./jsp/bmiresult.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
