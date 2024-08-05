package Case_Module3.login.model.DTO;

import java.sql.Timestamp;

public class Category {
    private int categoryId;
    private int userId;
    private String name;
    private String notes;
    private Timestamp createdAt;
    private Timestamp updateAt;

    public Category(String name, String notes) {
        this.name = name;
        this.notes = notes;
    }

    public Category(int categoryId, String name, String notes) {
        this.categoryId = categoryId;
        this.name = name;
        this.notes = notes;
    }

    public Category(int categoryId, int userId, String name, String notes, Timestamp createdAt, Timestamp updateAt) {
        this.categoryId = categoryId;
        this.userId = userId;
        this.name = name;
        this.notes = notes;
        this.createdAt = createdAt;
        this.updateAt = updateAt;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }


    public Timestamp getUpdatedAt() {
        return updateAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updateAt = updatedAt;
    }
}
