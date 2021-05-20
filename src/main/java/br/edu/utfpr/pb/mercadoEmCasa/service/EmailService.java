package br.edu.utfpr.pb.mercadoEmCasa.service;

import br.edu.utfpr.pb.mercadoEmCasa.model.Mail;

public interface EmailService {
    void sendEmail(Mail mail);
}
