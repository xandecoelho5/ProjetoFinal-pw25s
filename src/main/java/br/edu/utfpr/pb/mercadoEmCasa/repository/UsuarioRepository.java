package br.edu.utfpr.pb.mercadoEmCasa.repository;

import br.edu.utfpr.pb.mercadoEmCasa.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	
	Usuario findByUsername(String username);
	
}
