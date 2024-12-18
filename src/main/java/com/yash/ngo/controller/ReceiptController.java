package com.yash.ngo.controller;

import com.yash.ngo.domain.Donation;
import com.yash.ngo.service.DonationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

@Controller
public class ReceiptController {

    @Autowired
    private DonationService donationService;

    @GetMapping("/receipt/{donationId}")
    public void generateReceipt(@PathVariable Integer donationId, HttpServletResponse response) throws IOException {
        Donation donation = donationService.findById(donationId);

        if (donation != null) {
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "attachment; filename=receipt_" + donationId + ".pdf");

            try {
                createPdf(donation, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Donation not found");
        }
    }

    private void createPdf(Donation donation, HttpServletResponse response) throws DocumentException, IOException {
        Document document = new Document();
        try (ServletOutputStream out = response.getOutputStream()) {
            PdfWriter.getInstance(document, out);

            document.open();
            document.add(new Paragraph("Payment Receipt"));
            document.add(new Paragraph("Donation ID: " + donation.getDonationId()));
            document.add(new Paragraph("Name: " + donation.getName()));
            document.add(new Paragraph("Amount: ₹" + donation.getDonationAmount()));
            document.add(new Paragraph("Date: " + donation.getDonationDate()));
            document.add(new Paragraph("Aadhaar Number: " + donation.getAadhaarNumber()));
            document.add(new Paragraph("PAN Card Number: " + donation.getPanCardNumber()));
            document.add(new Paragraph("Donation Type: " + donation.getDonationType()));
            document.add(new Paragraph("Donation Reason: " + donation.getDonationReason()));
            document.close();
        } catch (DocumentException | IOException e) {
            throw new RuntimeException("Error generating PDF", e);
        }
    }
}
