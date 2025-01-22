package com.email_auto_reply.app;

import lombok.Data;

@Data
public class EmailRequest {
    private String emailContent;
    private String tone;
}