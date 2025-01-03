package vn.helmetshop.helmetshop.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.io.BufferedOutputStream;

import jakarta.servlet.ServletContext;

@Service
public class UploadFileService {
    private final ServletContext servletContext;

    public UploadFileService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public String handleSaveUploadFile(MultipartFile file, String targetFolder) {
        if (file.isEmpty())
            return "";
        // relative path: absolute path
        String rootPath = this.servletContext.getRealPath("/resources/images");
        String finalName = "";
        try {
            byte[] bytes = file.getBytes();

            File dir = new File(rootPath + File.separator + targetFolder);
            if (!dir.exists())
                dir.mkdirs();

            // Create the file on server
            finalName = System.currentTimeMillis() + "-" + file.getOriginalFilename();

            File serverFile = new File(dir.getAbsolutePath() + File.separator + finalName);
            // uuid

            BufferedOutputStream stream = new BufferedOutputStream(
                    new FileOutputStream(serverFile));
            stream.write(bytes);
            stream.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return finalName;

    }

    public boolean handleDeleteFile(String fileName, String targetFolder) {
        if (fileName != null) {
            String rootPath = this.servletContext.getRealPath("/resources/images") + File.separator + targetFolder;
            System.out.println(rootPath);
            Path file = Path.of(rootPath, fileName);
            System.out.println(file);
            try {
                Files.deleteIfExists(file);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            return true;
        }
        return false;

    }
}
