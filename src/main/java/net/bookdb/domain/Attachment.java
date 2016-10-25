package net.bookdb.domain;


import javax.persistence.Embeddable;
import javax.persistence.Lob;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author lutfun
 * @since 10/24/16
 */

@Embeddable
public class Attachment {

    @Size(max = 250)
    private String fileName;

    @Lob
    private byte[] file;

    private long fileSize;

    public Attachment() {
    }

    public Attachment(String fileName, byte[] file, long fileSize) {
        this.fileName = fileName;
        this.file = file;
        this.fileSize = fileSize;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }

    public long getFileSize() {
        return fileSize;
    }

    public void setFileSize(long fileSize) {
        this.fileSize = fileSize;
    }
}
