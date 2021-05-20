package br.edu.utfpr.pb.mercadoEmCasa.repository;

import br.edu.utfpr.pb.mercadoEmCasa.model.PasswordResetToken;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PasswordTokenRepository extends JpaRepository<PasswordResetToken, Long> {
    PasswordResetToken findByToken(String token);
}
