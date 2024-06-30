<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Stampa Valori GET</title>
</head>
<body>
    <h1>Valori ricevuti in GET</h1>


		<%@ page import="java.sql.*" %>
		
        
        <%!
        private static final String JDBC_URL = "jdbc:mysql://localhost:3306/daga";
		private static final String USER = "root";
		private static final String PASSWORD = "";
		%>
		
    	<%
    	
        // Recupera i valori POST
        String name = request.getParameter("productName");
    	String description = request.getParameter("productDescription");
        String cat = request.getParameter("productCat");
        String sex = request.getParameter("productSex");
        String price = request.getParameter("productPrice");
        String img;

        // Stampa i valori
        out.println("<p>Nome: " + name + "</p>");
        out.println("<p>Descrizione: " + description + "</p>");
        out.println("<p>Categoria: " + cat + "</p>");
        out.println("<p>Sesso: " + sex + "</p>");
        out.println("<p>Price: " + price + "$</p>");
        
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        
        
        String query = "INSERT INTO `prodotti` (`id`, `n`, `quota`, `id_pilota`, `nome_scuderia`) VALUES (?,?);";

        try (Connection connection = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            // Set parameters for the prepared statement
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, price);
            

            // Execute the update query
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                System.out.println("Data updated successfully!");
            } else {
                System.out.println("Failed to update data. Check if the record exists.");
            }} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	%>
</body>
</html>