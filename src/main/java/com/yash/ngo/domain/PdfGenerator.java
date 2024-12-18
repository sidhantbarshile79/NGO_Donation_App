package com.yash.ngo.domain;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class PdfGenerator {

    public static byte[] generateReceiptPdf(Receipt receipt) {
        try (ByteArrayOutputStream baos = new ByteArrayOutputStream()) {
            Document document = new Document();
            PdfWriter writer = PdfWriter.getInstance(document, baos);
            document.open();

            document.add(new Paragraph("Donation Receipt", 
                FontFactory.getFont(FontFactory.HELVETICA_BOLD, 18)));
            document.add(new Paragraph("Receipt ID: " + receipt.getReceiptId(), 
                FontFactory.getFont(FontFactory.HELVETICA, 12)));
            document.add(new Paragraph("Name: " + receipt.getName(), 
                FontFactory.getFont(FontFactory.HELVETICA, 12)));
            document.add(new Paragraph("Amount: " + receipt.getAmount(), 
                FontFactory.getFont(FontFactory.HELVETICA, 12)));
            document.add(new Paragraph("Donation Date: " + receipt.getDonationDate(), 
                FontFactory.getFont(FontFactory.HELVETICA, 12)));
            document.add(new Paragraph("Payment ID: " + receipt.getPaymentId(), 
                FontFactory.getFont(FontFactory.HELVETICA, 12)));

            document.close();
            writer.close();
            return baos.toByteArray();
        } catch (DocumentException | IOException e) {
            throw new RuntimeException("Error generating PDF receipt", e);
        }
    }
}
