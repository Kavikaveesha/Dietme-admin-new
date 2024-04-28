package com.dietme.mealItems;

import com.dietme.mealItems.MealItems;
import com.dietme.utill.DbUtill;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MealItemsDao {

    private static final String INSERT_QUERY
            = "INSERT INTO mealingddetails"
            + " (mealItemName, imgurl,description, defaultGrams,"
            + "defaultPrice, defaultCal, defaultProtien, defaultCarbs)"
            + " VALUES (?, ?, ?, ?, ?, ?, ?,?)";
    private static final String UPDATE_QUERY
            = "UPDATE mealingddetails SET"
            + " mealItemName = ?, imgurl = ?,description = ?, defaultGrams = ?, "
            + "defaultPrice = ?, defaultCal = ?, defaultProtien = ?, defaultCarbs = ? WHERE mealItemId = ?";
    private static final String DELETE_QUERY = "DELETE FROM mealingddetails WHERE mealItemId = ?";
    private static final String SELECT_BY_ID_QUERY = "SELECT * FROM mealingddetails WHERE mealItemId = ?";
    private static final String SELECT_ALL_QUERY = "SELECT * FROM mealingddetails";

    public int insert(MealItems mealIngredientDetails) {
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(
                        INSERT_QUERY, PreparedStatement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, mealIngredientDetails.getMealItemName());
            statement.setString(2, mealIngredientDetails.getImgurl());
            statement.setString(3, mealIngredientDetails.getDescription());
            statement.setDouble(4, mealIngredientDetails.getDefaultGrams());
            statement.setDouble(5, mealIngredientDetails.getDefaultPrice());
            statement.setDouble(6, mealIngredientDetails.getDefaultCal());
            statement.setDouble(7, mealIngredientDetails.getDefaultProtein());
            statement.setDouble(8, mealIngredientDetails.getDefaultCarbs());
            statement.executeUpdate();

            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                return generatedKeys.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public boolean update(MealItems mealIngredientDetails) throws SQLException {
          boolean rowUpdated;
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(UPDATE_QUERY)) {

            statement.setString(1, mealIngredientDetails.getMealItemName());
            statement.setString(2, mealIngredientDetails.getImgurl());
            statement.setString(3, mealIngredientDetails.getDescription());
            statement.setDouble(4, mealIngredientDetails.getDefaultGrams());
            statement.setDouble(5, mealIngredientDetails.getDefaultPrice());
            statement.setDouble(6, mealIngredientDetails.getDefaultCal());
            statement.setDouble(7, mealIngredientDetails.getDefaultProtein());
            statement.setDouble(8, mealIngredientDetails.getDefaultCarbs());
            statement.setInt(9, mealIngredientDetails.getMealItemId());

         rowUpdated  = statement.executeUpdate() > 0;

        } 
        return rowUpdated;
    }

    public boolean delete(int mealItemId) {
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(DELETE_QUERY)) {
            statement.setInt(1, mealItemId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public MealItems findById(int mealItemId) {
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_BY_ID_QUERY)) {
            statement.setInt(1, mealItemId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return mapResultSetToMealIngredientDetails(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<MealItems> findAll() {
        List<MealItems> mealIngredientDetailsList = new ArrayList<>();
        try (Connection connection = DbUtill.getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_ALL_QUERY);
                ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                mealIngredientDetailsList.add(mapResultSetToMealIngredientDetails(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mealIngredientDetailsList;
    }

    private MealItems mapResultSetToMealIngredientDetails(ResultSet resultSet) throws SQLException {
        int mealItemId = resultSet.getInt("mealItemId");
        String mealItemName = resultSet.getString("mealItemName");
        String imgurl = resultSet.getString("imgurl");
        String description = resultSet.getString("description");
        double defaultGrams = resultSet.getDouble("defaultGrams");
        double defaultPrice = resultSet.getDouble("defaultPrice");
        double defaultCal = resultSet.getDouble("defaultCal");
        double defaultProtien = resultSet.getDouble("defaultProtien");
        double defaultCarbs = resultSet.getDouble("defaultCarbs");
        return new MealItems(mealItemId, mealItemName, imgurl, description, defaultGrams,
                defaultPrice, defaultCal, defaultProtien, defaultCarbs);
    }

}
