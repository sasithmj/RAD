package movies;

import java.io.OutputStream;
import java.sql.*;
import java.util.Base64;

public class MovieDetails {
    private String categories;
    private String title;
    private String isbn;
    private String publicationDate;
    private String author;
    private Blob image;
    private byte[ ] imgData = null ;
    private String review;

    // Constructor
    public MovieDetails(String categories, String title, String isbn, String publicationDate, String author, byte[ ] image, String review) {
        this.categories = categories;
        this.title = title;
        this.isbn = isbn;
        this.publicationDate = publicationDate;
        this.author = author;
        this.imgData = image;
        this.review = review;
    }

    // Getter methods
    public String getCategories() {
        return categories;
    }

    public String getTitle() {
        return title;
    }

    public String getISBN() {
        return isbn;
    }

    public String getPublicationDate() {
        return publicationDate;
    }

    public String getAuthor() {
        return author;
    }

    public byte[] getImage() {
        return imgData;
    }

    public String getReview() {
        return review;
    }

    // Static method to get book details by ISBN from the database
    public static MovieDetails getBookDetailsByISBN(Connection connection, String isbn) {
        String query = "SELECT * FROM movie WHERE Movie_ID = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, isbn);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    String categories = resultSet.getString("Categories");
                    String title = resultSet.getString("Movie_Name");
                    String publicationDate = resultSet.getString("Release_Date");
                    String author = resultSet.getString("Director");
                    Blob image = resultSet.getBlob("Image");
                    byte[ ] imgData= image.getBytes(1,(int)image.length()); 
//                    String base64Encoded = new String(Base64.encodeBase64(image), "UTF-8");
                    String review = resultSet.getString("Review");

                    return new MovieDetails(categories, title, isbn, publicationDate, author, imgData, review);
                } else {
                    return null; // No data found for the given ISBN
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
