package net.bookdb.domain;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author lutfun
 * @since 10/24/16
 */

@Entity
@Table
public class Book {

    @Id
    @GeneratedValue
    private long id;

    @NotNull
    @Size(max = 250)
    private String title;

    @NotNull
    @Size(max = 250)
    private String author;

    @Size(max = 1000)
    private String description;

    @Embedded
    private Attachment pdf;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Attachment getPdf() {
        return pdf;
    }

    public void setPdf(Attachment pdf) {
        this.pdf = pdf;
    }
}
